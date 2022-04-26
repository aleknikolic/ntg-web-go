import { useForm } from 'react-hook-form'
import toast from 'react-hot-toast'

import api from '@services/api'

interface ContactFormWithBackgroundProps {
  title?: string
  overview?: string
  image?: Strapi.Media
}
export const ContactFormWithBackground: React.FC<ContactFormWithBackgroundProps> = ({ title, overview, image }) => {
  const { register, handleSubmit, reset } = useForm()

  // we set ts to any, temporarily
  const handleContactForm = async (data: any) => {
    if (data?.first_name || data?.last_name) {
      data.fullname = `${data?.first_name} ${data?.last_name}`
      delete data.first_name
      delete data.last_name
    }
    await api
      .post(`/contacts`, {
        data
      })
      .then(({ data }) => {
        if (data?.data?.id) {
          toast.success(`Message sent, thank you for your message.`, {
            position: 'bottom-center'
          })
        } else {
          toast.error(`Something went wrong when trying to send a message.`, {
            position: 'bottom-center'
          })
        }
      })
      .catch(() =>
        toast.error(`Something went wrong when trying to send a message.`, {
          position: 'bottom-center'
        })
      )
      .finally(() => reset())
  }

  return (
    <section id="contact" className="py-5">
      <div className="page-header">
        {image?.data?.attributes?.url && (
          <div
            className="position-absolute fixed-top ms-auto w-50 h-100 rounded-3 z-index-0 d-none d-sm-none d-md-block me-n4"
            style={{ backgroundImage: `url(${image?.data?.attributes?.url})`, backgroundSize: 'cover' }}></div>
        )}
        <div className="container py-5">
          <div className="row">
            <div className="col-lg-7 d-flex justify-content-center flex-column">
              <div className="card card-body d-flex justify-content-center shadow-lg p-5 blur align-items-center">
                <h3 className="text-center">{title}</h3>
                <p className="w-90 mb-30 m-x-auto text-center">{overview}</p>
                <form
                  role="form"
                  id="contact-form"
                  onSubmit={handleSubmit(handleContactForm)}
                  method="post"
                  autoComplete="off">
                  <div className="card-body">
                    <div className="row">
                      <div className="col-md-6">
                        <div className="input-group input-group-static mb-4">
                          <label>First Name</label>
                          <input
                            className="form-control"
                            placeholder="eg. Jack"
                            aria-label="First Name..."
                            type="text"
                            {...register('first_name')}
                          />
                        </div>
                      </div>
                      <div className="col-md-6 ps-2">
                        <div className="input-group input-group-static">
                          <label>Last Name</label>
                          <input
                            type="text"
                            className="form-control"
                            placeholder="eg. Samuel"
                            aria-label="Last Name..."
                            {...register('last_name')}
                          />
                        </div>
                      </div>
                    </div>
                    <div className="mb-4">
                      <div className="input-group input-group-static">
                        <label>Email Address</label>
                        <input
                          type="email"
                          className="form-control"
                          placeholder="hello@creative-tim.com"
                          {...register('email')}
                        />
                      </div>
                    </div>
                    <div className="mb-4">
                      <div className="input-group input-group-static">
                        <label>Company</label>
                        <input
                          type="texy"
                          className="form-control"
                          placeholder="eg. Microsoft"
                          aria-label="Company..."
                          {...register('company')}
                        />
                      </div>
                    </div>
                    <div className="mb-4">
                      <div className="input-group input-group-static">
                        <label>Topic</label>
                        <input
                          type="texy"
                          className="form-control"
                          placeholder="eg. Azure Marketplace"
                          aria-label="Topic..."
                          {...register('topic')}
                        />
                      </div>
                    </div>
                    <div className="input-group input-group-static mb-4">
                      <label>Your message</label>
                      <textarea className="form-control" id="message" rows={4} {...register('message')}></textarea>
                    </div>
                    <div className="row">
                      <div className="col-md-12">
                        <div className="form-check form-switch d-flex align-items-center mb-4">
                          <input
                            className="form-check-input"
                            type="checkbox"
                            id="flexSwitchCheckDefault"
                            defaultChecked
                            {...register('agree_tac')}
                            required
                          />
                          <label className="form-check-label ms-3 mb-0" htmlFor="flexSwitchCheckDefault">
                            I agree to the{' '}
                            <span className="text-primary">
                              <u>Terms and Conditions</u>
                            </span>
                            .
                          </label>
                        </div>
                      </div>
                      <div className="col-md-12">
                        <button type="submit" className="btn bg-gradient-primary w-100">
                          Send Message
                        </button>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  )
}
