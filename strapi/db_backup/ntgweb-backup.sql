PGDMP                         z            ntgweb    13.3    14.2 N   \           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ]           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ^           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            _           1262    16384    ntgweb    DATABASE     Q   CREATE DATABASE ntgweb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE ntgweb;
                postgres    false            �            1259    16404    admin_permissions    TABLE     J  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.admin_permissions;
       public         heap    ntgweb    false            �            1259    16410    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          ntgweb    false    200            `           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          ntgweb    false    201            �            1259    16412    admin_permissions_role_links    TABLE     e   CREATE TABLE public.admin_permissions_role_links (
    permission_id integer,
    role_id integer
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    ntgweb    false            �            1259    16415    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    ntgweb    false            �            1259    16421    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          ntgweb    false    203            a           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          ntgweb    false    204            �            1259    16423    admin_users    TABLE     B  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_users;
       public         heap    ntgweb    false            �            1259    16429    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          ntgweb    false    205            b           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          ntgweb    false    206            �            1259    16431    admin_users_roles_links    TABLE     Z   CREATE TABLE public.admin_users_roles_links (
    user_id integer,
    role_id integer
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    ntgweb    false            �            1259    16434 
   applicants    TABLE     �  CREATE TABLE public.applicants (
    id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    email character varying(255),
    contact character varying(255),
    desired_salary character varying(255),
    earliest character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.applicants;
       public         heap    ntgweb    false            �            1259    16440    applicants_career_links    TABLE     a   CREATE TABLE public.applicants_career_links (
    applicant_id integer,
    career_id integer
);
 +   DROP TABLE public.applicants_career_links;
       public         heap    ntgweb    false            �            1259    16443    applicants_id_seq    SEQUENCE     �   CREATE SEQUENCE public.applicants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.applicants_id_seq;
       public          ntgweb    false    208            c           0    0    applicants_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.applicants_id_seq OWNED BY public.applicants.id;
          public          ntgweb    false    210            �           1259    20335    authors    TABLE     �   CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.authors;
       public         heap    postgres    false            �           1259    20333    authors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.authors_id_seq;
       public          postgres    false    414            d           0    0    authors_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;
          public          postgres    false    413            �            1259    16445    careers    TABLE     �  CREATE TABLE public.careers (
    id integer NOT NULL,
    "position" character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    position_code character varying(255),
    locale character varying(255)
);
    DROP TABLE public.careers;
       public         heap    ntgweb    false            �            1259    16451    careers_components    TABLE     �   CREATE TABLE public.careers_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 &   DROP TABLE public.careers_components;
       public         heap    ntgweb    false            �            1259    16458    careers_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.careers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.careers_components_id_seq;
       public          ntgweb    false    212            e           0    0    careers_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.careers_components_id_seq OWNED BY public.careers_components.id;
          public          ntgweb    false    213            �            1259    16460    careers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.careers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.careers_id_seq;
       public          ntgweb    false    211            f           0    0    careers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.careers_id_seq OWNED BY public.careers.id;
          public          ntgweb    false    214            �           1259    20617    careers_localizations_links    TABLE     f   CREATE TABLE public.careers_localizations_links (
    career_id integer,
    inv_career_id integer
);
 /   DROP TABLE public.careers_localizations_links;
       public         heap    postgres    false            �            1259    16462    careers_type_job_links    TABLE     _   CREATE TABLE public.careers_type_job_links (
    career_id integer,
    type_job_id integer
);
 *   DROP TABLE public.careers_type_job_links;
       public         heap    ntgweb    false            �            1259    16465    category_insights    TABLE     `  CREATE TABLE public.category_insights (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    popular boolean,
    color character varying(255)
);
 %   DROP TABLE public.category_insights;
       public         heap    ntgweb    false            �            1259    16468    category_insights_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_insights_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.category_insights_id_seq;
       public          ntgweb    false    216            g           0    0    category_insights_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.category_insights_id_seq OWNED BY public.category_insights.id;
          public          ntgweb    false    217            �            1259    16470    category_products    TABLE     J  CREATE TABLE public.category_products (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    is_operating_system boolean
);
 %   DROP TABLE public.category_products;
       public         heap    ntgweb    false            �            1259    16473    category_products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.category_products_id_seq;
       public          ntgweb    false    218            h           0    0    category_products_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.category_products_id_seq OWNED BY public.category_products.id;
          public          ntgweb    false    219            �            1259    16475    components_column_link_columns    TABLE     r   CREATE TABLE public.components_column_link_columns (
    id integer NOT NULL,
    title character varying(255)
);
 2   DROP TABLE public.components_column_link_columns;
       public         heap    ntgweb    false            �            1259    16478 )   components_column_link_columns_components    TABLE     �   CREATE TABLE public.components_column_link_columns_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 =   DROP TABLE public.components_column_link_columns_components;
       public         heap    ntgweb    false            �            1259    16485 0   components_column_link_columns_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_column_link_columns_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.components_column_link_columns_components_id_seq;
       public          ntgweb    false    221            i           0    0 0   components_column_link_columns_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_column_link_columns_components_id_seq OWNED BY public.components_column_link_columns_components.id;
          public          ntgweb    false    222            �            1259    16487 %   components_column_link_columns_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_column_link_columns_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.components_column_link_columns_id_seq;
       public          ntgweb    false    220            j           0    0 %   components_column_link_columns_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_column_link_columns_id_seq OWNED BY public.components_column_link_columns.id;
          public          ntgweb    false    223            �            1259    16489 )   components_component_key_responsibilities    TABLE     }   CREATE TABLE public.components_component_key_responsibilities (
    id integer NOT NULL,
    title character varying(255)
);
 =   DROP TABLE public.components_component_key_responsibilities;
       public         heap    ntgweb    false            �            1259    16492 0   components_component_key_responsibilities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_component_key_responsibilities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.components_component_key_responsibilities_id_seq;
       public          ntgweb    false    224            k           0    0 0   components_component_key_responsibilities_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_component_key_responsibilities_id_seq OWNED BY public.components_component_key_responsibilities.id;
          public          ntgweb    false    225            �            1259    16494 ,   components_component_required_qualifications    TABLE     �   CREATE TABLE public.components_component_required_qualifications (
    id integer NOT NULL,
    title character varying(255)
);
 @   DROP TABLE public.components_component_required_qualifications;
       public         heap    ntgweb    false            �            1259    16497 3   components_component_required_qualifications_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_component_required_qualifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.components_component_required_qualifications_id_seq;
       public          ntgweb    false    226            l           0    0 3   components_component_required_qualifications_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_component_required_qualifications_id_seq OWNED BY public.components_component_required_qualifications.id;
          public          ntgweb    false    227            �            1259    16499 $   components_component_required_skills    TABLE     x   CREATE TABLE public.components_component_required_skills (
    id integer NOT NULL,
    title character varying(255)
);
 8   DROP TABLE public.components_component_required_skills;
       public         heap    ntgweb    false            �            1259    16502 +   components_component_required_skills_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_component_required_skills_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.components_component_required_skills_id_seq;
       public          ntgweb    false    228            m           0    0 +   components_component_required_skills_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.components_component_required_skills_id_seq OWNED BY public.components_component_required_skills.id;
          public          ntgweb    false    229            �            1259    16504 #   components_elements_accordion_items    TABLE     �   CREATE TABLE public.components_elements_accordion_items (
    id integer NOT NULL,
    title character varying(255),
    content text,
    icon character varying(255),
    icon_color character varying(255)
);
 7   DROP TABLE public.components_elements_accordion_items;
       public         heap    ntgweb    false            �            1259    16510 *   components_elements_accordion_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_elements_accordion_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.components_elements_accordion_items_id_seq;
       public          ntgweb    false    230            n           0    0 *   components_elements_accordion_items_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.components_elements_accordion_items_id_seq OWNED BY public.components_elements_accordion_items.id;
          public          ntgweb    false    231            �            1259    16512    components_elements_buttons    TABLE     �   CREATE TABLE public.components_elements_buttons (
    id integer NOT NULL,
    text character varying(255),
    type character varying(255),
    class character varying(255),
    link character varying(255)
);
 /   DROP TABLE public.components_elements_buttons;
       public         heap    ntgweb    false            �            1259    16518 "   components_elements_buttons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_elements_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.components_elements_buttons_id_seq;
       public          ntgweb    false    232            o           0    0 "   components_elements_buttons_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.components_elements_buttons_id_seq OWNED BY public.components_elements_buttons.id;
          public          ntgweb    false    233            �           1259    18310 #   components_elements_card_with_icons    TABLE     �   CREATE TABLE public.components_elements_card_with_icons (
    id integer NOT NULL,
    icon character varying(255),
    icon_background character varying(255),
    title character varying(255),
    description text
);
 7   DROP TABLE public.components_elements_card_with_icons;
       public         heap    postgres    false            �           1259    18308 *   components_elements_card_with_icons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_elements_card_with_icons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.components_elements_card_with_icons_id_seq;
       public          postgres    false    403            p           0    0 *   components_elements_card_with_icons_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.components_elements_card_with_icons_id_seq OWNED BY public.components_elements_card_with_icons.id;
          public          postgres    false    402            �           1259    18324    components_elements_contacts    TABLE     �   CREATE TABLE public.components_elements_contacts (
    id integer NOT NULL,
    title character varying(255),
    description character varying(255),
    icon character varying(255),
    icon_color character varying(255)
);
 0   DROP TABLE public.components_elements_contacts;
       public         heap    postgres    false            �           1259    18322 #   components_elements_contacts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_elements_contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.components_elements_contacts_id_seq;
       public          postgres    false    405            q           0    0 #   components_elements_contacts_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.components_elements_contacts_id_seq OWNED BY public.components_elements_contacts.id;
          public          postgres    false    404            �           1259    18199 $   components_elements_content_sections    TABLE     �   CREATE TABLE public.components_elements_content_sections (
    id integer NOT NULL,
    title character varying(255),
    content text,
    description text
);
 8   DROP TABLE public.components_elements_content_sections;
       public         heap    postgres    false            �           1259    18197 +   components_elements_content_sections_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_elements_content_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.components_elements_content_sections_id_seq;
       public          postgres    false    394            r           0    0 +   components_elements_content_sections_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.components_elements_content_sections_id_seq OWNED BY public.components_elements_content_sections.id;
          public          postgres    false    393            �           1259    20513    components_elements_headers    TABLE     M   CREATE TABLE public.components_elements_headers (
    id integer NOT NULL
);
 /   DROP TABLE public.components_elements_headers;
       public         heap    postgres    false            �           1259    20532 &   components_elements_headers_components    TABLE     �   CREATE TABLE public.components_elements_headers_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 :   DROP TABLE public.components_elements_headers_components;
       public         heap    postgres    false            �           1259    20530 -   components_elements_headers_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_elements_headers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.components_elements_headers_components_id_seq;
       public          postgres    false    429            s           0    0 -   components_elements_headers_components_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.components_elements_headers_components_id_seq OWNED BY public.components_elements_headers_components.id;
          public          postgres    false    428            �           1259    20511 "   components_elements_headers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_elements_headers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.components_elements_headers_id_seq;
       public          postgres    false    425            t           0    0 "   components_elements_headers_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.components_elements_headers_id_seq OWNED BY public.components_elements_headers.id;
          public          postgres    false    424            �            1259    16520    components_elements_items    TABLE     m   CREATE TABLE public.components_elements_items (
    id integer NOT NULL,
    title character varying(255)
);
 -   DROP TABLE public.components_elements_items;
       public         heap    ntgweb    false            �            1259    16523     components_elements_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_elements_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.components_elements_items_id_seq;
       public          ntgweb    false    234            u           0    0     components_elements_items_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.components_elements_items_id_seq OWNED BY public.components_elements_items.id;
          public          ntgweb    false    235            �            1259    16525    components_elements_links    TABLE     �   CREATE TABLE public.components_elements_links (
    id integer NOT NULL,
    title character varying(255),
    url character varying(255),
    target character varying(255),
    text character varying(255)
);
 -   DROP TABLE public.components_elements_links;
       public         heap    ntgweb    false            �            1259    16531     components_elements_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_elements_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.components_elements_links_id_seq;
       public          ntgweb    false    236            v           0    0     components_elements_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.components_elements_links_id_seq OWNED BY public.components_elements_links.id;
          public          ntgweb    false    237            �            1259    16533    components_elements_logos    TABLE     m   CREATE TABLE public.components_elements_logos (
    id integer NOT NULL,
    title character varying(255)
);
 -   DROP TABLE public.components_elements_logos;
       public         heap    ntgweb    false            �            1259    16536     components_elements_logos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_elements_logos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.components_elements_logos_id_seq;
       public          ntgweb    false    238            w           0    0     components_elements_logos_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.components_elements_logos_id_seq OWNED BY public.components_elements_logos.id;
          public          ntgweb    false    239            �           1259    20524    components_elements_menu_items    TABLE     �   CREATE TABLE public.components_elements_menu_items (
    id integer NOT NULL,
    title character varying(255),
    url character varying(255)
);
 2   DROP TABLE public.components_elements_menu_items;
       public         heap    postgres    false            �           1259    20554 )   components_elements_menu_items_components    TABLE     �   CREATE TABLE public.components_elements_menu_items_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 =   DROP TABLE public.components_elements_menu_items_components;
       public         heap    postgres    false            �           1259    20552 0   components_elements_menu_items_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_elements_menu_items_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.components_elements_menu_items_components_id_seq;
       public          postgres    false    431            x           0    0 0   components_elements_menu_items_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_elements_menu_items_components_id_seq OWNED BY public.components_elements_menu_items_components.id;
          public          postgres    false    430            �           1259    20522 %   components_elements_menu_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_elements_menu_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.components_elements_menu_items_id_seq;
       public          postgres    false    427            y           0    0 %   components_elements_menu_items_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_elements_menu_items_id_seq OWNED BY public.components_elements_menu_items.id;
          public          postgres    false    426            �           1259    18399 (   components_elements_product_marketplaces    TABLE     �   CREATE TABLE public.components_elements_product_marketplaces (
    id integer NOT NULL,
    text character varying(255),
    link character varying(255),
    button_style character varying(255),
    target character varying(255)
);
 <   DROP TABLE public.components_elements_product_marketplaces;
       public         heap    postgres    false            �           1259    18397 /   components_elements_product_marketplaces_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_elements_product_marketplaces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.components_elements_product_marketplaces_id_seq;
       public          postgres    false    411            z           0    0 /   components_elements_product_marketplaces_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_elements_product_marketplaces_id_seq OWNED BY public.components_elements_product_marketplaces.id;
          public          postgres    false    410            �           1259    18389 #   components_elements_product_ratings    TABLE     �   CREATE TABLE public.components_elements_product_ratings (
    id integer NOT NULL,
    name character varying(255),
    rating numeric(10,2)
);
 7   DROP TABLE public.components_elements_product_ratings;
       public         heap    postgres    false            �           1259    18387 *   components_elements_product_ratings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_elements_product_ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.components_elements_product_ratings_id_seq;
       public          postgres    false    409            {           0    0 *   components_elements_product_ratings_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.components_elements_product_ratings_id_seq OWNED BY public.components_elements_product_ratings.id;
          public          postgres    false    408            �            1259    16538     components_elements_record_cards    TABLE     �   CREATE TABLE public.components_elements_record_cards (
    id integer NOT NULL,
    title character varying(255),
    description text,
    button_text character varying(255),
    button_url character varying(255)
);
 4   DROP TABLE public.components_elements_record_cards;
       public         heap    ntgweb    false            �            1259    16544 '   components_elements_record_cards_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_elements_record_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.components_elements_record_cards_id_seq;
       public          ntgweb    false    240            |           0    0 '   components_elements_record_cards_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.components_elements_record_cards_id_seq OWNED BY public.components_elements_record_cards.id;
          public          ntgweb    false    241            �           1259    18163    components_elements_records    TABLE     �   CREATE TABLE public.components_elements_records (
    id integer NOT NULL,
    title character varying(255),
    overview text
);
 /   DROP TABLE public.components_elements_records;
       public         heap    postgres    false            �           1259    18161 "   components_elements_records_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_elements_records_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.components_elements_records_id_seq;
       public          postgres    false    392            }           0    0 "   components_elements_records_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.components_elements_records_id_seq OWNED BY public.components_elements_records.id;
          public          postgres    false    391            �            1259    16546    components_heros_heroes    TABLE     ~   CREATE TABLE public.components_heros_heroes (
    id integer NOT NULL,
    title character varying(255),
    overview text
);
 +   DROP TABLE public.components_heros_heroes;
       public         heap    ntgweb    false            �            1259    16552 "   components_heros_heroes_components    TABLE     �   CREATE TABLE public.components_heros_heroes_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 6   DROP TABLE public.components_heros_heroes_components;
       public         heap    ntgweb    false            �            1259    16559 )   components_heros_heroes_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_heros_heroes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.components_heros_heroes_components_id_seq;
       public          ntgweb    false    243            ~           0    0 )   components_heros_heroes_components_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.components_heros_heroes_components_id_seq OWNED BY public.components_heros_heroes_components.id;
          public          ntgweb    false    244            �            1259    16561    components_heros_heroes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_heros_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.components_heros_heroes_id_seq;
       public          ntgweb    false    242                       0    0    components_heros_heroes_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.components_heros_heroes_id_seq OWNED BY public.components_heros_heroes.id;
          public          ntgweb    false    245            �            1259    16563 %   components_layouts_accordion_contents    TABLE     �   CREATE TABLE public.components_layouts_accordion_contents (
    id integer NOT NULL,
    title character varying(255),
    overview text
);
 9   DROP TABLE public.components_layouts_accordion_contents;
       public         heap    ntgweb    false            �            1259    16566 0   components_layouts_accordion_contents_components    TABLE     �   CREATE TABLE public.components_layouts_accordion_contents_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 D   DROP TABLE public.components_layouts_accordion_contents_components;
       public         heap    ntgweb    false            �            1259    16573 7   components_layouts_accordion_contents_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_accordion_contents_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE public.components_layouts_accordion_contents_components_id_seq;
       public          ntgweb    false    247            �           0    0 7   components_layouts_accordion_contents_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_layouts_accordion_contents_components_id_seq OWNED BY public.components_layouts_accordion_contents_components.id;
          public          ntgweb    false    248            �            1259    16575 ,   components_layouts_accordion_contents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_accordion_contents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.components_layouts_accordion_contents_id_seq;
       public          ntgweb    false    246            �           0    0 ,   components_layouts_accordion_contents_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.components_layouts_accordion_contents_id_seq OWNED BY public.components_layouts_accordion_contents.id;
          public          ntgweb    false    249            �            1259    16577    components_layouts_bkg_headers    TABLE     �   CREATE TABLE public.components_layouts_bkg_headers (
    id integer NOT NULL,
    title character varying(255),
    vertical_height integer,
    overview text
);
 2   DROP TABLE public.components_layouts_bkg_headers;
       public         heap    ntgweb    false            �            1259    16583 )   components_layouts_bkg_headers_components    TABLE     �   CREATE TABLE public.components_layouts_bkg_headers_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 =   DROP TABLE public.components_layouts_bkg_headers_components;
       public         heap    ntgweb    false            �            1259    16590 0   components_layouts_bkg_headers_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_bkg_headers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.components_layouts_bkg_headers_components_id_seq;
       public          ntgweb    false    251            �           0    0 0   components_layouts_bkg_headers_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_layouts_bkg_headers_components_id_seq OWNED BY public.components_layouts_bkg_headers_components.id;
          public          ntgweb    false    252            �            1259    16592 %   components_layouts_bkg_headers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_bkg_headers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.components_layouts_bkg_headers_id_seq;
       public          ntgweb    false    250            �           0    0 %   components_layouts_bkg_headers_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_layouts_bkg_headers_id_seq OWNED BY public.components_layouts_bkg_headers.id;
          public          ntgweb    false    253            �            1259    16594 $   components_layouts_card_with_buttons    TABLE     �   CREATE TABLE public.components_layouts_card_with_buttons (
    id integer NOT NULL,
    title character varying(255),
    overview text
);
 8   DROP TABLE public.components_layouts_card_with_buttons;
       public         heap    ntgweb    false            �            1259    16600 /   components_layouts_card_with_buttons_components    TABLE     �   CREATE TABLE public.components_layouts_card_with_buttons_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 C   DROP TABLE public.components_layouts_card_with_buttons_components;
       public         heap    ntgweb    false                        1259    16607 6   components_layouts_card_with_buttons_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_card_with_buttons_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.components_layouts_card_with_buttons_components_id_seq;
       public          ntgweb    false    255            �           0    0 6   components_layouts_card_with_buttons_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_layouts_card_with_buttons_components_id_seq OWNED BY public.components_layouts_card_with_buttons_components.id;
          public          ntgweb    false    256                       1259    16609 +   components_layouts_card_with_buttons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_card_with_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.components_layouts_card_with_buttons_id_seq;
       public          ntgweb    false    254            �           0    0 +   components_layouts_card_with_buttons_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.components_layouts_card_with_buttons_id_seq OWNED BY public.components_layouts_card_with_buttons.id;
          public          ntgweb    false    257                       1259    16611    components_layouts_cards    TABLE        CREATE TABLE public.components_layouts_cards (
    id integer NOT NULL,
    title character varying(255),
    overview text
);
 ,   DROP TABLE public.components_layouts_cards;
       public         heap    ntgweb    false                       1259    16617 #   components_layouts_cards_components    TABLE     �   CREATE TABLE public.components_layouts_cards_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 7   DROP TABLE public.components_layouts_cards_components;
       public         heap    ntgweb    false                       1259    16624 *   components_layouts_cards_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_cards_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.components_layouts_cards_components_id_seq;
       public          ntgweb    false    259            �           0    0 *   components_layouts_cards_components_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.components_layouts_cards_components_id_seq OWNED BY public.components_layouts_cards_components.id;
          public          ntgweb    false    260                       1259    16626    components_layouts_cards_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.components_layouts_cards_id_seq;
       public          ntgweb    false    258            �           0    0    components_layouts_cards_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.components_layouts_cards_id_seq OWNED BY public.components_layouts_cards.id;
          public          ntgweb    false    261                       1259    16628     components_layouts_center_heroes    TABLE     �   CREATE TABLE public.components_layouts_center_heroes (
    id integer NOT NULL,
    title character varying(255),
    sub_title character varying(255),
    overview character varying(255)
);
 4   DROP TABLE public.components_layouts_center_heroes;
       public         heap    ntgweb    false                       1259    16634 +   components_layouts_center_heroes_components    TABLE     �   CREATE TABLE public.components_layouts_center_heroes_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 ?   DROP TABLE public.components_layouts_center_heroes_components;
       public         heap    ntgweb    false                       1259    16641 2   components_layouts_center_heroes_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_center_heroes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.components_layouts_center_heroes_components_id_seq;
       public          ntgweb    false    263            �           0    0 2   components_layouts_center_heroes_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_layouts_center_heroes_components_id_seq OWNED BY public.components_layouts_center_heroes_components.id;
          public          ntgweb    false    264            	           1259    16643 '   components_layouts_center_heroes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_center_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.components_layouts_center_heroes_id_seq;
       public          ntgweb    false    262            �           0    0 '   components_layouts_center_heroes_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.components_layouts_center_heroes_id_seq OWNED BY public.components_layouts_center_heroes.id;
          public          ntgweb    false    265            
           1259    16645 "   components_layouts_component_types    TABLE     �   CREATE TABLE public.components_layouts_component_types (
    id integer NOT NULL,
    title character varying(255),
    overview text,
    component_type character varying(255),
    label character varying(255)
);
 6   DROP TABLE public.components_layouts_component_types;
       public         heap    ntgweb    false            �           1259    18136 -   components_layouts_component_types_components    TABLE     �   CREATE TABLE public.components_layouts_component_types_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 A   DROP TABLE public.components_layouts_component_types_components;
       public         heap    postgres    false            �           1259    18134 4   components_layouts_component_types_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_component_types_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.components_layouts_component_types_components_id_seq;
       public          postgres    false    390            �           0    0 4   components_layouts_component_types_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_layouts_component_types_components_id_seq OWNED BY public.components_layouts_component_types_components.id;
          public          postgres    false    389                       1259    16651 )   components_layouts_component_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_component_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.components_layouts_component_types_id_seq;
       public          ntgweb    false    266            �           0    0 )   components_layouts_component_types_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.components_layouts_component_types_id_seq OWNED BY public.components_layouts_component_types.id;
          public          ntgweb    false    267                       1259    16653     components_layouts_contact_infos    TABLE     R   CREATE TABLE public.components_layouts_contact_infos (
    id integer NOT NULL
);
 4   DROP TABLE public.components_layouts_contact_infos;
       public         heap    ntgweb    false                       1259    16656 +   components_layouts_contact_infos_components    TABLE     �   CREATE TABLE public.components_layouts_contact_infos_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 ?   DROP TABLE public.components_layouts_contact_infos_components;
       public         heap    ntgweb    false                       1259    16663 2   components_layouts_contact_infos_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_contact_infos_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.components_layouts_contact_infos_components_id_seq;
       public          ntgweb    false    269            �           0    0 2   components_layouts_contact_infos_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_layouts_contact_infos_components_id_seq OWNED BY public.components_layouts_contact_infos_components.id;
          public          ntgweb    false    270                       1259    16665 '   components_layouts_contact_infos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_contact_infos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.components_layouts_contact_infos_id_seq;
       public          ntgweb    false    268            �           0    0 '   components_layouts_contact_infos_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.components_layouts_contact_infos_id_seq OWNED BY public.components_layouts_contact_infos.id;
          public          ntgweb    false    271                       1259    16667    components_layouts_contacts    TABLE     �   CREATE TABLE public.components_layouts_contacts (
    id integer NOT NULL,
    title character varying(255),
    overview text,
    style character varying(255)
);
 /   DROP TABLE public.components_layouts_contacts;
       public         heap    ntgweb    false                       1259    16673 "   components_layouts_contacts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.components_layouts_contacts_id_seq;
       public          ntgweb    false    272            �           0    0 "   components_layouts_contacts_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.components_layouts_contacts_id_seq OWNED BY public.components_layouts_contacts.id;
          public          ntgweb    false    273                       1259    16675 %   components_layouts_content_containers    TABLE     �   CREATE TABLE public.components_layouts_content_containers (
    id integer NOT NULL,
    title character varying(255),
    content text,
    overview text
);
 9   DROP TABLE public.components_layouts_content_containers;
       public         heap    ntgweb    false                       1259    16681 ,   components_layouts_content_containers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_content_containers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.components_layouts_content_containers_id_seq;
       public          ntgweb    false    274            �           0    0 ,   components_layouts_content_containers_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.components_layouts_content_containers_id_seq OWNED BY public.components_layouts_content_containers.id;
          public          ntgweb    false    275            �           1259    18223     components_layouts_featured_news    TABLE     z   CREATE TABLE public.components_layouts_featured_news (
    id integer NOT NULL,
    share_title character varying(255)
);
 4   DROP TABLE public.components_layouts_featured_news;
       public         heap    postgres    false            �           1259    18248 +   components_layouts_featured_news_components    TABLE     �   CREATE TABLE public.components_layouts_featured_news_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 ?   DROP TABLE public.components_layouts_featured_news_components;
       public         heap    postgres    false            �           1259    18246 2   components_layouts_featured_news_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_featured_news_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public.components_layouts_featured_news_components_id_seq;
       public          postgres    false    399            �           0    0 2   components_layouts_featured_news_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_layouts_featured_news_components_id_seq OWNED BY public.components_layouts_featured_news_components.id;
          public          postgres    false    398            �           1259    18221 '   components_layouts_featured_news_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_featured_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.components_layouts_featured_news_id_seq;
       public          postgres    false    396            �           0    0 '   components_layouts_featured_news_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.components_layouts_featured_news_id_seq OWNED BY public.components_layouts_featured_news.id;
          public          postgres    false    395            �           1259    18229 .   components_layouts_featured_news_insight_links    TABLE     }   CREATE TABLE public.components_layouts_featured_news_insight_links (
    featured_news_id integer,
    insight_id integer
);
 B   DROP TABLE public.components_layouts_featured_news_insight_links;
       public         heap    postgres    false                       1259    16683    components_layouts_footers    TABLE     t   CREATE TABLE public.components_layouts_footers (
    id integer NOT NULL,
    copyright text,
    copy_text text
);
 .   DROP TABLE public.components_layouts_footers;
       public         heap    ntgweb    false                       1259    16689 %   components_layouts_footers_components    TABLE     �   CREATE TABLE public.components_layouts_footers_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 9   DROP TABLE public.components_layouts_footers_components;
       public         heap    ntgweb    false                       1259    16696 ,   components_layouts_footers_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_footers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.components_layouts_footers_components_id_seq;
       public          ntgweb    false    277            �           0    0 ,   components_layouts_footers_components_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.components_layouts_footers_components_id_seq OWNED BY public.components_layouts_footers_components.id;
          public          ntgweb    false    278                       1259    16698 !   components_layouts_footers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_footers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.components_layouts_footers_id_seq;
       public          ntgweb    false    276            �           0    0 !   components_layouts_footers_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.components_layouts_footers_id_seq OWNED BY public.components_layouts_footers.id;
          public          ntgweb    false    279                       1259    16700 (   components_layouts_header_with_customers    TABLE     �   CREATE TABLE public.components_layouts_header_with_customers (
    id integer NOT NULL,
    title character varying(255),
    overview text,
    logo_title character varying(255)
);
 <   DROP TABLE public.components_layouts_header_with_customers;
       public         heap    ntgweb    false                       1259    16706 3   components_layouts_header_with_customers_components    TABLE       CREATE TABLE public.components_layouts_header_with_customers_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 G   DROP TABLE public.components_layouts_header_with_customers_components;
       public         heap    ntgweb    false                       1259    16713 :   components_layouts_header_with_customers_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_header_with_customers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 Q   DROP SEQUENCE public.components_layouts_header_with_customers_components_id_seq;
       public          ntgweb    false    281            �           0    0 :   components_layouts_header_with_customers_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_layouts_header_with_customers_components_id_seq OWNED BY public.components_layouts_header_with_customers_components.id;
          public          ntgweb    false    282                       1259    16715 /   components_layouts_header_with_customers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_header_with_customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.components_layouts_header_with_customers_id_seq;
       public          ntgweb    false    280            �           0    0 /   components_layouts_header_with_customers_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_layouts_header_with_customers_id_seq OWNED BY public.components_layouts_header_with_customers.id;
          public          ntgweb    false    283                       1259    16717    components_layouts_headers    TABLE     �   CREATE TABLE public.components_layouts_headers (
    id integer NOT NULL,
    title character varying(255),
    overview text,
    vertical_height integer
);
 .   DROP TABLE public.components_layouts_headers;
       public         heap    ntgweb    false                       1259    16723 %   components_layouts_headers_components    TABLE     �   CREATE TABLE public.components_layouts_headers_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 9   DROP TABLE public.components_layouts_headers_components;
       public         heap    ntgweb    false                       1259    16730 ,   components_layouts_headers_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_headers_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.components_layouts_headers_components_id_seq;
       public          ntgweb    false    285            �           0    0 ,   components_layouts_headers_components_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.components_layouts_headers_components_id_seq OWNED BY public.components_layouts_headers_components.id;
          public          ntgweb    false    286                       1259    16732 !   components_layouts_headers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_headers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.components_layouts_headers_id_seq;
       public          ntgweb    false    284            �           0    0 !   components_layouts_headers_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.components_layouts_headers_id_seq OWNED BY public.components_layouts_headers.id;
          public          ntgweb    false    287                        1259    16734 %   components_layouts_hero_circle_images    TABLE     �   CREATE TABLE public.components_layouts_hero_circle_images (
    id integer NOT NULL,
    title character varying(255),
    overview text,
    vertical_height integer
);
 9   DROP TABLE public.components_layouts_hero_circle_images;
       public         heap    ntgweb    false            !           1259    16740 0   components_layouts_hero_circle_images_components    TABLE     �   CREATE TABLE public.components_layouts_hero_circle_images_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 D   DROP TABLE public.components_layouts_hero_circle_images_components;
       public         heap    ntgweb    false            "           1259    16747 7   components_layouts_hero_circle_images_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_hero_circle_images_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE public.components_layouts_hero_circle_images_components_id_seq;
       public          ntgweb    false    289            �           0    0 7   components_layouts_hero_circle_images_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_layouts_hero_circle_images_components_id_seq OWNED BY public.components_layouts_hero_circle_images_components.id;
          public          ntgweb    false    290            #           1259    16749 ,   components_layouts_hero_circle_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_hero_circle_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.components_layouts_hero_circle_images_id_seq;
       public          ntgweb    false    288            �           0    0 ,   components_layouts_hero_circle_images_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.components_layouts_hero_circle_images_id_seq OWNED BY public.components_layouts_hero_circle_images.id;
          public          ntgweb    false    291            $           1259    16751 "   components_layouts_hero_highlights    TABLE     �   CREATE TABLE public.components_layouts_hero_highlights (
    id integer NOT NULL,
    title character varying(255),
    overview text
);
 6   DROP TABLE public.components_layouts_hero_highlights;
       public         heap    ntgweb    false            %           1259    16757 -   components_layouts_hero_highlights_components    TABLE     �   CREATE TABLE public.components_layouts_hero_highlights_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 A   DROP TABLE public.components_layouts_hero_highlights_components;
       public         heap    ntgweb    false            &           1259    16764 4   components_layouts_hero_highlights_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_hero_highlights_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.components_layouts_hero_highlights_components_id_seq;
       public          ntgweb    false    293            �           0    0 4   components_layouts_hero_highlights_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_layouts_hero_highlights_components_id_seq OWNED BY public.components_layouts_hero_highlights_components.id;
          public          ntgweb    false    294            '           1259    16766 )   components_layouts_hero_highlights_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_hero_highlights_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.components_layouts_hero_highlights_id_seq;
       public          ntgweb    false    292            �           0    0 )   components_layouts_hero_highlights_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.components_layouts_hero_highlights_id_seq OWNED BY public.components_layouts_hero_highlights.id;
          public          ntgweb    false    295            (           1259    16768 %   components_layouts_hero_square_images    TABLE     �   CREATE TABLE public.components_layouts_hero_square_images (
    id integer NOT NULL,
    title character varying(255),
    overview text,
    vertical_height integer,
    background_color character varying(255)
);
 9   DROP TABLE public.components_layouts_hero_square_images;
       public         heap    ntgweb    false            )           1259    16774 0   components_layouts_hero_square_images_components    TABLE     �   CREATE TABLE public.components_layouts_hero_square_images_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 D   DROP TABLE public.components_layouts_hero_square_images_components;
       public         heap    ntgweb    false            *           1259    16781 7   components_layouts_hero_square_images_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_hero_square_images_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE public.components_layouts_hero_square_images_components_id_seq;
       public          ntgweb    false    297            �           0    0 7   components_layouts_hero_square_images_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_layouts_hero_square_images_components_id_seq OWNED BY public.components_layouts_hero_square_images_components.id;
          public          ntgweb    false    298            +           1259    16783 ,   components_layouts_hero_square_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_hero_square_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.components_layouts_hero_square_images_id_seq;
       public          ntgweb    false    296            �           0    0 ,   components_layouts_hero_square_images_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.components_layouts_hero_square_images_id_seq OWNED BY public.components_layouts_hero_square_images.id;
          public          ntgweb    false    299            ,           1259    16785    components_layouts_image_heroes    TABLE     �   CREATE TABLE public.components_layouts_image_heroes (
    id integer NOT NULL,
    title character varying(255),
    overview text
);
 3   DROP TABLE public.components_layouts_image_heroes;
       public         heap    ntgweb    false            -           1259    16791 &   components_layouts_image_heroes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_image_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.components_layouts_image_heroes_id_seq;
       public          ntgweb    false    300            �           0    0 &   components_layouts_image_heroes_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.components_layouts_image_heroes_id_seq OWNED BY public.components_layouts_image_heroes.id;
          public          ntgweb    false    301            .           1259    16793    components_layouts_item_heroes    TABLE     �   CREATE TABLE public.components_layouts_item_heroes (
    id integer NOT NULL,
    title character varying(255),
    overview text,
    style character varying(255)
);
 2   DROP TABLE public.components_layouts_item_heroes;
       public         heap    ntgweb    false            /           1259    16799 )   components_layouts_item_heroes_components    TABLE     �   CREATE TABLE public.components_layouts_item_heroes_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 =   DROP TABLE public.components_layouts_item_heroes_components;
       public         heap    ntgweb    false            0           1259    16806 0   components_layouts_item_heroes_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_item_heroes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.components_layouts_item_heroes_components_id_seq;
       public          ntgweb    false    303            �           0    0 0   components_layouts_item_heroes_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_layouts_item_heroes_components_id_seq OWNED BY public.components_layouts_item_heroes_components.id;
          public          ntgweb    false    304            1           1259    16808 %   components_layouts_item_heroes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_item_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.components_layouts_item_heroes_id_seq;
       public          ntgweb    false    302            �           0    0 %   components_layouts_item_heroes_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_layouts_item_heroes_id_seq OWNED BY public.components_layouts_item_heroes.id;
          public          ntgweb    false    305            2           1259    16810 !   components_layouts_mansory_images    TABLE     �   CREATE TABLE public.components_layouts_mansory_images (
    id integer NOT NULL,
    title character varying(255),
    overview text,
    label character varying(255)
);
 5   DROP TABLE public.components_layouts_mansory_images;
       public         heap    ntgweb    false            3           1259    16816 (   components_layouts_mansory_images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_mansory_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.components_layouts_mansory_images_id_seq;
       public          ntgweb    false    306            �           0    0 (   components_layouts_mansory_images_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.components_layouts_mansory_images_id_seq OWNED BY public.components_layouts_mansory_images.id;
          public          ntgweb    false    307            �           1259    18099    components_layouts_partners    TABLE     �   CREATE TABLE public.components_layouts_partners (
    id integer NOT NULL,
    title character varying(255),
    section_background character varying(255)
);
 /   DROP TABLE public.components_layouts_partners;
       public         heap    postgres    false            �           1259    18107 &   components_layouts_partners_components    TABLE     �   CREATE TABLE public.components_layouts_partners_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 :   DROP TABLE public.components_layouts_partners_components;
       public         heap    postgres    false            �           1259    18105 -   components_layouts_partners_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_partners_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.components_layouts_partners_components_id_seq;
       public          postgres    false    388            �           0    0 -   components_layouts_partners_components_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.components_layouts_partners_components_id_seq OWNED BY public.components_layouts_partners_components.id;
          public          postgres    false    387            �           1259    18097 "   components_layouts_partners_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_partners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.components_layouts_partners_id_seq;
       public          postgres    false    386            �           0    0 "   components_layouts_partners_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.components_layouts_partners_id_seq OWNED BY public.components_layouts_partners.id;
          public          postgres    false    385            4           1259    16832    components_layouts_quotes    TABLE     �   CREATE TABLE public.components_layouts_quotes (
    id integer NOT NULL,
    message text,
    background_color character varying(255),
    footnote character varying(255)
);
 -   DROP TABLE public.components_layouts_quotes;
       public         heap    ntgweb    false            5           1259    16838     components_layouts_quotes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_quotes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.components_layouts_quotes_id_seq;
       public          ntgweb    false    308            �           0    0     components_layouts_quotes_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.components_layouts_quotes_id_seq OWNED BY public.components_layouts_quotes.id;
          public          ntgweb    false    309            6           1259    16857     components_layouts_simple_heroes    TABLE     �   CREATE TABLE public.components_layouts_simple_heroes (
    id integer NOT NULL,
    title character varying(255),
    overview text
);
 4   DROP TABLE public.components_layouts_simple_heroes;
       public         heap    ntgweb    false            7           1259    16863 '   components_layouts_simple_heroes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_simple_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.components_layouts_simple_heroes_id_seq;
       public          ntgweb    false    310            �           0    0 '   components_layouts_simple_heroes_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.components_layouts_simple_heroes_id_seq OWNED BY public.components_layouts_simple_heroes.id;
          public          ntgweb    false    311            8           1259    16865    components_layouts_steps    TABLE     �   CREATE TABLE public.components_layouts_steps (
    id integer NOT NULL,
    title character varying(255),
    overview text,
    type character varying(255)
);
 ,   DROP TABLE public.components_layouts_steps;
       public         heap    ntgweb    false            9           1259    16871 #   components_layouts_steps_components    TABLE     �   CREATE TABLE public.components_layouts_steps_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 7   DROP TABLE public.components_layouts_steps_components;
       public         heap    ntgweb    false            :           1259    16878 *   components_layouts_steps_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_steps_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.components_layouts_steps_components_id_seq;
       public          ntgweb    false    313            �           0    0 *   components_layouts_steps_components_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.components_layouts_steps_components_id_seq OWNED BY public.components_layouts_steps_components.id;
          public          ntgweb    false    314            ;           1259    16880    components_layouts_steps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_steps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.components_layouts_steps_id_seq;
       public          ntgweb    false    312            �           0    0    components_layouts_steps_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.components_layouts_steps_id_seq OWNED BY public.components_layouts_steps.id;
          public          ntgweb    false    315            <           1259    16882 !   components_layouts_support_heroes    TABLE     �   CREATE TABLE public.components_layouts_support_heroes (
    id integer NOT NULL,
    title character varying(255),
    overview text
);
 5   DROP TABLE public.components_layouts_support_heroes;
       public         heap    ntgweb    false            =           1259    16888 ,   components_layouts_support_heroes_components    TABLE     �   CREATE TABLE public.components_layouts_support_heroes_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 @   DROP TABLE public.components_layouts_support_heroes_components;
       public         heap    ntgweb    false            >           1259    16895 3   components_layouts_support_heroes_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_support_heroes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public.components_layouts_support_heroes_components_id_seq;
       public          ntgweb    false    317            �           0    0 3   components_layouts_support_heroes_components_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_layouts_support_heroes_components_id_seq OWNED BY public.components_layouts_support_heroes_components.id;
          public          ntgweb    false    318            ?           1259    16897 (   components_layouts_support_heroes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_layouts_support_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.components_layouts_support_heroes_id_seq;
       public          ntgweb    false    316            �           0    0 (   components_layouts_support_heroes_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.components_layouts_support_heroes_id_seq OWNED BY public.components_layouts_support_heroes.id;
          public          ntgweb    false    319            �           1259    18370 "   components_products_content_tables    TABLE     �   CREATE TABLE public.components_products_content_tables (
    id integer NOT NULL,
    title character varying(255),
    content text
);
 6   DROP TABLE public.components_products_content_tables;
       public         heap    postgres    false            �           1259    18368 )   components_products_content_tables_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_products_content_tables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.components_products_content_tables_id_seq;
       public          postgres    false    407            �           0    0 )   components_products_content_tables_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.components_products_content_tables_id_seq OWNED BY public.components_products_content_tables.id;
          public          postgres    false    406            @           1259    16899    components_products_products    TABLE     �   CREATE TABLE public.components_products_products (
    id integer NOT NULL,
    title character varying(255),
    overview text
);
 0   DROP TABLE public.components_products_products;
       public         heap    ntgweb    false            A           1259    16905 #   components_products_products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_products_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.components_products_products_id_seq;
       public          ntgweb    false    320            �           0    0 #   components_products_products_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.components_products_products_id_seq OWNED BY public.components_products_products.id;
          public          ntgweb    false    321            B           1259    16907 !   components_settings_page_settings    TABLE     |   CREATE TABLE public.components_settings_page_settings (
    id integer NOT NULL,
    navbar_style character varying(255)
);
 5   DROP TABLE public.components_settings_page_settings;
       public         heap    ntgweb    false            C           1259    16910 (   components_settings_page_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_settings_page_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.components_settings_page_settings_id_seq;
       public          ntgweb    false    322            �           0    0 (   components_settings_page_settings_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.components_settings_page_settings_id_seq OWNED BY public.components_settings_page_settings.id;
          public          ntgweb    false    323            D           1259    16912    components_shared_meta_socials    TABLE     �   CREATE TABLE public.components_shared_meta_socials (
    id integer NOT NULL,
    social_network character varying(255),
    title character varying(255),
    description character varying(255)
);
 2   DROP TABLE public.components_shared_meta_socials;
       public         heap    ntgweb    false            E           1259    16918 %   components_shared_meta_socials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_meta_socials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.components_shared_meta_socials_id_seq;
       public          ntgweb    false    324            �           0    0 %   components_shared_meta_socials_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.components_shared_meta_socials_id_seq OWNED BY public.components_shared_meta_socials.id;
          public          ntgweb    false    325            F           1259    16920    components_shared_seos    TABLE     F  CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description character varying(255),
    keywords text,
    meta_robots character varying(255),
    structured_data jsonb,
    meta_viewport character varying(255),
    canonical_url character varying(255)
);
 *   DROP TABLE public.components_shared_seos;
       public         heap    ntgweb    false            G           1259    16926 !   components_shared_seos_components    TABLE     �   CREATE TABLE public.components_shared_seos_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 5   DROP TABLE public.components_shared_seos_components;
       public         heap    ntgweb    false            H           1259    16933 (   components_shared_seos_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_seos_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.components_shared_seos_components_id_seq;
       public          ntgweb    false    327            �           0    0 (   components_shared_seos_components_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.components_shared_seos_components_id_seq OWNED BY public.components_shared_seos_components.id;
          public          ntgweb    false    328            I           1259    16935    components_shared_seos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.components_shared_seos_id_seq;
       public          ntgweb    false    326            �           0    0    components_shared_seos_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;
          public          ntgweb    false    329            �           1259    18278    components_shared_social_shares    TABLE     �   CREATE TABLE public.components_shared_social_shares (
    id integer NOT NULL,
    url character varying(255),
    title character varying(255)
);
 3   DROP TABLE public.components_shared_social_shares;
       public         heap    postgres    false            �           1259    18276 &   components_shared_social_shares_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_social_shares_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.components_shared_social_shares_id_seq;
       public          postgres    false    401            �           0    0 &   components_shared_social_shares_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.components_shared_social_shares_id_seq OWNED BY public.components_shared_social_shares.id;
          public          postgres    false    400            �           1259    20478    contacts    TABLE     �  CREATE TABLE public.contacts (
    id integer NOT NULL,
    fullname character varying(255),
    email character varying(255),
    company character varying(255),
    topic character varying(255),
    message text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.contacts;
       public         heap    postgres    false            �           1259    20476    contacts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.contacts_id_seq;
       public          postgres    false    423            �           0    0    contacts_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;
          public          postgres    false    422            J           1259    16937 	   customers    TABLE     E  CREATE TABLE public.customers (
    id integer NOT NULL,
    name character varying(255),
    website character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.customers;
       public         heap    ntgweb    false            K           1259    16943    customers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.customers_id_seq;
       public          ntgweb    false    330            �           0    0    customers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;
          public          ntgweb    false    331            L           1259    16945    files    TABLE     {  CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.files;
       public         heap    ntgweb    false            M           1259    16951    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          ntgweb    false    332            �           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          ntgweb    false    333            N           1259    16953    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    ntgweb    false            O           1259    16959    globals    TABLE     k  CREATE TABLE public.globals (
    id integer NOT NULL,
    tagline character varying(255),
    copyright character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.globals;
       public         heap    ntgweb    false            P           1259    16965    globals_components    TABLE     �   CREATE TABLE public.globals_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 &   DROP TABLE public.globals_components;
       public         heap    ntgweb    false            Q           1259    16972    globals_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.globals_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.globals_components_id_seq;
       public          ntgweb    false    336            �           0    0    globals_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.globals_components_id_seq OWNED BY public.globals_components.id;
          public          ntgweb    false    337            R           1259    16974    globals_id_seq    SEQUENCE     �   CREATE SEQUENCE public.globals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.globals_id_seq;
       public          ntgweb    false    335            �           0    0    globals_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.globals_id_seq OWNED BY public.globals.id;
          public          ntgweb    false    338            S           1259    16976    globals_localizations_links    TABLE     f   CREATE TABLE public.globals_localizations_links (
    global_id integer,
    inv_global_id integer
);
 /   DROP TABLE public.globals_localizations_links;
       public         heap    ntgweb    false            T           1259    16979    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    ntgweb    false            U           1259    16985    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          ntgweb    false    340            �           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          ntgweb    false    341            V           1259    16987    insights    TABLE     �  CREATE TABLE public.insights (
    id integer NOT NULL,
    title character varying(255),
    content text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    overview text,
    slug character varying(255),
    excerpt text,
    locale character varying(255)
);
    DROP TABLE public.insights;
       public         heap    ntgweb    false            �           1259    20355    insights_author_links    TABLE     ]   CREATE TABLE public.insights_author_links (
    insight_id integer,
    author_id integer
);
 )   DROP TABLE public.insights_author_links;
       public         heap    postgres    false            W           1259    16993    insights_category_insight_links    TABLE     q   CREATE TABLE public.insights_category_insight_links (
    insight_id integer,
    category_insight_id integer
);
 3   DROP TABLE public.insights_category_insight_links;
       public         heap    ntgweb    false            X           1259    16996    insights_components    TABLE     �   CREATE TABLE public.insights_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 '   DROP TABLE public.insights_components;
       public         heap    ntgweb    false            Y           1259    17003    insights_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.insights_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.insights_components_id_seq;
       public          ntgweb    false    344            �           0    0    insights_components_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.insights_components_id_seq OWNED BY public.insights_components.id;
          public          ntgweb    false    345            Z           1259    17005    insights_id_seq    SEQUENCE     �   CREATE SEQUENCE public.insights_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.insights_id_seq;
       public          ntgweb    false    342            �           0    0    insights_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.insights_id_seq OWNED BY public.insights.id;
          public          ntgweb    false    346            �           1259    20634    insights_localizations_links    TABLE     i   CREATE TABLE public.insights_localizations_links (
    insight_id integer,
    inv_insight_id integer
);
 0   DROP TABLE public.insights_localizations_links;
       public         heap    postgres    false            [           1259    17007    insights_related_insights_links    TABLE     l   CREATE TABLE public.insights_related_insights_links (
    insight_id integer,
    inv_insight_id integer
);
 3   DROP TABLE public.insights_related_insights_links;
       public         heap    ntgweb    false            \           1259    17010    pages    TABLE     a  CREATE TABLE public.pages (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.pages;
       public         heap    ntgweb    false            ]           1259    17016    pages_components    TABLE     �   CREATE TABLE public.pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 $   DROP TABLE public.pages_components;
       public         heap    ntgweb    false            ^           1259    17023    pages_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pages_components_id_seq;
       public          ntgweb    false    349            �           0    0    pages_components_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.pages_components_id_seq OWNED BY public.pages_components.id;
          public          ntgweb    false    350            _           1259    17025    pages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.pages_id_seq;
       public          ntgweb    false    348            �           0    0    pages_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;
          public          ntgweb    false    351            `           1259    17027    pages_localizations_links    TABLE     `   CREATE TABLE public.pages_localizations_links (
    page_id integer,
    inv_page_id integer
);
 -   DROP TABLE public.pages_localizations_links;
       public         heap    ntgweb    false            a           1259    17030 	   platforms    TABLE     !  CREATE TABLE public.platforms (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.platforms;
       public         heap    ntgweb    false            b           1259    17033    platforms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.platforms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.platforms_id_seq;
       public          ntgweb    false    353            �           0    0    platforms_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.platforms_id_seq OWNED BY public.platforms.id;
          public          ntgweb    false    354            �           1259    20415    product_instances    TABLE     �   CREATE TABLE public.product_instances (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.product_instances;
       public         heap    postgres    false            �           1259    20413    product_instances_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_instances_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.product_instances_id_seq;
       public          postgres    false    420            �           0    0    product_instances_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.product_instances_id_seq OWNED BY public.product_instances.id;
          public          postgres    false    419            c           1259    17035    products    TABLE     �  CREATE TABLE public.products (
    id integer NOT NULL,
    description text,
    start_price character varying(255),
    featured_product boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    name character varying(255),
    summary text,
    slug character varying(255),
    locale character varying(255)
);
    DROP TABLE public.products;
       public         heap    ntgweb    false            d           1259    17041     products_category_products_links    TABLE     r   CREATE TABLE public.products_category_products_links (
    product_id integer,
    category_product_id integer
);
 4   DROP TABLE public.products_category_products_links;
       public         heap    ntgweb    false            e           1259    17044    products_components    TABLE     �   CREATE TABLE public.products_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 '   DROP TABLE public.products_components;
       public         heap    ntgweb    false            f           1259    17051    products_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.products_components_id_seq;
       public          ntgweb    false    357            �           0    0    products_components_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.products_components_id_seq OWNED BY public.products_components.id;
          public          ntgweb    false    358            �           1259    18412    products_customers_links    TABLE     b   CREATE TABLE public.products_customers_links (
    product_id integer,
    customer_id integer
);
 ,   DROP TABLE public.products_customers_links;
       public         heap    postgres    false            g           1259    17053    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          ntgweb    false    355            �           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          ntgweb    false    359            �           1259    20651    products_localizations_links    TABLE     i   CREATE TABLE public.products_localizations_links (
    product_id integer,
    inv_product_id integer
);
 0   DROP TABLE public.products_localizations_links;
       public         heap    postgres    false            h           1259    17055    products_platform_links    TABLE     a   CREATE TABLE public.products_platform_links (
    product_id integer,
    platform_id integer
);
 +   DROP TABLE public.products_platform_links;
       public         heap    ntgweb    false            �           1259    20435    products_product_instance_links    TABLE     q   CREATE TABLE public.products_product_instance_links (
    product_id integer,
    product_instance_id integer
);
 3   DROP TABLE public.products_product_instance_links;
       public         heap    postgres    false            �           1259    20396    products_service_links    TABLE     _   CREATE TABLE public.products_service_links (
    product_id integer,
    service_id integer
);
 *   DROP TABLE public.products_service_links;
       public         heap    postgres    false            i           1259    17058    services    TABLE     Z  CREATE TABLE public.services (
    id integer NOT NULL,
    title character varying(255),
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);
    DROP TABLE public.services;
       public         heap    ntgweb    false            �           1259    20376    services_components    TABLE     �   CREATE TABLE public.services_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" integer DEFAULT 0
);
 '   DROP TABLE public.services_components;
       public         heap    postgres    false            �           1259    20374    services_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.services_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.services_components_id_seq;
       public          postgres    false    417            �           0    0    services_components_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.services_components_id_seq OWNED BY public.services_components.id;
          public          postgres    false    416            j           1259    17064    services_id_seq    SEQUENCE     �   CREATE SEQUENCE public.services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.services_id_seq;
       public          ntgweb    false    361            �           0    0    services_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.services_id_seq OWNED BY public.services.id;
          public          ntgweb    false    362            �           1259    20668    services_localizations_links    TABLE     i   CREATE TABLE public.services_localizations_links (
    service_id integer,
    inv_service_id integer
);
 0   DROP TABLE public.services_localizations_links;
       public         heap    postgres    false            k           1259    17066    strapi_api_tokens    TABLE     h  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    ntgweb    false            l           1259    17072    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          ntgweb    false    363            �           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          ntgweb    false    364            m           1259    17074    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    ntgweb    false            n           1259    17080 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          ntgweb    false    365            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          ntgweb    false    366            o           1259    17082    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    ntgweb    false            p           1259    17088    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          ntgweb    false    367            �           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          ntgweb    false    368            q           1259    17090    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    ntgweb    false            r           1259    17093    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          ntgweb    false    369            �           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          ntgweb    false    370            s           1259    17095    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    ntgweb    false            t           1259    17101    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          ntgweb    false    371            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          ntgweb    false    372            u           1259    17103 
   testimonis    TABLE     Y  CREATE TABLE public.testimonis (
    id integer NOT NULL,
    name character varying(255),
    username character varying(255),
    message text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.testimonis;
       public         heap    ntgweb    false            v           1259    17109    testimonis_id_seq    SEQUENCE     �   CREATE SEQUENCE public.testimonis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.testimonis_id_seq;
       public          ntgweb    false    373            �           0    0    testimonis_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.testimonis_id_seq OWNED BY public.testimonis.id;
          public          ntgweb    false    374            w           1259    17111 	   type_jobs    TABLE     !  CREATE TABLE public.type_jobs (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.type_jobs;
       public         heap    ntgweb    false            x           1259    17114    type_jobs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.type_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.type_jobs_id_seq;
       public          ntgweb    false    375            �           0    0    type_jobs_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.type_jobs_id_seq OWNED BY public.type_jobs.id;
          public          ntgweb    false    376            y           1259    17116    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    ntgweb    false            z           1259    17119    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          ntgweb    false    377            �           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          ntgweb    false    378            {           1259    17121    up_permissions_role_links    TABLE     b   CREATE TABLE public.up_permissions_role_links (
    permission_id integer,
    role_id integer
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    ntgweb    false            |           1259    17124    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    ntgweb    false            }           1259    17130    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          ntgweb    false    380            �           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          ntgweb    false    381            ~           1259    17132    up_users    TABLE     �  CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_users;
       public         heap    ntgweb    false                       1259    17138    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          ntgweb    false    382            �           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          ntgweb    false    383            �           1259    17140    up_users_role_links    TABLE     V   CREATE TABLE public.up_users_role_links (
    user_id integer,
    role_id integer
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    ntgweb    false            Z           2604    17151    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    201    200            [           2604    17152    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    204    203            \           2604    17153    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    206    205            ]           2604    17154    applicants id    DEFAULT     n   ALTER TABLE ONLY public.applicants ALTER COLUMN id SET DEFAULT nextval('public.applicants_id_seq'::regclass);
 <   ALTER TABLE public.applicants ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    210    208            �           2604    20338 
   authors id    DEFAULT     h   ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);
 9   ALTER TABLE public.authors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    413    414    414            ^           2604    17155 
   careers id    DEFAULT     h   ALTER TABLE ONLY public.careers ALTER COLUMN id SET DEFAULT nextval('public.careers_id_seq'::regclass);
 9   ALTER TABLE public.careers ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    214    211            `           2604    17156    careers_components id    DEFAULT     ~   ALTER TABLE ONLY public.careers_components ALTER COLUMN id SET DEFAULT nextval('public.careers_components_id_seq'::regclass);
 D   ALTER TABLE public.careers_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    213    212            a           2604    17157    category_insights id    DEFAULT     |   ALTER TABLE ONLY public.category_insights ALTER COLUMN id SET DEFAULT nextval('public.category_insights_id_seq'::regclass);
 C   ALTER TABLE public.category_insights ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    217    216            b           2604    17158    category_products id    DEFAULT     |   ALTER TABLE ONLY public.category_products ALTER COLUMN id SET DEFAULT nextval('public.category_products_id_seq'::regclass);
 C   ALTER TABLE public.category_products ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    219    218            c           2604    17159 !   components_column_link_columns id    DEFAULT     �   ALTER TABLE ONLY public.components_column_link_columns ALTER COLUMN id SET DEFAULT nextval('public.components_column_link_columns_id_seq'::regclass);
 P   ALTER TABLE public.components_column_link_columns ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    223    220            e           2604    17160 ,   components_column_link_columns_components id    DEFAULT     �   ALTER TABLE ONLY public.components_column_link_columns_components ALTER COLUMN id SET DEFAULT nextval('public.components_column_link_columns_components_id_seq'::regclass);
 [   ALTER TABLE public.components_column_link_columns_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    222    221            f           2604    17161 ,   components_component_key_responsibilities id    DEFAULT     �   ALTER TABLE ONLY public.components_component_key_responsibilities ALTER COLUMN id SET DEFAULT nextval('public.components_component_key_responsibilities_id_seq'::regclass);
 [   ALTER TABLE public.components_component_key_responsibilities ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    225    224            g           2604    17162 /   components_component_required_qualifications id    DEFAULT     �   ALTER TABLE ONLY public.components_component_required_qualifications ALTER COLUMN id SET DEFAULT nextval('public.components_component_required_qualifications_id_seq'::regclass);
 ^   ALTER TABLE public.components_component_required_qualifications ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    227    226            h           2604    17163 '   components_component_required_skills id    DEFAULT     �   ALTER TABLE ONLY public.components_component_required_skills ALTER COLUMN id SET DEFAULT nextval('public.components_component_required_skills_id_seq'::regclass);
 V   ALTER TABLE public.components_component_required_skills ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    229    228            i           2604    17164 &   components_elements_accordion_items id    DEFAULT     �   ALTER TABLE ONLY public.components_elements_accordion_items ALTER COLUMN id SET DEFAULT nextval('public.components_elements_accordion_items_id_seq'::regclass);
 U   ALTER TABLE public.components_elements_accordion_items ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    231    230            j           2604    17165    components_elements_buttons id    DEFAULT     �   ALTER TABLE ONLY public.components_elements_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_elements_buttons_id_seq'::regclass);
 M   ALTER TABLE public.components_elements_buttons ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    233    232            �           2604    18313 &   components_elements_card_with_icons id    DEFAULT     �   ALTER TABLE ONLY public.components_elements_card_with_icons ALTER COLUMN id SET DEFAULT nextval('public.components_elements_card_with_icons_id_seq'::regclass);
 U   ALTER TABLE public.components_elements_card_with_icons ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    403    402    403            �           2604    18327    components_elements_contacts id    DEFAULT     �   ALTER TABLE ONLY public.components_elements_contacts ALTER COLUMN id SET DEFAULT nextval('public.components_elements_contacts_id_seq'::regclass);
 N   ALTER TABLE public.components_elements_contacts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    405    404    405            �           2604    18202 '   components_elements_content_sections id    DEFAULT     �   ALTER TABLE ONLY public.components_elements_content_sections ALTER COLUMN id SET DEFAULT nextval('public.components_elements_content_sections_id_seq'::regclass);
 V   ALTER TABLE public.components_elements_content_sections ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    393    394    394            �           2604    20516    components_elements_headers id    DEFAULT     �   ALTER TABLE ONLY public.components_elements_headers ALTER COLUMN id SET DEFAULT nextval('public.components_elements_headers_id_seq'::regclass);
 M   ALTER TABLE public.components_elements_headers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    424    425    425            �           2604    20535 )   components_elements_headers_components id    DEFAULT     �   ALTER TABLE ONLY public.components_elements_headers_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_headers_components_id_seq'::regclass);
 X   ALTER TABLE public.components_elements_headers_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    429    428    429            k           2604    17166    components_elements_items id    DEFAULT     �   ALTER TABLE ONLY public.components_elements_items ALTER COLUMN id SET DEFAULT nextval('public.components_elements_items_id_seq'::regclass);
 K   ALTER TABLE public.components_elements_items ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    235    234            l           2604    17167    components_elements_links id    DEFAULT     �   ALTER TABLE ONLY public.components_elements_links ALTER COLUMN id SET DEFAULT nextval('public.components_elements_links_id_seq'::regclass);
 K   ALTER TABLE public.components_elements_links ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    237    236            m           2604    17168    components_elements_logos id    DEFAULT     �   ALTER TABLE ONLY public.components_elements_logos ALTER COLUMN id SET DEFAULT nextval('public.components_elements_logos_id_seq'::regclass);
 K   ALTER TABLE public.components_elements_logos ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    239    238            �           2604    20527 !   components_elements_menu_items id    DEFAULT     �   ALTER TABLE ONLY public.components_elements_menu_items ALTER COLUMN id SET DEFAULT nextval('public.components_elements_menu_items_id_seq'::regclass);
 P   ALTER TABLE public.components_elements_menu_items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    426    427    427            �           2604    20557 ,   components_elements_menu_items_components id    DEFAULT     �   ALTER TABLE ONLY public.components_elements_menu_items_components ALTER COLUMN id SET DEFAULT nextval('public.components_elements_menu_items_components_id_seq'::regclass);
 [   ALTER TABLE public.components_elements_menu_items_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    430    431    431            �           2604    18402 +   components_elements_product_marketplaces id    DEFAULT     �   ALTER TABLE ONLY public.components_elements_product_marketplaces ALTER COLUMN id SET DEFAULT nextval('public.components_elements_product_marketplaces_id_seq'::regclass);
 Z   ALTER TABLE public.components_elements_product_marketplaces ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    410    411    411            �           2604    18392 &   components_elements_product_ratings id    DEFAULT     �   ALTER TABLE ONLY public.components_elements_product_ratings ALTER COLUMN id SET DEFAULT nextval('public.components_elements_product_ratings_id_seq'::regclass);
 U   ALTER TABLE public.components_elements_product_ratings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    408    409    409            n           2604    17169 #   components_elements_record_cards id    DEFAULT     �   ALTER TABLE ONLY public.components_elements_record_cards ALTER COLUMN id SET DEFAULT nextval('public.components_elements_record_cards_id_seq'::regclass);
 R   ALTER TABLE public.components_elements_record_cards ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    241    240            �           2604    18166    components_elements_records id    DEFAULT     �   ALTER TABLE ONLY public.components_elements_records ALTER COLUMN id SET DEFAULT nextval('public.components_elements_records_id_seq'::regclass);
 M   ALTER TABLE public.components_elements_records ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    392    391    392            o           2604    17170    components_heros_heroes id    DEFAULT     �   ALTER TABLE ONLY public.components_heros_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_heros_heroes_id_seq'::regclass);
 I   ALTER TABLE public.components_heros_heroes ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    245    242            q           2604    17171 %   components_heros_heroes_components id    DEFAULT     �   ALTER TABLE ONLY public.components_heros_heroes_components ALTER COLUMN id SET DEFAULT nextval('public.components_heros_heroes_components_id_seq'::regclass);
 T   ALTER TABLE public.components_heros_heroes_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    244    243            r           2604    17172 (   components_layouts_accordion_contents id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_accordion_contents ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_accordion_contents_id_seq'::regclass);
 W   ALTER TABLE public.components_layouts_accordion_contents ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    249    246            t           2604    17173 3   components_layouts_accordion_contents_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_accordion_contents_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_accordion_contents_components_id_seq'::regclass);
 b   ALTER TABLE public.components_layouts_accordion_contents_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    248    247            u           2604    17174 !   components_layouts_bkg_headers id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_bkg_headers ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_bkg_headers_id_seq'::regclass);
 P   ALTER TABLE public.components_layouts_bkg_headers ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    253    250            w           2604    17175 ,   components_layouts_bkg_headers_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_bkg_headers_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_bkg_headers_components_id_seq'::regclass);
 [   ALTER TABLE public.components_layouts_bkg_headers_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    252    251            x           2604    17176 '   components_layouts_card_with_buttons id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_card_with_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_card_with_buttons_id_seq'::regclass);
 V   ALTER TABLE public.components_layouts_card_with_buttons ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    257    254            z           2604    17177 2   components_layouts_card_with_buttons_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_card_with_buttons_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_card_with_buttons_components_id_seq'::regclass);
 a   ALTER TABLE public.components_layouts_card_with_buttons_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    256    255            {           2604    17178    components_layouts_cards id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_cards ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_cards_id_seq'::regclass);
 J   ALTER TABLE public.components_layouts_cards ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    261    258            }           2604    17179 &   components_layouts_cards_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_cards_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_cards_components_id_seq'::regclass);
 U   ALTER TABLE public.components_layouts_cards_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    260    259            ~           2604    17180 #   components_layouts_center_heroes id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_center_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_center_heroes_id_seq'::regclass);
 R   ALTER TABLE public.components_layouts_center_heroes ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    265    262            �           2604    17181 .   components_layouts_center_heroes_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_center_heroes_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_center_heroes_components_id_seq'::regclass);
 ]   ALTER TABLE public.components_layouts_center_heroes_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    264    263            �           2604    17182 %   components_layouts_component_types id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_component_types ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_component_types_id_seq'::regclass);
 T   ALTER TABLE public.components_layouts_component_types ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    267    266            �           2604    18139 0   components_layouts_component_types_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_component_types_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_component_types_components_id_seq'::regclass);
 _   ALTER TABLE public.components_layouts_component_types_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    390    389    390            �           2604    17183 #   components_layouts_contact_infos id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_contact_infos ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_contact_infos_id_seq'::regclass);
 R   ALTER TABLE public.components_layouts_contact_infos ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    271    268            �           2604    17184 .   components_layouts_contact_infos_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_contact_infos_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_contact_infos_components_id_seq'::regclass);
 ]   ALTER TABLE public.components_layouts_contact_infos_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    270    269            �           2604    17185    components_layouts_contacts id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_contacts ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_contacts_id_seq'::regclass);
 M   ALTER TABLE public.components_layouts_contacts ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    273    272            �           2604    17186 (   components_layouts_content_containers id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_content_containers ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_content_containers_id_seq'::regclass);
 W   ALTER TABLE public.components_layouts_content_containers ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    275    274            �           2604    18226 #   components_layouts_featured_news id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_featured_news ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_featured_news_id_seq'::regclass);
 R   ALTER TABLE public.components_layouts_featured_news ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    396    395    396            �           2604    18251 .   components_layouts_featured_news_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_featured_news_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_featured_news_components_id_seq'::regclass);
 ]   ALTER TABLE public.components_layouts_featured_news_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    399    398    399            �           2604    17187    components_layouts_footers id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_footers ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_footers_id_seq'::regclass);
 L   ALTER TABLE public.components_layouts_footers ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    279    276            �           2604    17188 (   components_layouts_footers_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_footers_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_footers_components_id_seq'::regclass);
 W   ALTER TABLE public.components_layouts_footers_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    278    277            �           2604    17189 +   components_layouts_header_with_customers id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_header_with_customers ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_header_with_customers_id_seq'::regclass);
 Z   ALTER TABLE public.components_layouts_header_with_customers ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    283    280            �           2604    17190 6   components_layouts_header_with_customers_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_header_with_customers_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_header_with_customers_components_id_seq'::regclass);
 e   ALTER TABLE public.components_layouts_header_with_customers_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    282    281            �           2604    17191    components_layouts_headers id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_headers ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_headers_id_seq'::regclass);
 L   ALTER TABLE public.components_layouts_headers ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    287    284            �           2604    17192 (   components_layouts_headers_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_headers_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_headers_components_id_seq'::regclass);
 W   ALTER TABLE public.components_layouts_headers_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    286    285            �           2604    17193 (   components_layouts_hero_circle_images id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_hero_circle_images ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_hero_circle_images_id_seq'::regclass);
 W   ALTER TABLE public.components_layouts_hero_circle_images ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    291    288            �           2604    17194 3   components_layouts_hero_circle_images_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_hero_circle_images_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_hero_circle_images_components_id_seq'::regclass);
 b   ALTER TABLE public.components_layouts_hero_circle_images_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    290    289            �           2604    17195 %   components_layouts_hero_highlights id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_hero_highlights ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_hero_highlights_id_seq'::regclass);
 T   ALTER TABLE public.components_layouts_hero_highlights ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    295    292            �           2604    17196 0   components_layouts_hero_highlights_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_hero_highlights_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_hero_highlights_components_id_seq'::regclass);
 _   ALTER TABLE public.components_layouts_hero_highlights_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    294    293            �           2604    17197 (   components_layouts_hero_square_images id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_hero_square_images ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_hero_square_images_id_seq'::regclass);
 W   ALTER TABLE public.components_layouts_hero_square_images ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    299    296            �           2604    17198 3   components_layouts_hero_square_images_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_hero_square_images_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_hero_square_images_components_id_seq'::regclass);
 b   ALTER TABLE public.components_layouts_hero_square_images_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    298    297            �           2604    17199 "   components_layouts_image_heroes id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_image_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_image_heroes_id_seq'::regclass);
 Q   ALTER TABLE public.components_layouts_image_heroes ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    301    300            �           2604    17200 !   components_layouts_item_heroes id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_item_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_item_heroes_id_seq'::regclass);
 P   ALTER TABLE public.components_layouts_item_heroes ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    305    302            �           2604    17201 ,   components_layouts_item_heroes_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_item_heroes_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_item_heroes_components_id_seq'::regclass);
 [   ALTER TABLE public.components_layouts_item_heroes_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    304    303            �           2604    17202 $   components_layouts_mansory_images id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_mansory_images ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_mansory_images_id_seq'::regclass);
 S   ALTER TABLE public.components_layouts_mansory_images ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    307    306            �           2604    18102    components_layouts_partners id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_partners ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_partners_id_seq'::regclass);
 M   ALTER TABLE public.components_layouts_partners ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    386    385    386            �           2604    18110 )   components_layouts_partners_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_partners_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_partners_components_id_seq'::regclass);
 X   ALTER TABLE public.components_layouts_partners_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    388    387    388            �           2604    17205    components_layouts_quotes id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_quotes ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_quotes_id_seq'::regclass);
 K   ALTER TABLE public.components_layouts_quotes ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    309    308            �           2604    17208 #   components_layouts_simple_heroes id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_simple_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_simple_heroes_id_seq'::regclass);
 R   ALTER TABLE public.components_layouts_simple_heroes ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    311    310            �           2604    17209    components_layouts_steps id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_steps ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_steps_id_seq'::regclass);
 J   ALTER TABLE public.components_layouts_steps ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    315    312            �           2604    17210 &   components_layouts_steps_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_steps_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_steps_components_id_seq'::regclass);
 U   ALTER TABLE public.components_layouts_steps_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    314    313            �           2604    17211 $   components_layouts_support_heroes id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_support_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_support_heroes_id_seq'::regclass);
 S   ALTER TABLE public.components_layouts_support_heroes ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    319    316            �           2604    17212 /   components_layouts_support_heroes_components id    DEFAULT     �   ALTER TABLE ONLY public.components_layouts_support_heroes_components ALTER COLUMN id SET DEFAULT nextval('public.components_layouts_support_heroes_components_id_seq'::regclass);
 ^   ALTER TABLE public.components_layouts_support_heroes_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    318    317            �           2604    18373 %   components_products_content_tables id    DEFAULT     �   ALTER TABLE ONLY public.components_products_content_tables ALTER COLUMN id SET DEFAULT nextval('public.components_products_content_tables_id_seq'::regclass);
 T   ALTER TABLE public.components_products_content_tables ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    407    406    407            �           2604    17213    components_products_products id    DEFAULT     �   ALTER TABLE ONLY public.components_products_products ALTER COLUMN id SET DEFAULT nextval('public.components_products_products_id_seq'::regclass);
 N   ALTER TABLE public.components_products_products ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    321    320            �           2604    17214 $   components_settings_page_settings id    DEFAULT     �   ALTER TABLE ONLY public.components_settings_page_settings ALTER COLUMN id SET DEFAULT nextval('public.components_settings_page_settings_id_seq'::regclass);
 S   ALTER TABLE public.components_settings_page_settings ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    323    322            �           2604    17215 !   components_shared_meta_socials id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_meta_socials ALTER COLUMN id SET DEFAULT nextval('public.components_shared_meta_socials_id_seq'::regclass);
 P   ALTER TABLE public.components_shared_meta_socials ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    325    324            �           2604    17216    components_shared_seos id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);
 H   ALTER TABLE public.components_shared_seos ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    329    326            �           2604    17217 $   components_shared_seos_components id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_seos_components ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_components_id_seq'::regclass);
 S   ALTER TABLE public.components_shared_seos_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    328    327            �           2604    18281 "   components_shared_social_shares id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_social_shares ALTER COLUMN id SET DEFAULT nextval('public.components_shared_social_shares_id_seq'::regclass);
 Q   ALTER TABLE public.components_shared_social_shares ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    401    400    401            �           2604    20481    contacts id    DEFAULT     j   ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);
 :   ALTER TABLE public.contacts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    423    422    423            �           2604    17218    customers id    DEFAULT     l   ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);
 ;   ALTER TABLE public.customers ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    331    330            �           2604    17219    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    333    332            �           2604    17220 
   globals id    DEFAULT     h   ALTER TABLE ONLY public.globals ALTER COLUMN id SET DEFAULT nextval('public.globals_id_seq'::regclass);
 9   ALTER TABLE public.globals ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    338    335            �           2604    17221    globals_components id    DEFAULT     ~   ALTER TABLE ONLY public.globals_components ALTER COLUMN id SET DEFAULT nextval('public.globals_components_id_seq'::regclass);
 D   ALTER TABLE public.globals_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    337    336            �           2604    17222    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    341    340            �           2604    17223    insights id    DEFAULT     j   ALTER TABLE ONLY public.insights ALTER COLUMN id SET DEFAULT nextval('public.insights_id_seq'::regclass);
 :   ALTER TABLE public.insights ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    346    342            �           2604    17224    insights_components id    DEFAULT     �   ALTER TABLE ONLY public.insights_components ALTER COLUMN id SET DEFAULT nextval('public.insights_components_id_seq'::regclass);
 E   ALTER TABLE public.insights_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    345    344            �           2604    17225    pages id    DEFAULT     d   ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);
 7   ALTER TABLE public.pages ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    351    348            �           2604    17226    pages_components id    DEFAULT     z   ALTER TABLE ONLY public.pages_components ALTER COLUMN id SET DEFAULT nextval('public.pages_components_id_seq'::regclass);
 B   ALTER TABLE public.pages_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    350    349            �           2604    17227    platforms id    DEFAULT     l   ALTER TABLE ONLY public.platforms ALTER COLUMN id SET DEFAULT nextval('public.platforms_id_seq'::regclass);
 ;   ALTER TABLE public.platforms ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    354    353            �           2604    20418    product_instances id    DEFAULT     |   ALTER TABLE ONLY public.product_instances ALTER COLUMN id SET DEFAULT nextval('public.product_instances_id_seq'::regclass);
 C   ALTER TABLE public.product_instances ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    420    419    420            �           2604    17228    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    359    355            �           2604    17229    products_components id    DEFAULT     �   ALTER TABLE ONLY public.products_components ALTER COLUMN id SET DEFAULT nextval('public.products_components_id_seq'::regclass);
 E   ALTER TABLE public.products_components ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    358    357            �           2604    17230    services id    DEFAULT     j   ALTER TABLE ONLY public.services ALTER COLUMN id SET DEFAULT nextval('public.services_id_seq'::regclass);
 :   ALTER TABLE public.services ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    362    361            �           2604    20379    services_components id    DEFAULT     �   ALTER TABLE ONLY public.services_components ALTER COLUMN id SET DEFAULT nextval('public.services_components_id_seq'::regclass);
 E   ALTER TABLE public.services_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    417    416    417            �           2604    17231    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    364    363            �           2604    17232    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    366    365            �           2604    17233    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    368    367            �           2604    17234    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    370    369            �           2604    17235    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    372    371            �           2604    17236    testimonis id    DEFAULT     n   ALTER TABLE ONLY public.testimonis ALTER COLUMN id SET DEFAULT nextval('public.testimonis_id_seq'::regclass);
 <   ALTER TABLE public.testimonis ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    374    373            �           2604    17237    type_jobs id    DEFAULT     l   ALTER TABLE ONLY public.type_jobs ALTER COLUMN id SET DEFAULT nextval('public.type_jobs_id_seq'::regclass);
 ;   ALTER TABLE public.type_jobs ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    376    375            �           2604    17238    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    378    377            �           2604    17239    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    381    380            �           2604    17240    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          ntgweb    false    383    382            n          0    16404    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          ntgweb    false    200   5�      p          0    16412    admin_permissions_role_links 
   TABLE DATA           N   COPY public.admin_permissions_role_links (permission_id, role_id) FROM stdin;
    public          ntgweb    false    202   ��      q          0    16415    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          ntgweb    false    203   ��      s          0    16423    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          ntgweb    false    205   �       u          0    16431    admin_users_roles_links 
   TABLE DATA           C   COPY public.admin_users_roles_links (user_id, role_id) FROM stdin;
    public          ntgweb    false    207   q      v          0    16434 
   applicants 
   TABLE DATA           �   COPY public.applicants (id, first_name, last_name, email, contact, desired_salary, earliest, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          ntgweb    false    208   �      w          0    16440    applicants_career_links 
   TABLE DATA           J   COPY public.applicants_career_links (applicant_id, career_id) FROM stdin;
    public          ntgweb    false    209   �      D          0    20335    authors 
   TABLE DATA           a   COPY public.authors (id, name, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    414   �      y          0    16445    careers 
   TABLE DATA           �   COPY public.careers (id, "position", description, created_at, updated_at, published_at, created_by_id, updated_by_id, position_code, locale) FROM stdin;
    public          ntgweb    false    211         z          0    16451    careers_components 
   TABLE DATA           i   COPY public.careers_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    212          V          0    20617    careers_localizations_links 
   TABLE DATA           O   COPY public.careers_localizations_links (career_id, inv_career_id) FROM stdin;
    public          postgres    false    432   �      }          0    16462    careers_type_job_links 
   TABLE DATA           H   COPY public.careers_type_job_links (career_id, type_job_id) FROM stdin;
    public          ntgweb    false    215   �      ~          0    16465    category_insights 
   TABLE DATA           �   COPY public.category_insights (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id, popular, color) FROM stdin;
    public          ntgweb    false    216         �          0    16470    category_products 
   TABLE DATA           �   COPY public.category_products (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id, is_operating_system) FROM stdin;
    public          ntgweb    false    218   �      �          0    16475    components_column_link_columns 
   TABLE DATA           C   COPY public.components_column_link_columns (id, title) FROM stdin;
    public          ntgweb    false    220   �      �          0    16478 )   components_column_link_columns_components 
   TABLE DATA           �   COPY public.components_column_link_columns_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    221   �      �          0    16489 )   components_component_key_responsibilities 
   TABLE DATA           N   COPY public.components_component_key_responsibilities (id, title) FROM stdin;
    public          ntgweb    false    224   �      �          0    16494 ,   components_component_required_qualifications 
   TABLE DATA           Q   COPY public.components_component_required_qualifications (id, title) FROM stdin;
    public          ntgweb    false    226   �      �          0    16499 $   components_component_required_skills 
   TABLE DATA           I   COPY public.components_component_required_skills (id, title) FROM stdin;
    public          ntgweb    false    228   �      �          0    16504 #   components_elements_accordion_items 
   TABLE DATA           c   COPY public.components_elements_accordion_items (id, title, content, icon, icon_color) FROM stdin;
    public          ntgweb    false    230         �          0    16512    components_elements_buttons 
   TABLE DATA           R   COPY public.components_elements_buttons (id, text, type, class, link) FROM stdin;
    public          ntgweb    false    232   �      9          0    18310 #   components_elements_card_with_icons 
   TABLE DATA           l   COPY public.components_elements_card_with_icons (id, icon, icon_background, title, description) FROM stdin;
    public          postgres    false    403   �      ;          0    18324    components_elements_contacts 
   TABLE DATA           `   COPY public.components_elements_contacts (id, title, description, icon, icon_color) FROM stdin;
    public          postgres    false    405   �      0          0    18199 $   components_elements_content_sections 
   TABLE DATA           _   COPY public.components_elements_content_sections (id, title, content, description) FROM stdin;
    public          postgres    false    394   ^      O          0    20513    components_elements_headers 
   TABLE DATA           9   COPY public.components_elements_headers (id) FROM stdin;
    public          postgres    false    425   �      S          0    20532 &   components_elements_headers_components 
   TABLE DATA           }   COPY public.components_elements_headers_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    429   �      �          0    16520    components_elements_items 
   TABLE DATA           >   COPY public.components_elements_items (id, title) FROM stdin;
    public          ntgweb    false    234   1      �          0    16525    components_elements_links 
   TABLE DATA           Q   COPY public.components_elements_links (id, title, url, target, text) FROM stdin;
    public          ntgweb    false    236   �      �          0    16533    components_elements_logos 
   TABLE DATA           >   COPY public.components_elements_logos (id, title) FROM stdin;
    public          ntgweb    false    238         Q          0    20524    components_elements_menu_items 
   TABLE DATA           H   COPY public.components_elements_menu_items (id, title, url) FROM stdin;
    public          postgres    false    427   �      U          0    20554 )   components_elements_menu_items_components 
   TABLE DATA           �   COPY public.components_elements_menu_items_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    431   �       A          0    18399 (   components_elements_product_marketplaces 
   TABLE DATA           h   COPY public.components_elements_product_marketplaces (id, text, link, button_style, target) FROM stdin;
    public          postgres    false    411   9!      ?          0    18389 #   components_elements_product_ratings 
   TABLE DATA           O   COPY public.components_elements_product_ratings (id, name, rating) FROM stdin;
    public          postgres    false    409   �!      �          0    16538     components_elements_record_cards 
   TABLE DATA           k   COPY public.components_elements_record_cards (id, title, description, button_text, button_url) FROM stdin;
    public          ntgweb    false    240   "      .          0    18163    components_elements_records 
   TABLE DATA           J   COPY public.components_elements_records (id, title, overview) FROM stdin;
    public          postgres    false    392   '      �          0    16546    components_heros_heroes 
   TABLE DATA           F   COPY public.components_heros_heroes (id, title, overview) FROM stdin;
    public          ntgweb    false    242   �*      �          0    16552 "   components_heros_heroes_components 
   TABLE DATA           y   COPY public.components_heros_heroes_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    243   �+      �          0    16563 %   components_layouts_accordion_contents 
   TABLE DATA           T   COPY public.components_layouts_accordion_contents (id, title, overview) FROM stdin;
    public          ntgweb    false    246   ,      �          0    16566 0   components_layouts_accordion_contents_components 
   TABLE DATA           �   COPY public.components_layouts_accordion_contents_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    247   l,      �          0    16577    components_layouts_bkg_headers 
   TABLE DATA           ^   COPY public.components_layouts_bkg_headers (id, title, vertical_height, overview) FROM stdin;
    public          ntgweb    false    250   -      �          0    16583 )   components_layouts_bkg_headers_components 
   TABLE DATA           �   COPY public.components_layouts_bkg_headers_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    251   �/      �          0    16594 $   components_layouts_card_with_buttons 
   TABLE DATA           S   COPY public.components_layouts_card_with_buttons (id, title, overview) FROM stdin;
    public          ntgweb    false    254   0      �          0    16600 /   components_layouts_card_with_buttons_components 
   TABLE DATA           �   COPY public.components_layouts_card_with_buttons_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    255   N1      �          0    16611    components_layouts_cards 
   TABLE DATA           G   COPY public.components_layouts_cards (id, title, overview) FROM stdin;
    public          ntgweb    false    258   �1      �          0    16617 #   components_layouts_cards_components 
   TABLE DATA           z   COPY public.components_layouts_cards_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    259   �2      �          0    16628     components_layouts_center_heroes 
   TABLE DATA           Z   COPY public.components_layouts_center_heroes (id, title, sub_title, overview) FROM stdin;
    public          ntgweb    false    262   C3      �          0    16634 +   components_layouts_center_heroes_components 
   TABLE DATA           �   COPY public.components_layouts_center_heroes_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    263   `3      �          0    16645 "   components_layouts_component_types 
   TABLE DATA           h   COPY public.components_layouts_component_types (id, title, overview, component_type, label) FROM stdin;
    public          ntgweb    false    266   }3      ,          0    18136 -   components_layouts_component_types_components 
   TABLE DATA           �   COPY public.components_layouts_component_types_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    390   Q7      �          0    16653     components_layouts_contact_infos 
   TABLE DATA           >   COPY public.components_layouts_contact_infos (id) FROM stdin;
    public          ntgweb    false    268   �7      �          0    16656 +   components_layouts_contact_infos_components 
   TABLE DATA           �   COPY public.components_layouts_contact_infos_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    269   �7      �          0    16667    components_layouts_contacts 
   TABLE DATA           Q   COPY public.components_layouts_contacts (id, title, overview, style) FROM stdin;
    public          ntgweb    false    272   (8      �          0    16675 %   components_layouts_content_containers 
   TABLE DATA           ]   COPY public.components_layouts_content_containers (id, title, content, overview) FROM stdin;
    public          ntgweb    false    274   �8      2          0    18223     components_layouts_featured_news 
   TABLE DATA           K   COPY public.components_layouts_featured_news (id, share_title) FROM stdin;
    public          postgres    false    396   �;      5          0    18248 +   components_layouts_featured_news_components 
   TABLE DATA           �   COPY public.components_layouts_featured_news_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    399   �;      3          0    18229 .   components_layouts_featured_news_insight_links 
   TABLE DATA           f   COPY public.components_layouts_featured_news_insight_links (featured_news_id, insight_id) FROM stdin;
    public          postgres    false    397   _<      �          0    16683    components_layouts_footers 
   TABLE DATA           N   COPY public.components_layouts_footers (id, copyright, copy_text) FROM stdin;
    public          ntgweb    false    276   �<      �          0    16689 %   components_layouts_footers_components 
   TABLE DATA           |   COPY public.components_layouts_footers_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    277   �=      �          0    16700 (   components_layouts_header_with_customers 
   TABLE DATA           c   COPY public.components_layouts_header_with_customers (id, title, overview, logo_title) FROM stdin;
    public          ntgweb    false    280   �>      �          0    16706 3   components_layouts_header_with_customers_components 
   TABLE DATA           �   COPY public.components_layouts_header_with_customers_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    281   �?      �          0    16717    components_layouts_headers 
   TABLE DATA           Z   COPY public.components_layouts_headers (id, title, overview, vertical_height) FROM stdin;
    public          ntgweb    false    284   
@      �          0    16723 %   components_layouts_headers_components 
   TABLE DATA           |   COPY public.components_layouts_headers_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    285   B      �          0    16734 %   components_layouts_hero_circle_images 
   TABLE DATA           e   COPY public.components_layouts_hero_circle_images (id, title, overview, vertical_height) FROM stdin;
    public          ntgweb    false    288   kB      �          0    16740 0   components_layouts_hero_circle_images_components 
   TABLE DATA           �   COPY public.components_layouts_hero_circle_images_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    289   dC      �          0    16751 "   components_layouts_hero_highlights 
   TABLE DATA           Q   COPY public.components_layouts_hero_highlights (id, title, overview) FROM stdin;
    public          ntgweb    false    292   �C      �          0    16757 -   components_layouts_hero_highlights_components 
   TABLE DATA           �   COPY public.components_layouts_hero_highlights_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    293   oD      �          0    16768 %   components_layouts_hero_square_images 
   TABLE DATA           w   COPY public.components_layouts_hero_square_images (id, title, overview, vertical_height, background_color) FROM stdin;
    public          ntgweb    false    296   �D      �          0    16774 0   components_layouts_hero_square_images_components 
   TABLE DATA           �   COPY public.components_layouts_hero_square_images_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    297   �E      �          0    16785    components_layouts_image_heroes 
   TABLE DATA           N   COPY public.components_layouts_image_heroes (id, title, overview) FROM stdin;
    public          ntgweb    false    300   �E      �          0    16793    components_layouts_item_heroes 
   TABLE DATA           T   COPY public.components_layouts_item_heroes (id, title, overview, style) FROM stdin;
    public          ntgweb    false    302   �F      �          0    16799 )   components_layouts_item_heroes_components 
   TABLE DATA           �   COPY public.components_layouts_item_heroes_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    303   %G      �          0    16810 !   components_layouts_mansory_images 
   TABLE DATA           W   COPY public.components_layouts_mansory_images (id, title, overview, label) FROM stdin;
    public          ntgweb    false    306   �G      (          0    18099    components_layouts_partners 
   TABLE DATA           T   COPY public.components_layouts_partners (id, title, section_background) FROM stdin;
    public          postgres    false    386   uH      *          0    18107 &   components_layouts_partners_components 
   TABLE DATA           }   COPY public.components_layouts_partners_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    388   �H      �          0    16832    components_layouts_quotes 
   TABLE DATA           \   COPY public.components_layouts_quotes (id, message, background_color, footnote) FROM stdin;
    public          ntgweb    false    308   �I      �          0    16857     components_layouts_simple_heroes 
   TABLE DATA           O   COPY public.components_layouts_simple_heroes (id, title, overview) FROM stdin;
    public          ntgweb    false    310   �K      �          0    16865    components_layouts_steps 
   TABLE DATA           M   COPY public.components_layouts_steps (id, title, overview, type) FROM stdin;
    public          ntgweb    false    312   �L      �          0    16871 #   components_layouts_steps_components 
   TABLE DATA           z   COPY public.components_layouts_steps_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    313   gM      �          0    16882 !   components_layouts_support_heroes 
   TABLE DATA           P   COPY public.components_layouts_support_heroes (id, title, overview) FROM stdin;
    public          ntgweb    false    316   �M      �          0    16888 ,   components_layouts_support_heroes_components 
   TABLE DATA           �   COPY public.components_layouts_support_heroes_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    317   _N      =          0    18370 "   components_products_content_tables 
   TABLE DATA           P   COPY public.components_products_content_tables (id, title, content) FROM stdin;
    public          postgres    false    407   �N      �          0    16899    components_products_products 
   TABLE DATA           K   COPY public.components_products_products (id, title, overview) FROM stdin;
    public          ntgweb    false    320   �S      �          0    16907 !   components_settings_page_settings 
   TABLE DATA           M   COPY public.components_settings_page_settings (id, navbar_style) FROM stdin;
    public          ntgweb    false    322   �S      �          0    16912    components_shared_meta_socials 
   TABLE DATA           `   COPY public.components_shared_meta_socials (id, social_network, title, description) FROM stdin;
    public          ntgweb    false    324   �S      �          0    16920    components_shared_seos 
   TABLE DATA           �   COPY public.components_shared_seos (id, meta_title, meta_description, keywords, meta_robots, structured_data, meta_viewport, canonical_url) FROM stdin;
    public          ntgweb    false    326   >T      �          0    16926 !   components_shared_seos_components 
   TABLE DATA           x   COPY public.components_shared_seos_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    327   kV      7          0    18278    components_shared_social_shares 
   TABLE DATA           I   COPY public.components_shared_social_shares (id, url, title) FROM stdin;
    public          postgres    false    401   �V      M          0    20478    contacts 
   TABLE DATA           �   COPY public.contacts (id, fullname, email, company, topic, message, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    423   �V      �          0    16937 	   customers 
   TABLE DATA           z   COPY public.customers (id, name, website, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          ntgweb    false    330   W      �          0    16945    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          ntgweb    false    332   �W      �          0    16953    files_related_morphs 
   TABLE DATA           a   COPY public.files_related_morphs (file_id, related_id, related_type, field, "order") FROM stdin;
    public          ntgweb    false    334   >
      �          0    16959    globals 
   TABLE DATA           �   COPY public.globals (id, tagline, copyright, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          ntgweb    false    335   �$
      �          0    16965    globals_components 
   TABLE DATA           i   COPY public.globals_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    336   o%
      �          0    16976    globals_localizations_links 
   TABLE DATA           O   COPY public.globals_localizations_links (global_id, inv_global_id) FROM stdin;
    public          ntgweb    false    339   �%
      �          0    16979    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          ntgweb    false    340   �%
      �          0    16987    insights 
   TABLE DATA           �   COPY public.insights (id, title, content, created_at, updated_at, published_at, created_by_id, updated_by_id, overview, slug, excerpt, locale) FROM stdin;
    public          ntgweb    false    342   [&
      E          0    20355    insights_author_links 
   TABLE DATA           F   COPY public.insights_author_links (insight_id, author_id) FROM stdin;
    public          postgres    false    415   -
      �          0    16993    insights_category_insight_links 
   TABLE DATA           Z   COPY public.insights_category_insight_links (insight_id, category_insight_id) FROM stdin;
    public          ntgweb    false    343   ,-
      �          0    16996    insights_components 
   TABLE DATA           j   COPY public.insights_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    344   ]-
      W          0    20634    insights_localizations_links 
   TABLE DATA           R   COPY public.insights_localizations_links (insight_id, inv_insight_id) FROM stdin;
    public          postgres    false    433   �-
                0    17007    insights_related_insights_links 
   TABLE DATA           U   COPY public.insights_related_insights_links (insight_id, inv_insight_id) FROM stdin;
    public          ntgweb    false    347   �-
                0    17010    pages 
   TABLE DATA           {   COPY public.pages (id, name, slug, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          ntgweb    false    348   .
                0    17016    pages_components 
   TABLE DATA           g   COPY public.pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    349   %0
                0    17027    pages_localizations_links 
   TABLE DATA           I   COPY public.pages_localizations_links (page_id, inv_page_id) FROM stdin;
    public          ntgweb    false    352   �3
                0    17030 	   platforms 
   TABLE DATA           q   COPY public.platforms (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          ntgweb    false    353   K4
      J          0    20415    product_instances 
   TABLE DATA           k   COPY public.product_instances (id, name, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    420   �4
      	          0    17035    products 
   TABLE DATA           �   COPY public.products (id, description, start_price, featured_product, created_at, updated_at, published_at, created_by_id, updated_by_id, name, summary, slug, locale) FROM stdin;
    public          ntgweb    false    355   5
      
          0    17041     products_category_products_links 
   TABLE DATA           [   COPY public.products_category_products_links (product_id, category_product_id) FROM stdin;
    public          ntgweb    false    356   �7
                0    17044    products_components 
   TABLE DATA           j   COPY public.products_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          ntgweb    false    357   8
      B          0    18412    products_customers_links 
   TABLE DATA           K   COPY public.products_customers_links (product_id, customer_id) FROM stdin;
    public          postgres    false    412   :
      X          0    20651    products_localizations_links 
   TABLE DATA           R   COPY public.products_localizations_links (product_id, inv_product_id) FROM stdin;
    public          postgres    false    434   e:
                0    17055    products_platform_links 
   TABLE DATA           J   COPY public.products_platform_links (product_id, platform_id) FROM stdin;
    public          ntgweb    false    360   �:
      K          0    20435    products_product_instance_links 
   TABLE DATA           Z   COPY public.products_product_instance_links (product_id, product_instance_id) FROM stdin;
    public          postgres    false    421   �:
      H          0    20396    products_service_links 
   TABLE DATA           H   COPY public.products_service_links (product_id, service_id) FROM stdin;
    public          postgres    false    418   �:
                0    17058    services 
   TABLE DATA           �   COPY public.services (id, title, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
    public          ntgweb    false    361   );
      G          0    20376    services_components 
   TABLE DATA           j   COPY public.services_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    417   �>
      Y          0    20668    services_localizations_links 
   TABLE DATA           R   COPY public.services_localizations_links (service_id, inv_service_id) FROM stdin;
    public          postgres    false    435   v?
                0    17066    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          ntgweb    false    363   �?
                0    17074    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          ntgweb    false    365   �?
                0    17082    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          ntgweb    false    367   �k
                0    17090    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          ntgweb    false    369   �~
                0    17095    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          ntgweb    false    371   �~
                0    17103 
   testimonis 
   TABLE DATA           �   COPY public.testimonis (id, name, username, message, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          ntgweb    false    373   �~
                0    17111 	   type_jobs 
   TABLE DATA           q   COPY public.type_jobs (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          ntgweb    false    375   �
                0    17116    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          ntgweb    false    377   ^�
      !          0    17121    up_permissions_role_links 
   TABLE DATA           K   COPY public.up_permissions_role_links (permission_id, role_id) FROM stdin;
    public          ntgweb    false    379   ݂
      "          0    17124    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          ntgweb    false    380   @�
      $          0    17132    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          ntgweb    false    382   Ճ
      &          0    17140    up_users_role_links 
   TABLE DATA           ?   COPY public.up_users_role_links (user_id, role_id) FROM stdin;
    public          ntgweb    false    384   �
      �           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 337, true);
          public          ntgweb    false    201            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          ntgweb    false    204            �           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          ntgweb    false    206            �           0    0    applicants_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.applicants_id_seq', 1, true);
          public          ntgweb    false    210            �           0    0    authors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.authors_id_seq', 1, true);
          public          postgres    false    413            �           0    0    careers_components_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.careers_components_id_seq', 50, true);
          public          ntgweb    false    213            �           0    0    careers_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.careers_id_seq', 2, true);
          public          ntgweb    false    214            �           0    0    category_insights_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.category_insights_id_seq', 3, true);
          public          ntgweb    false    217            �           0    0    category_products_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.category_products_id_seq', 5, true);
          public          ntgweb    false    219            �           0    0 0   components_column_link_columns_components_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.components_column_link_columns_components_id_seq', 187, true);
          public          ntgweb    false    222            �           0    0 %   components_column_link_columns_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_column_link_columns_id_seq', 8, true);
          public          ntgweb    false    223            �           0    0 0   components_component_key_responsibilities_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.components_component_key_responsibilities_id_seq', 1, false);
          public          ntgweb    false    225            �           0    0 3   components_component_required_qualifications_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.components_component_required_qualifications_id_seq', 1, false);
          public          ntgweb    false    227            �           0    0 +   components_component_required_skills_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.components_component_required_skills_id_seq', 1, true);
          public          ntgweb    false    229            �           0    0 *   components_elements_accordion_items_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.components_elements_accordion_items_id_seq', 14, true);
          public          ntgweb    false    231            �           0    0 "   components_elements_buttons_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.components_elements_buttons_id_seq', 28, true);
          public          ntgweb    false    233            �           0    0 *   components_elements_card_with_icons_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.components_elements_card_with_icons_id_seq', 6, true);
          public          postgres    false    402            �           0    0 #   components_elements_contacts_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.components_elements_contacts_id_seq', 6, true);
          public          postgres    false    404            �           0    0 +   components_elements_content_sections_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.components_elements_content_sections_id_seq', 8, true);
          public          postgres    false    393            �           0    0 -   components_elements_headers_components_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.components_elements_headers_components_id_seq', 60, true);
          public          postgres    false    428            �           0    0 "   components_elements_headers_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.components_elements_headers_id_seq', 2, true);
          public          postgres    false    424            �           0    0     components_elements_items_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.components_elements_items_id_seq', 12, true);
          public          ntgweb    false    235            �           0    0     components_elements_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.components_elements_links_id_seq', 65, true);
          public          ntgweb    false    237            �           0    0     components_elements_logos_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.components_elements_logos_id_seq', 48, true);
          public          ntgweb    false    239            �           0    0 0   components_elements_menu_items_components_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.components_elements_menu_items_components_id_seq', 62, true);
          public          postgres    false    430            �           0    0 %   components_elements_menu_items_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_elements_menu_items_id_seq', 18, true);
          public          postgres    false    426            �           0    0 /   components_elements_product_marketplaces_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.components_elements_product_marketplaces_id_seq', 12, true);
          public          postgres    false    410            �           0    0 *   components_elements_product_ratings_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.components_elements_product_ratings_id_seq', 12, true);
          public          postgres    false    408            �           0    0 '   components_elements_record_cards_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.components_elements_record_cards_id_seq', 26, true);
          public          ntgweb    false    241            �           0    0 "   components_elements_records_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.components_elements_records_id_seq', 25, true);
          public          postgres    false    391            �           0    0 )   components_heros_heroes_components_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.components_heros_heroes_components_id_seq', 1, false);
          public          ntgweb    false    244            �           0    0    components_heros_heroes_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_heros_heroes_id_seq', 2, true);
          public          ntgweb    false    245            �           0    0 7   components_layouts_accordion_contents_components_id_seq    SEQUENCE SET     f   SELECT pg_catalog.setval('public.components_layouts_accordion_contents_components_id_seq', 29, true);
          public          ntgweb    false    248            �           0    0 ,   components_layouts_accordion_contents_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.components_layouts_accordion_contents_id_seq', 2, true);
          public          ntgweb    false    249            �           0    0 0   components_layouts_bkg_headers_components_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.components_layouts_bkg_headers_components_id_seq', 56, true);
          public          ntgweb    false    252            �           0    0 %   components_layouts_bkg_headers_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_layouts_bkg_headers_id_seq', 21, true);
          public          ntgweb    false    253            �           0    0 6   components_layouts_card_with_buttons_components_id_seq    SEQUENCE SET     f   SELECT pg_catalog.setval('public.components_layouts_card_with_buttons_components_id_seq', 152, true);
          public          ntgweb    false    256            �           0    0 +   components_layouts_card_with_buttons_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.components_layouts_card_with_buttons_id_seq', 2, true);
          public          ntgweb    false    257            �           0    0 *   components_layouts_cards_components_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.components_layouts_cards_components_id_seq', 105, true);
          public          ntgweb    false    260            �           0    0    components_layouts_cards_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.components_layouts_cards_id_seq', 2, true);
          public          ntgweb    false    261            �           0    0 2   components_layouts_center_heroes_components_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.components_layouts_center_heroes_components_id_seq', 1, false);
          public          ntgweb    false    264            �           0    0 '   components_layouts_center_heroes_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.components_layouts_center_heroes_id_seq', 1, false);
          public          ntgweb    false    265            �           0    0 4   components_layouts_component_types_components_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.components_layouts_component_types_components_id_seq', 32, true);
          public          postgres    false    389            �           0    0 )   components_layouts_component_types_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.components_layouts_component_types_id_seq', 26, true);
          public          ntgweb    false    267            �           0    0 2   components_layouts_contact_infos_components_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.components_layouts_contact_infos_components_id_seq', 28, true);
          public          ntgweb    false    270            �           0    0 '   components_layouts_contact_infos_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.components_layouts_contact_infos_id_seq', 2, true);
          public          ntgweb    false    271            �           0    0 "   components_layouts_contacts_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.components_layouts_contacts_id_seq', 2, true);
          public          ntgweb    false    273            �           0    0 ,   components_layouts_content_containers_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.components_layouts_content_containers_id_seq', 2, true);
          public          ntgweb    false    275            �           0    0 2   components_layouts_featured_news_components_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('public.components_layouts_featured_news_components_id_seq', 20, true);
          public          postgres    false    398            �           0    0 '   components_layouts_featured_news_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.components_layouts_featured_news_id_seq', 2, true);
          public          postgres    false    395            �           0    0 ,   components_layouts_footers_components_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.components_layouts_footers_components_id_seq', 147, true);
          public          ntgweb    false    278            �           0    0 !   components_layouts_footers_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.components_layouts_footers_id_seq', 2, true);
          public          ntgweb    false    279            �           0    0 :   components_layouts_header_with_customers_components_id_seq    SEQUENCE SET     j   SELECT pg_catalog.setval('public.components_layouts_header_with_customers_components_id_seq', 212, true);
          public          ntgweb    false    282                        0    0 /   components_layouts_header_with_customers_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.components_layouts_header_with_customers_id_seq', 2, true);
          public          ntgweb    false    283                       0    0 ,   components_layouts_headers_components_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.components_layouts_headers_components_id_seq', 61, true);
          public          ntgweb    false    286                       0    0 !   components_layouts_headers_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.components_layouts_headers_id_seq', 8, true);
          public          ntgweb    false    287                       0    0 7   components_layouts_hero_circle_images_components_id_seq    SEQUENCE SET     f   SELECT pg_catalog.setval('public.components_layouts_hero_circle_images_components_id_seq', 66, true);
          public          ntgweb    false    290                       0    0 ,   components_layouts_hero_circle_images_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.components_layouts_hero_circle_images_id_seq', 2, true);
          public          ntgweb    false    291                       0    0 4   components_layouts_hero_highlights_components_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.components_layouts_hero_highlights_components_id_seq', 21, true);
          public          ntgweb    false    294                       0    0 )   components_layouts_hero_highlights_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.components_layouts_hero_highlights_id_seq', 2, true);
          public          ntgweb    false    295                       0    0 7   components_layouts_hero_square_images_components_id_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('public.components_layouts_hero_square_images_components_id_seq', 5, true);
          public          ntgweb    false    298                       0    0 ,   components_layouts_hero_square_images_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.components_layouts_hero_square_images_id_seq', 2, true);
          public          ntgweb    false    299            	           0    0 &   components_layouts_image_heroes_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_layouts_image_heroes_id_seq', 2, true);
          public          ntgweb    false    301            
           0    0 0   components_layouts_item_heroes_components_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.components_layouts_item_heroes_components_id_seq', 105, true);
          public          ntgweb    false    304                       0    0 %   components_layouts_item_heroes_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_layouts_item_heroes_id_seq', 2, true);
          public          ntgweb    false    305                       0    0 (   components_layouts_mansory_images_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.components_layouts_mansory_images_id_seq', 2, true);
          public          ntgweb    false    307                       0    0 -   components_layouts_partners_components_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.components_layouts_partners_components_id_seq', 270, true);
          public          postgres    false    387                       0    0 "   components_layouts_partners_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.components_layouts_partners_id_seq', 6, true);
          public          postgres    false    385                       0    0     components_layouts_quotes_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.components_layouts_quotes_id_seq', 12, true);
          public          ntgweb    false    309                       0    0 '   components_layouts_simple_heroes_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.components_layouts_simple_heroes_id_seq', 2, true);
          public          ntgweb    false    311                       0    0 *   components_layouts_steps_components_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.components_layouts_steps_components_id_seq', 52, true);
          public          ntgweb    false    314                       0    0    components_layouts_steps_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.components_layouts_steps_id_seq', 2, true);
          public          ntgweb    false    315                       0    0 3   components_layouts_support_heroes_components_id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public.components_layouts_support_heroes_components_id_seq', 68, true);
          public          ntgweb    false    318                       0    0 (   components_layouts_support_heroes_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.components_layouts_support_heroes_id_seq', 2, true);
          public          ntgweb    false    319                       0    0 )   components_products_content_tables_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.components_products_content_tables_id_seq', 18, true);
          public          postgres    false    406                       0    0 #   components_products_products_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.components_products_products_id_seq', 1, false);
          public          ntgweb    false    321                       0    0 (   components_settings_page_settings_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.components_settings_page_settings_id_seq', 16, true);
          public          ntgweb    false    323                       0    0 %   components_shared_meta_socials_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.components_shared_meta_socials_id_seq', 3, true);
          public          ntgweb    false    325                       0    0 (   components_shared_seos_components_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.components_shared_seos_components_id_seq', 56, true);
          public          ntgweb    false    328                       0    0    components_shared_seos_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 12, true);
          public          ntgweb    false    329                       0    0 &   components_shared_social_shares_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.components_shared_social_shares_id_seq', 6, true);
          public          postgres    false    400                       0    0    contacts_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.contacts_id_seq', 16, true);
          public          postgres    false    422                       0    0    customers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customers_id_seq', 4, true);
          public          ntgweb    false    331                       0    0    files_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.files_id_seq', 102, true);
          public          ntgweb    false    333                       0    0    globals_components_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.globals_components_id_seq', 27, true);
          public          ntgweb    false    337                        0    0    globals_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.globals_id_seq', 2, true);
          public          ntgweb    false    338            !           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 2, true);
          public          ntgweb    false    341            "           0    0    insights_components_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.insights_components_id_seq', 24, true);
          public          ntgweb    false    345            #           0    0    insights_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.insights_id_seq', 6, true);
          public          ntgweb    false    346            $           0    0    pages_components_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.pages_components_id_seq', 832, true);
          public          ntgweb    false    350            %           0    0    pages_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.pages_id_seq', 19, true);
          public          ntgweb    false    351            &           0    0    platforms_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.platforms_id_seq', 2, true);
          public          ntgweb    false    354            '           0    0    product_instances_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.product_instances_id_seq', 2, true);
          public          postgres    false    419            (           0    0    products_components_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.products_components_id_seq', 270, true);
          public          ntgweb    false    358            )           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 6, true);
          public          ntgweb    false    359            *           0    0    services_components_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.services_components_id_seq', 27, true);
          public          postgres    false    416            +           0    0    services_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.services_id_seq', 18, true);
          public          ntgweb    false    362            ,           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          ntgweb    false    364            -           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 93, true);
          public          ntgweb    false    366            .           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 74, true);
          public          ntgweb    false    368            /           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          ntgweb    false    370            0           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          ntgweb    false    372            1           0    0    testimonis_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.testimonis_id_seq', 3, true);
          public          ntgweb    false    374            2           0    0    type_jobs_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.type_jobs_id_seq', 1, true);
          public          ntgweb    false    376            3           0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 40, true);
          public          ntgweb    false    378            4           0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          ntgweb    false    381            5           0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public          ntgweb    false    383            �           2606    17245 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            ntgweb    false    200            �           2606    17247    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            ntgweb    false    203            �           2606    17249    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            ntgweb    false    205            �           2606    17251    applicants applicants_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.applicants
    ADD CONSTRAINT applicants_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.applicants DROP CONSTRAINT applicants_pkey;
       public            ntgweb    false    208            G           2606    20340    authors authors_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_pkey;
       public            postgres    false    414                        2606    17253 *   careers_components careers_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.careers_components
    ADD CONSTRAINT careers_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.careers_components DROP CONSTRAINT careers_components_pkey;
       public            ntgweb    false    212            �           2606    17255    careers careers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.careers
    ADD CONSTRAINT careers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.careers DROP CONSTRAINT careers_pkey;
       public            ntgweb    false    211            �           2606    18216 $   careers careers_position_code_unique 
   CONSTRAINT     h   ALTER TABLE ONLY public.careers
    ADD CONSTRAINT careers_position_code_unique UNIQUE (position_code);
 N   ALTER TABLE ONLY public.careers DROP CONSTRAINT careers_position_code_unique;
       public            ntgweb    false    211                       2606    17257 (   category_insights category_insights_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.category_insights
    ADD CONSTRAINT category_insights_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.category_insights DROP CONSTRAINT category_insights_pkey;
       public            ntgweb    false    216                       2606    17259 (   category_products category_products_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.category_products
    ADD CONSTRAINT category_products_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.category_products DROP CONSTRAINT category_products_pkey;
       public            ntgweb    false    218                       2606    17261 X   components_column_link_columns_components components_column_link_columns_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_column_link_columns_components
    ADD CONSTRAINT components_column_link_columns_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_column_link_columns_components DROP CONSTRAINT components_column_link_columns_components_pkey;
       public            ntgweb    false    221                       2606    17263 B   components_column_link_columns components_column_link_columns_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_column_link_columns
    ADD CONSTRAINT components_column_link_columns_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_column_link_columns DROP CONSTRAINT components_column_link_columns_pkey;
       public            ntgweb    false    220                       2606    17265 X   components_component_key_responsibilities components_component_key_responsibilities_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_component_key_responsibilities
    ADD CONSTRAINT components_component_key_responsibilities_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_component_key_responsibilities DROP CONSTRAINT components_component_key_responsibilities_pkey;
       public            ntgweb    false    224                       2606    17267 ^   components_component_required_qualifications components_component_required_qualifications_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_component_required_qualifications
    ADD CONSTRAINT components_component_required_qualifications_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_component_required_qualifications DROP CONSTRAINT components_component_required_qualifications_pkey;
       public            ntgweb    false    226                       2606    17269 N   components_component_required_skills components_component_required_skills_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_component_required_skills
    ADD CONSTRAINT components_component_required_skills_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.components_component_required_skills DROP CONSTRAINT components_component_required_skills_pkey;
       public            ntgweb    false    228                       2606    17271 L   components_elements_accordion_items components_elements_accordion_items_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_elements_accordion_items
    ADD CONSTRAINT components_elements_accordion_items_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.components_elements_accordion_items DROP CONSTRAINT components_elements_accordion_items_pkey;
       public            ntgweb    false    230                       2606    17273 <   components_elements_buttons components_elements_buttons_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.components_elements_buttons
    ADD CONSTRAINT components_elements_buttons_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.components_elements_buttons DROP CONSTRAINT components_elements_buttons_pkey;
       public            ntgweb    false    232            :           2606    18318 L   components_elements_card_with_icons components_elements_card_with_icons_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_elements_card_with_icons
    ADD CONSTRAINT components_elements_card_with_icons_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.components_elements_card_with_icons DROP CONSTRAINT components_elements_card_with_icons_pkey;
       public            postgres    false    403            <           2606    18332 >   components_elements_contacts components_elements_contacts_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.components_elements_contacts
    ADD CONSTRAINT components_elements_contacts_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.components_elements_contacts DROP CONSTRAINT components_elements_contacts_pkey;
       public            postgres    false    405            -           2606    18207 N   components_elements_content_sections components_elements_content_sections_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_elements_content_sections
    ADD CONSTRAINT components_elements_content_sections_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.components_elements_content_sections DROP CONSTRAINT components_elements_content_sections_pkey;
       public            postgres    false    394            b           2606    20541 R   components_elements_headers_components components_elements_headers_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_elements_headers_components
    ADD CONSTRAINT components_elements_headers_components_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.components_elements_headers_components DROP CONSTRAINT components_elements_headers_components_pkey;
       public            postgres    false    429            ]           2606    20521 <   components_elements_headers components_elements_headers_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.components_elements_headers
    ADD CONSTRAINT components_elements_headers_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.components_elements_headers DROP CONSTRAINT components_elements_headers_pkey;
       public            postgres    false    425                       2606    17275 8   components_elements_items components_elements_items_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.components_elements_items
    ADD CONSTRAINT components_elements_items_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.components_elements_items DROP CONSTRAINT components_elements_items_pkey;
       public            ntgweb    false    234            !           2606    17277 8   components_elements_links components_elements_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.components_elements_links
    ADD CONSTRAINT components_elements_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.components_elements_links DROP CONSTRAINT components_elements_links_pkey;
       public            ntgweb    false    236            #           2606    17279 8   components_elements_logos components_elements_logos_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.components_elements_logos
    ADD CONSTRAINT components_elements_logos_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.components_elements_logos DROP CONSTRAINT components_elements_logos_pkey;
       public            ntgweb    false    238            g           2606    20563 X   components_elements_menu_items_components components_elements_menu_items_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_elements_menu_items_components
    ADD CONSTRAINT components_elements_menu_items_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_elements_menu_items_components DROP CONSTRAINT components_elements_menu_items_components_pkey;
       public            postgres    false    431            _           2606    20529 B   components_elements_menu_items components_elements_menu_items_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_elements_menu_items
    ADD CONSTRAINT components_elements_menu_items_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_elements_menu_items DROP CONSTRAINT components_elements_menu_items_pkey;
       public            postgres    false    427            B           2606    18407 V   components_elements_product_marketplaces components_elements_product_marketplaces_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_elements_product_marketplaces
    ADD CONSTRAINT components_elements_product_marketplaces_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_elements_product_marketplaces DROP CONSTRAINT components_elements_product_marketplaces_pkey;
       public            postgres    false    411            @           2606    18394 L   components_elements_product_ratings components_elements_product_ratings_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_elements_product_ratings
    ADD CONSTRAINT components_elements_product_ratings_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.components_elements_product_ratings DROP CONSTRAINT components_elements_product_ratings_pkey;
       public            postgres    false    409            %           2606    17281 F   components_elements_record_cards components_elements_record_cards_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_elements_record_cards
    ADD CONSTRAINT components_elements_record_cards_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.components_elements_record_cards DROP CONSTRAINT components_elements_record_cards_pkey;
       public            ntgweb    false    240            +           2606    18171 <   components_elements_records components_elements_records_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.components_elements_records
    ADD CONSTRAINT components_elements_records_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.components_elements_records DROP CONSTRAINT components_elements_records_pkey;
       public            postgres    false    392            *           2606    17283 J   components_heros_heroes_components components_heros_heroes_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_heros_heroes_components
    ADD CONSTRAINT components_heros_heroes_components_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.components_heros_heroes_components DROP CONSTRAINT components_heros_heroes_components_pkey;
       public            ntgweb    false    243            '           2606    17285 4   components_heros_heroes components_heros_heroes_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.components_heros_heroes
    ADD CONSTRAINT components_heros_heroes_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.components_heros_heroes DROP CONSTRAINT components_heros_heroes_pkey;
       public            ntgweb    false    242            1           2606    17287 f   components_layouts_accordion_contents_components components_layouts_accordion_contents_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_accordion_contents_components
    ADD CONSTRAINT components_layouts_accordion_contents_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_layouts_accordion_contents_components DROP CONSTRAINT components_layouts_accordion_contents_components_pkey;
       public            ntgweb    false    247            .           2606    17289 P   components_layouts_accordion_contents components_layouts_accordion_contents_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_accordion_contents
    ADD CONSTRAINT components_layouts_accordion_contents_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.components_layouts_accordion_contents DROP CONSTRAINT components_layouts_accordion_contents_pkey;
       public            ntgweb    false    246            8           2606    17291 X   components_layouts_bkg_headers_components components_layouts_bkg_headers_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_bkg_headers_components
    ADD CONSTRAINT components_layouts_bkg_headers_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_layouts_bkg_headers_components DROP CONSTRAINT components_layouts_bkg_headers_components_pkey;
       public            ntgweb    false    251            5           2606    17293 B   components_layouts_bkg_headers components_layouts_bkg_headers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_bkg_headers
    ADD CONSTRAINT components_layouts_bkg_headers_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_layouts_bkg_headers DROP CONSTRAINT components_layouts_bkg_headers_pkey;
       public            ntgweb    false    250            ?           2606    17295 d   components_layouts_card_with_buttons_components components_layouts_card_with_buttons_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_card_with_buttons_components
    ADD CONSTRAINT components_layouts_card_with_buttons_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_layouts_card_with_buttons_components DROP CONSTRAINT components_layouts_card_with_buttons_components_pkey;
       public            ntgweb    false    255            <           2606    17297 N   components_layouts_card_with_buttons components_layouts_card_with_buttons_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_card_with_buttons
    ADD CONSTRAINT components_layouts_card_with_buttons_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.components_layouts_card_with_buttons DROP CONSTRAINT components_layouts_card_with_buttons_pkey;
       public            ntgweb    false    254            F           2606    17299 L   components_layouts_cards_components components_layouts_cards_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_cards_components
    ADD CONSTRAINT components_layouts_cards_components_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.components_layouts_cards_components DROP CONSTRAINT components_layouts_cards_components_pkey;
       public            ntgweb    false    259            C           2606    17301 6   components_layouts_cards components_layouts_cards_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.components_layouts_cards
    ADD CONSTRAINT components_layouts_cards_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.components_layouts_cards DROP CONSTRAINT components_layouts_cards_pkey;
       public            ntgweb    false    258            M           2606    17303 \   components_layouts_center_heroes_components components_layouts_center_heroes_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_center_heroes_components
    ADD CONSTRAINT components_layouts_center_heroes_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_layouts_center_heroes_components DROP CONSTRAINT components_layouts_center_heroes_components_pkey;
       public            ntgweb    false    263            J           2606    17305 F   components_layouts_center_heroes components_layouts_center_heroes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_center_heroes
    ADD CONSTRAINT components_layouts_center_heroes_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.components_layouts_center_heroes DROP CONSTRAINT components_layouts_center_heroes_pkey;
       public            ntgweb    false    262            '           2606    18145 `   components_layouts_component_types_components components_layouts_component_types_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_component_types_components
    ADD CONSTRAINT components_layouts_component_types_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_layouts_component_types_components DROP CONSTRAINT components_layouts_component_types_components_pkey;
       public            postgres    false    390            Q           2606    17307 J   components_layouts_component_types components_layouts_component_types_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_component_types
    ADD CONSTRAINT components_layouts_component_types_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.components_layouts_component_types DROP CONSTRAINT components_layouts_component_types_pkey;
       public            ntgweb    false    266            V           2606    17309 \   components_layouts_contact_infos_components components_layouts_contact_infos_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_contact_infos_components
    ADD CONSTRAINT components_layouts_contact_infos_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_layouts_contact_infos_components DROP CONSTRAINT components_layouts_contact_infos_components_pkey;
       public            ntgweb    false    269            S           2606    17311 F   components_layouts_contact_infos components_layouts_contact_infos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_contact_infos
    ADD CONSTRAINT components_layouts_contact_infos_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.components_layouts_contact_infos DROP CONSTRAINT components_layouts_contact_infos_pkey;
       public            ntgweb    false    268            Z           2606    17313 <   components_layouts_contacts components_layouts_contacts_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.components_layouts_contacts
    ADD CONSTRAINT components_layouts_contacts_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.components_layouts_contacts DROP CONSTRAINT components_layouts_contacts_pkey;
       public            ntgweb    false    272            \           2606    17315 P   components_layouts_content_containers components_layouts_content_containers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_content_containers
    ADD CONSTRAINT components_layouts_content_containers_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.components_layouts_content_containers DROP CONSTRAINT components_layouts_content_containers_pkey;
       public            ntgweb    false    274            4           2606    18257 \   components_layouts_featured_news_components components_layouts_featured_news_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_featured_news_components
    ADD CONSTRAINT components_layouts_featured_news_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_layouts_featured_news_components DROP CONSTRAINT components_layouts_featured_news_components_pkey;
       public            postgres    false    399            /           2606    18228 F   components_layouts_featured_news components_layouts_featured_news_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_featured_news
    ADD CONSTRAINT components_layouts_featured_news_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.components_layouts_featured_news DROP CONSTRAINT components_layouts_featured_news_pkey;
       public            postgres    false    396            a           2606    17317 P   components_layouts_footers_components components_layouts_footers_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_footers_components
    ADD CONSTRAINT components_layouts_footers_components_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.components_layouts_footers_components DROP CONSTRAINT components_layouts_footers_components_pkey;
       public            ntgweb    false    277            ^           2606    17319 :   components_layouts_footers components_layouts_footers_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.components_layouts_footers
    ADD CONSTRAINT components_layouts_footers_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.components_layouts_footers DROP CONSTRAINT components_layouts_footers_pkey;
       public            ntgweb    false    276            h           2606    17321 l   components_layouts_header_with_customers_components components_layouts_header_with_customers_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_header_with_customers_components
    ADD CONSTRAINT components_layouts_header_with_customers_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_layouts_header_with_customers_components DROP CONSTRAINT components_layouts_header_with_customers_components_pkey;
       public            ntgweb    false    281            e           2606    17323 V   components_layouts_header_with_customers components_layouts_header_with_customers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_header_with_customers
    ADD CONSTRAINT components_layouts_header_with_customers_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_layouts_header_with_customers DROP CONSTRAINT components_layouts_header_with_customers_pkey;
       public            ntgweb    false    280            o           2606    17325 P   components_layouts_headers_components components_layouts_headers_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_headers_components
    ADD CONSTRAINT components_layouts_headers_components_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.components_layouts_headers_components DROP CONSTRAINT components_layouts_headers_components_pkey;
       public            ntgweb    false    285            l           2606    17327 :   components_layouts_headers components_layouts_headers_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.components_layouts_headers
    ADD CONSTRAINT components_layouts_headers_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.components_layouts_headers DROP CONSTRAINT components_layouts_headers_pkey;
       public            ntgweb    false    284            v           2606    17329 f   components_layouts_hero_circle_images_components components_layouts_hero_circle_images_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_hero_circle_images_components
    ADD CONSTRAINT components_layouts_hero_circle_images_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_layouts_hero_circle_images_components DROP CONSTRAINT components_layouts_hero_circle_images_components_pkey;
       public            ntgweb    false    289            s           2606    17331 P   components_layouts_hero_circle_images components_layouts_hero_circle_images_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_hero_circle_images
    ADD CONSTRAINT components_layouts_hero_circle_images_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.components_layouts_hero_circle_images DROP CONSTRAINT components_layouts_hero_circle_images_pkey;
       public            ntgweb    false    288            }           2606    17333 `   components_layouts_hero_highlights_components components_layouts_hero_highlights_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_hero_highlights_components
    ADD CONSTRAINT components_layouts_hero_highlights_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_layouts_hero_highlights_components DROP CONSTRAINT components_layouts_hero_highlights_components_pkey;
       public            ntgweb    false    293            z           2606    17335 J   components_layouts_hero_highlights components_layouts_hero_highlights_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_hero_highlights
    ADD CONSTRAINT components_layouts_hero_highlights_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.components_layouts_hero_highlights DROP CONSTRAINT components_layouts_hero_highlights_pkey;
       public            ntgweb    false    292            �           2606    17337 f   components_layouts_hero_square_images_components components_layouts_hero_square_images_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_hero_square_images_components
    ADD CONSTRAINT components_layouts_hero_square_images_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_layouts_hero_square_images_components DROP CONSTRAINT components_layouts_hero_square_images_components_pkey;
       public            ntgweb    false    297            �           2606    17339 P   components_layouts_hero_square_images components_layouts_hero_square_images_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_hero_square_images
    ADD CONSTRAINT components_layouts_hero_square_images_pkey PRIMARY KEY (id);
 z   ALTER TABLE ONLY public.components_layouts_hero_square_images DROP CONSTRAINT components_layouts_hero_square_images_pkey;
       public            ntgweb    false    296            �           2606    17341 D   components_layouts_image_heroes components_layouts_image_heroes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_image_heroes
    ADD CONSTRAINT components_layouts_image_heroes_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.components_layouts_image_heroes DROP CONSTRAINT components_layouts_image_heroes_pkey;
       public            ntgweb    false    300            �           2606    17343 X   components_layouts_item_heroes_components components_layouts_item_heroes_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_item_heroes_components
    ADD CONSTRAINT components_layouts_item_heroes_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_layouts_item_heroes_components DROP CONSTRAINT components_layouts_item_heroes_components_pkey;
       public            ntgweb    false    303            �           2606    17345 B   components_layouts_item_heroes components_layouts_item_heroes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_item_heroes
    ADD CONSTRAINT components_layouts_item_heroes_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_layouts_item_heroes DROP CONSTRAINT components_layouts_item_heroes_pkey;
       public            ntgweb    false    302            �           2606    17347 H   components_layouts_mansory_images components_layouts_mansory_images_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_mansory_images
    ADD CONSTRAINT components_layouts_mansory_images_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.components_layouts_mansory_images DROP CONSTRAINT components_layouts_mansory_images_pkey;
       public            ntgweb    false    306            "           2606    18116 R   components_layouts_partners_components components_layouts_partners_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_partners_components
    ADD CONSTRAINT components_layouts_partners_components_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.components_layouts_partners_components DROP CONSTRAINT components_layouts_partners_components_pkey;
       public            postgres    false    388                       2606    18104 <   components_layouts_partners components_layouts_partners_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.components_layouts_partners
    ADD CONSTRAINT components_layouts_partners_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.components_layouts_partners DROP CONSTRAINT components_layouts_partners_pkey;
       public            postgres    false    386            �           2606    17353 8   components_layouts_quotes components_layouts_quotes_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.components_layouts_quotes
    ADD CONSTRAINT components_layouts_quotes_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.components_layouts_quotes DROP CONSTRAINT components_layouts_quotes_pkey;
       public            ntgweb    false    308            �           2606    17359 F   components_layouts_simple_heroes components_layouts_simple_heroes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_simple_heroes
    ADD CONSTRAINT components_layouts_simple_heroes_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.components_layouts_simple_heroes DROP CONSTRAINT components_layouts_simple_heroes_pkey;
       public            ntgweb    false    310            �           2606    17361 L   components_layouts_steps_components components_layouts_steps_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_steps_components
    ADD CONSTRAINT components_layouts_steps_components_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.components_layouts_steps_components DROP CONSTRAINT components_layouts_steps_components_pkey;
       public            ntgweb    false    313            �           2606    17363 6   components_layouts_steps components_layouts_steps_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.components_layouts_steps
    ADD CONSTRAINT components_layouts_steps_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.components_layouts_steps DROP CONSTRAINT components_layouts_steps_pkey;
       public            ntgweb    false    312            �           2606    17365 ^   components_layouts_support_heroes_components components_layouts_support_heroes_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_support_heroes_components
    ADD CONSTRAINT components_layouts_support_heroes_components_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_layouts_support_heroes_components DROP CONSTRAINT components_layouts_support_heroes_components_pkey;
       public            ntgweb    false    317            �           2606    17367 H   components_layouts_support_heroes components_layouts_support_heroes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_support_heroes
    ADD CONSTRAINT components_layouts_support_heroes_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.components_layouts_support_heroes DROP CONSTRAINT components_layouts_support_heroes_pkey;
       public            ntgweb    false    316            >           2606    18378 J   components_products_content_tables components_products_content_tables_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_products_content_tables
    ADD CONSTRAINT components_products_content_tables_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.components_products_content_tables DROP CONSTRAINT components_products_content_tables_pkey;
       public            postgres    false    407            �           2606    17369 >   components_products_products components_products_products_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.components_products_products
    ADD CONSTRAINT components_products_products_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.components_products_products DROP CONSTRAINT components_products_products_pkey;
       public            ntgweb    false    320            �           2606    17371 H   components_settings_page_settings components_settings_page_settings_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_settings_page_settings
    ADD CONSTRAINT components_settings_page_settings_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.components_settings_page_settings DROP CONSTRAINT components_settings_page_settings_pkey;
       public            ntgweb    false    322            �           2606    17373 B   components_shared_meta_socials components_shared_meta_socials_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_shared_meta_socials
    ADD CONSTRAINT components_shared_meta_socials_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.components_shared_meta_socials DROP CONSTRAINT components_shared_meta_socials_pkey;
       public            ntgweb    false    324            �           2606    17375 H   components_shared_seos_components components_shared_seos_components_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_shared_seos_components
    ADD CONSTRAINT components_shared_seos_components_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.components_shared_seos_components DROP CONSTRAINT components_shared_seos_components_pkey;
       public            ntgweb    false    327            �           2606    17377 2   components_shared_seos components_shared_seos_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.components_shared_seos DROP CONSTRAINT components_shared_seos_pkey;
       public            ntgweb    false    326            8           2606    18286 D   components_shared_social_shares components_shared_social_shares_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_shared_social_shares
    ADD CONSTRAINT components_shared_social_shares_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.components_shared_social_shares DROP CONSTRAINT components_shared_social_shares_pkey;
       public            postgres    false    401            Z           2606    20486    contacts contacts_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_pkey;
       public            postgres    false    423            �           2606    17379    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            ntgweb    false    330            �           2606    17381    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            ntgweb    false    332            �           2606    17383 *   globals_components globals_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.globals_components DROP CONSTRAINT globals_components_pkey;
       public            ntgweb    false    336            �           2606    17385    globals globals_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_pkey;
       public            ntgweb    false    335            �           2606    17387    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            ntgweb    false    340            �           2606    17389 ,   insights_components insights_components_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.insights_components
    ADD CONSTRAINT insights_components_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.insights_components DROP CONSTRAINT insights_components_pkey;
       public            ntgweb    false    344            �           2606    17391    insights insights_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.insights
    ADD CONSTRAINT insights_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.insights DROP CONSTRAINT insights_pkey;
       public            ntgweb    false    342            �           2606    17393    insights insights_slug_unique 
   CONSTRAINT     X   ALTER TABLE ONLY public.insights
    ADD CONSTRAINT insights_slug_unique UNIQUE (slug);
 G   ALTER TABLE ONLY public.insights DROP CONSTRAINT insights_slug_unique;
       public            ntgweb    false    342            �           2606    17395 &   pages_components pages_components_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_components_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.pages_components DROP CONSTRAINT pages_components_pkey;
       public            ntgweb    false    349            �           2606    17397    pages pages_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.pages DROP CONSTRAINT pages_pkey;
       public            ntgweb    false    348            �           2606    17401    platforms platforms_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT platforms_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.platforms DROP CONSTRAINT platforms_pkey;
       public            ntgweb    false    353            T           2606    20420 (   product_instances product_instances_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.product_instances
    ADD CONSTRAINT product_instances_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.product_instances DROP CONSTRAINT product_instances_pkey;
       public            postgres    false    420            �           2606    17403 ,   products_components products_components_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.products_components
    ADD CONSTRAINT products_components_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.products_components DROP CONSTRAINT products_components_pkey;
       public            ntgweb    false    357            �           2606    17405    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            ntgweb    false    355            �           2606    17407    products products_slug_unique 
   CONSTRAINT     X   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_slug_unique UNIQUE (slug);
 G   ALTER TABLE ONLY public.products DROP CONSTRAINT products_slug_unique;
       public            ntgweb    false    355            M           2606    20385 ,   services_components services_components_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.services_components
    ADD CONSTRAINT services_components_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.services_components DROP CONSTRAINT services_components_pkey;
       public            postgres    false    417            �           2606    17409    services services_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.services DROP CONSTRAINT services_pkey;
       public            ntgweb    false    361            �           2606    17411 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            ntgweb    false    363            �           2606    17413 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            ntgweb    false    365                       2606    17415 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            ntgweb    false    367                       2606    17417 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            ntgweb    false    369                       2606    17419 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            ntgweb    false    371                       2606    17421    testimonis testimonis_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.testimonis
    ADD CONSTRAINT testimonis_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.testimonis DROP CONSTRAINT testimonis_pkey;
       public            ntgweb    false    373                       2606    17423    type_jobs type_jobs_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.type_jobs
    ADD CONSTRAINT type_jobs_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.type_jobs DROP CONSTRAINT type_jobs_pkey;
       public            ntgweb    false    375                       2606    17425 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            ntgweb    false    377                       2606    17427    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            ntgweb    false    380                       2606    17429    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            ntgweb    false    382            �           1259    17432 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            ntgweb    false    200            �           1259    17433    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            ntgweb    false    202            �           1259    17434 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            ntgweb    false    202            �           1259    17435 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            ntgweb    false    200            �           1259    17436    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            ntgweb    false    203            �           1259    17437    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            ntgweb    false    203            �           1259    17438    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            ntgweb    false    205            �           1259    17439    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            ntgweb    false    207            �           1259    17440    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            ntgweb    false    207            �           1259    17441    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            ntgweb    false    205            �           1259    17442    applicants_career_links_fk    INDEX     f   CREATE INDEX applicants_career_links_fk ON public.applicants_career_links USING btree (applicant_id);
 .   DROP INDEX public.applicants_career_links_fk;
       public            ntgweb    false    209            �           1259    17443    applicants_career_links_inv_fk    INDEX     g   CREATE INDEX applicants_career_links_inv_fk ON public.applicants_career_links USING btree (career_id);
 2   DROP INDEX public.applicants_career_links_inv_fk;
       public            ntgweb    false    209            �           1259    17444    applicants_created_by_id_fk    INDEX     [   CREATE INDEX applicants_created_by_id_fk ON public.applicants USING btree (created_by_id);
 /   DROP INDEX public.applicants_created_by_id_fk;
       public            ntgweb    false    208            �           1259    17445    applicants_updated_by_id_fk    INDEX     [   CREATE INDEX applicants_updated_by_id_fk ON public.applicants USING btree (updated_by_id);
 /   DROP INDEX public.applicants_updated_by_id_fk;
       public            ntgweb    false    208            E           1259    20341    authors_created_by_id_fk    INDEX     U   CREATE INDEX authors_created_by_id_fk ON public.authors USING btree (created_by_id);
 ,   DROP INDEX public.authors_created_by_id_fk;
       public            postgres    false    414            H           1259    20342    authors_updated_by_id_fk    INDEX     U   CREATE INDEX authors_updated_by_id_fk ON public.authors USING btree (updated_by_id);
 ,   DROP INDEX public.authors_updated_by_id_fk;
       public            postgres    false    414            �           1259    17446    careers_component_type_index    INDEX     e   CREATE INDEX careers_component_type_index ON public.careers_components USING btree (component_type);
 0   DROP INDEX public.careers_component_type_index;
       public            ntgweb    false    212            �           1259    17447    careers_created_by_id_fk    INDEX     U   CREATE INDEX careers_created_by_id_fk ON public.careers USING btree (created_by_id);
 ,   DROP INDEX public.careers_created_by_id_fk;
       public            ntgweb    false    211                       1259    17448    careers_entity_fk    INDEX     U   CREATE INDEX careers_entity_fk ON public.careers_components USING btree (entity_id);
 %   DROP INDEX public.careers_entity_fk;
       public            ntgweb    false    212                       1259    17449    careers_field_index    INDEX     S   CREATE INDEX careers_field_index ON public.careers_components USING btree (field);
 '   DROP INDEX public.careers_field_index;
       public            ntgweb    false    212            j           1259    20620    careers_localizations_links_fk    INDEX     k   CREATE INDEX careers_localizations_links_fk ON public.careers_localizations_links USING btree (career_id);
 2   DROP INDEX public.careers_localizations_links_fk;
       public            postgres    false    432            k           1259    20621 "   careers_localizations_links_inv_fk    INDEX     s   CREATE INDEX careers_localizations_links_inv_fk ON public.careers_localizations_links USING btree (inv_career_id);
 6   DROP INDEX public.careers_localizations_links_inv_fk;
       public            postgres    false    432                       1259    17450    careers_type_job_links_fk    INDEX     a   CREATE INDEX careers_type_job_links_fk ON public.careers_type_job_links USING btree (career_id);
 -   DROP INDEX public.careers_type_job_links_fk;
       public            ntgweb    false    215                       1259    17451    careers_type_job_links_inv_fk    INDEX     g   CREATE INDEX careers_type_job_links_inv_fk ON public.careers_type_job_links USING btree (type_job_id);
 1   DROP INDEX public.careers_type_job_links_inv_fk;
       public            ntgweb    false    215            �           1259    17452    careers_updated_by_id_fk    INDEX     U   CREATE INDEX careers_updated_by_id_fk ON public.careers USING btree (updated_by_id);
 ,   DROP INDEX public.careers_updated_by_id_fk;
       public            ntgweb    false    211                       1259    17453 "   category_insights_created_by_id_fk    INDEX     i   CREATE INDEX category_insights_created_by_id_fk ON public.category_insights USING btree (created_by_id);
 6   DROP INDEX public.category_insights_created_by_id_fk;
       public            ntgweb    false    216                       1259    17454 "   category_insights_updated_by_id_fk    INDEX     i   CREATE INDEX category_insights_updated_by_id_fk ON public.category_insights USING btree (updated_by_id);
 6   DROP INDEX public.category_insights_updated_by_id_fk;
       public            ntgweb    false    216            	           1259    17455 "   category_products_created_by_id_fk    INDEX     i   CREATE INDEX category_products_created_by_id_fk ON public.category_products USING btree (created_by_id);
 6   DROP INDEX public.category_products_created_by_id_fk;
       public            ntgweb    false    218                       1259    17456 "   category_products_updated_by_id_fk    INDEX     i   CREATE INDEX category_products_updated_by_id_fk ON public.category_products USING btree (updated_by_id);
 6   DROP INDEX public.category_products_updated_by_id_fk;
       public            ntgweb    false    218                       1259    17457 3   components_column_link_columns_component_type_index    INDEX     �   CREATE INDEX components_column_link_columns_component_type_index ON public.components_column_link_columns_components USING btree (component_type);
 G   DROP INDEX public.components_column_link_columns_component_type_index;
       public            ntgweb    false    221                       1259    17458 (   components_column_link_columns_entity_fk    INDEX     �   CREATE INDEX components_column_link_columns_entity_fk ON public.components_column_link_columns_components USING btree (entity_id);
 <   DROP INDEX public.components_column_link_columns_entity_fk;
       public            ntgweb    false    221                       1259    17459 *   components_column_link_columns_field_index    INDEX     �   CREATE INDEX components_column_link_columns_field_index ON public.components_column_link_columns_components USING btree (field);
 >   DROP INDEX public.components_column_link_columns_field_index;
       public            ntgweb    false    221            `           1259    20543 0   components_elements_headers_component_type_index    INDEX     �   CREATE INDEX components_elements_headers_component_type_index ON public.components_elements_headers_components USING btree (component_type);
 D   DROP INDEX public.components_elements_headers_component_type_index;
       public            postgres    false    429            c           1259    20544 %   components_elements_headers_entity_fk    INDEX     }   CREATE INDEX components_elements_headers_entity_fk ON public.components_elements_headers_components USING btree (entity_id);
 9   DROP INDEX public.components_elements_headers_entity_fk;
       public            postgres    false    429            d           1259    20542 '   components_elements_headers_field_index    INDEX     {   CREATE INDEX components_elements_headers_field_index ON public.components_elements_headers_components USING btree (field);
 ;   DROP INDEX public.components_elements_headers_field_index;
       public            postgres    false    429            e           1259    20565 3   components_elements_menu_items_component_type_index    INDEX     �   CREATE INDEX components_elements_menu_items_component_type_index ON public.components_elements_menu_items_components USING btree (component_type);
 G   DROP INDEX public.components_elements_menu_items_component_type_index;
       public            postgres    false    431            h           1259    20566 (   components_elements_menu_items_entity_fk    INDEX     �   CREATE INDEX components_elements_menu_items_entity_fk ON public.components_elements_menu_items_components USING btree (entity_id);
 <   DROP INDEX public.components_elements_menu_items_entity_fk;
       public            postgres    false    431            i           1259    20564 *   components_elements_menu_items_field_index    INDEX     �   CREATE INDEX components_elements_menu_items_field_index ON public.components_elements_menu_items_components USING btree (field);
 >   DROP INDEX public.components_elements_menu_items_field_index;
       public            postgres    false    431            (           1259    17460 ,   components_heros_heroes_component_type_index    INDEX     �   CREATE INDEX components_heros_heroes_component_type_index ON public.components_heros_heroes_components USING btree (component_type);
 @   DROP INDEX public.components_heros_heroes_component_type_index;
       public            ntgweb    false    243            +           1259    17461 !   components_heros_heroes_entity_fk    INDEX     u   CREATE INDEX components_heros_heroes_entity_fk ON public.components_heros_heroes_components USING btree (entity_id);
 5   DROP INDEX public.components_heros_heroes_entity_fk;
       public            ntgweb    false    243            ,           1259    17462 #   components_heros_heroes_field_index    INDEX     s   CREATE INDEX components_heros_heroes_field_index ON public.components_heros_heroes_components USING btree (field);
 7   DROP INDEX public.components_heros_heroes_field_index;
       public            ntgweb    false    243            /           1259    17463 :   components_layouts_accordion_contents_component_type_index    INDEX     �   CREATE INDEX components_layouts_accordion_contents_component_type_index ON public.components_layouts_accordion_contents_components USING btree (component_type);
 N   DROP INDEX public.components_layouts_accordion_contents_component_type_index;
       public            ntgweb    false    247            2           1259    17464 /   components_layouts_accordion_contents_entity_fk    INDEX     �   CREATE INDEX components_layouts_accordion_contents_entity_fk ON public.components_layouts_accordion_contents_components USING btree (entity_id);
 C   DROP INDEX public.components_layouts_accordion_contents_entity_fk;
       public            ntgweb    false    247            3           1259    17465 1   components_layouts_accordion_contents_field_index    INDEX     �   CREATE INDEX components_layouts_accordion_contents_field_index ON public.components_layouts_accordion_contents_components USING btree (field);
 E   DROP INDEX public.components_layouts_accordion_contents_field_index;
       public            ntgweb    false    247            6           1259    17466 3   components_layouts_bkg_headers_component_type_index    INDEX     �   CREATE INDEX components_layouts_bkg_headers_component_type_index ON public.components_layouts_bkg_headers_components USING btree (component_type);
 G   DROP INDEX public.components_layouts_bkg_headers_component_type_index;
       public            ntgweb    false    251            9           1259    17467 (   components_layouts_bkg_headers_entity_fk    INDEX     �   CREATE INDEX components_layouts_bkg_headers_entity_fk ON public.components_layouts_bkg_headers_components USING btree (entity_id);
 <   DROP INDEX public.components_layouts_bkg_headers_entity_fk;
       public            ntgweb    false    251            :           1259    17468 *   components_layouts_bkg_headers_field_index    INDEX     �   CREATE INDEX components_layouts_bkg_headers_field_index ON public.components_layouts_bkg_headers_components USING btree (field);
 >   DROP INDEX public.components_layouts_bkg_headers_field_index;
       public            ntgweb    false    251            =           1259    17469 9   components_layouts_card_with_buttons_component_type_index    INDEX     �   CREATE INDEX components_layouts_card_with_buttons_component_type_index ON public.components_layouts_card_with_buttons_components USING btree (component_type);
 M   DROP INDEX public.components_layouts_card_with_buttons_component_type_index;
       public            ntgweb    false    255            @           1259    17470 .   components_layouts_card_with_buttons_entity_fk    INDEX     �   CREATE INDEX components_layouts_card_with_buttons_entity_fk ON public.components_layouts_card_with_buttons_components USING btree (entity_id);
 B   DROP INDEX public.components_layouts_card_with_buttons_entity_fk;
       public            ntgweb    false    255            A           1259    17471 0   components_layouts_card_with_buttons_field_index    INDEX     �   CREATE INDEX components_layouts_card_with_buttons_field_index ON public.components_layouts_card_with_buttons_components USING btree (field);
 D   DROP INDEX public.components_layouts_card_with_buttons_field_index;
       public            ntgweb    false    255            D           1259    17472 -   components_layouts_cards_component_type_index    INDEX     �   CREATE INDEX components_layouts_cards_component_type_index ON public.components_layouts_cards_components USING btree (component_type);
 A   DROP INDEX public.components_layouts_cards_component_type_index;
       public            ntgweb    false    259            G           1259    17473 "   components_layouts_cards_entity_fk    INDEX     w   CREATE INDEX components_layouts_cards_entity_fk ON public.components_layouts_cards_components USING btree (entity_id);
 6   DROP INDEX public.components_layouts_cards_entity_fk;
       public            ntgweb    false    259            H           1259    17474 $   components_layouts_cards_field_index    INDEX     u   CREATE INDEX components_layouts_cards_field_index ON public.components_layouts_cards_components USING btree (field);
 8   DROP INDEX public.components_layouts_cards_field_index;
       public            ntgweb    false    259            K           1259    17475 5   components_layouts_center_heroes_component_type_index    INDEX     �   CREATE INDEX components_layouts_center_heroes_component_type_index ON public.components_layouts_center_heroes_components USING btree (component_type);
 I   DROP INDEX public.components_layouts_center_heroes_component_type_index;
       public            ntgweb    false    263            N           1259    17476 *   components_layouts_center_heroes_entity_fk    INDEX     �   CREATE INDEX components_layouts_center_heroes_entity_fk ON public.components_layouts_center_heroes_components USING btree (entity_id);
 >   DROP INDEX public.components_layouts_center_heroes_entity_fk;
       public            ntgweb    false    263            O           1259    17477 ,   components_layouts_center_heroes_field_index    INDEX     �   CREATE INDEX components_layouts_center_heroes_field_index ON public.components_layouts_center_heroes_components USING btree (field);
 @   DROP INDEX public.components_layouts_center_heroes_field_index;
       public            ntgweb    false    263            %           1259    18147 7   components_layouts_component_types_component_type_index    INDEX     �   CREATE INDEX components_layouts_component_types_component_type_index ON public.components_layouts_component_types_components USING btree (component_type);
 K   DROP INDEX public.components_layouts_component_types_component_type_index;
       public            postgres    false    390            (           1259    18148 ,   components_layouts_component_types_entity_fk    INDEX     �   CREATE INDEX components_layouts_component_types_entity_fk ON public.components_layouts_component_types_components USING btree (entity_id);
 @   DROP INDEX public.components_layouts_component_types_entity_fk;
       public            postgres    false    390            )           1259    18146 .   components_layouts_component_types_field_index    INDEX     �   CREATE INDEX components_layouts_component_types_field_index ON public.components_layouts_component_types_components USING btree (field);
 B   DROP INDEX public.components_layouts_component_types_field_index;
       public            postgres    false    390            T           1259    17478 5   components_layouts_contact_infos_component_type_index    INDEX     �   CREATE INDEX components_layouts_contact_infos_component_type_index ON public.components_layouts_contact_infos_components USING btree (component_type);
 I   DROP INDEX public.components_layouts_contact_infos_component_type_index;
       public            ntgweb    false    269            W           1259    17479 *   components_layouts_contact_infos_entity_fk    INDEX     �   CREATE INDEX components_layouts_contact_infos_entity_fk ON public.components_layouts_contact_infos_components USING btree (entity_id);
 >   DROP INDEX public.components_layouts_contact_infos_entity_fk;
       public            ntgweb    false    269            X           1259    17480 ,   components_layouts_contact_infos_field_index    INDEX     �   CREATE INDEX components_layouts_contact_infos_field_index ON public.components_layouts_contact_infos_components USING btree (field);
 @   DROP INDEX public.components_layouts_contact_infos_field_index;
       public            ntgweb    false    269            2           1259    18259 5   components_layouts_featured_news_component_type_index    INDEX     �   CREATE INDEX components_layouts_featured_news_component_type_index ON public.components_layouts_featured_news_components USING btree (component_type);
 I   DROP INDEX public.components_layouts_featured_news_component_type_index;
       public            postgres    false    399            5           1259    18260 *   components_layouts_featured_news_entity_fk    INDEX     �   CREATE INDEX components_layouts_featured_news_entity_fk ON public.components_layouts_featured_news_components USING btree (entity_id);
 >   DROP INDEX public.components_layouts_featured_news_entity_fk;
       public            postgres    false    399            6           1259    18258 ,   components_layouts_featured_news_field_index    INDEX     �   CREATE INDEX components_layouts_featured_news_field_index ON public.components_layouts_featured_news_components USING btree (field);
 @   DROP INDEX public.components_layouts_featured_news_field_index;
       public            postgres    false    399            0           1259    18232 1   components_layouts_featured_news_insight_links_fk    INDEX     �   CREATE INDEX components_layouts_featured_news_insight_links_fk ON public.components_layouts_featured_news_insight_links USING btree (featured_news_id);
 E   DROP INDEX public.components_layouts_featured_news_insight_links_fk;
       public            postgres    false    397            1           1259    18233 5   components_layouts_featured_news_insight_links_inv_fk    INDEX     �   CREATE INDEX components_layouts_featured_news_insight_links_inv_fk ON public.components_layouts_featured_news_insight_links USING btree (insight_id);
 I   DROP INDEX public.components_layouts_featured_news_insight_links_inv_fk;
       public            postgres    false    397            _           1259    17481 /   components_layouts_footers_component_type_index    INDEX     �   CREATE INDEX components_layouts_footers_component_type_index ON public.components_layouts_footers_components USING btree (component_type);
 C   DROP INDEX public.components_layouts_footers_component_type_index;
       public            ntgweb    false    277            b           1259    17482 $   components_layouts_footers_entity_fk    INDEX     {   CREATE INDEX components_layouts_footers_entity_fk ON public.components_layouts_footers_components USING btree (entity_id);
 8   DROP INDEX public.components_layouts_footers_entity_fk;
       public            ntgweb    false    277            c           1259    17483 &   components_layouts_footers_field_index    INDEX     y   CREATE INDEX components_layouts_footers_field_index ON public.components_layouts_footers_components USING btree (field);
 :   DROP INDEX public.components_layouts_footers_field_index;
       public            ntgweb    false    277            f           1259    17484 =   components_layouts_header_with_customers_component_type_index    INDEX     �   CREATE INDEX components_layouts_header_with_customers_component_type_index ON public.components_layouts_header_with_customers_components USING btree (component_type);
 Q   DROP INDEX public.components_layouts_header_with_customers_component_type_index;
       public            ntgweb    false    281            i           1259    17485 2   components_layouts_header_with_customers_entity_fk    INDEX     �   CREATE INDEX components_layouts_header_with_customers_entity_fk ON public.components_layouts_header_with_customers_components USING btree (entity_id);
 F   DROP INDEX public.components_layouts_header_with_customers_entity_fk;
       public            ntgweb    false    281            j           1259    17486 4   components_layouts_header_with_customers_field_index    INDEX     �   CREATE INDEX components_layouts_header_with_customers_field_index ON public.components_layouts_header_with_customers_components USING btree (field);
 H   DROP INDEX public.components_layouts_header_with_customers_field_index;
       public            ntgweb    false    281            m           1259    17487 /   components_layouts_headers_component_type_index    INDEX     �   CREATE INDEX components_layouts_headers_component_type_index ON public.components_layouts_headers_components USING btree (component_type);
 C   DROP INDEX public.components_layouts_headers_component_type_index;
       public            ntgweb    false    285            p           1259    17488 $   components_layouts_headers_entity_fk    INDEX     {   CREATE INDEX components_layouts_headers_entity_fk ON public.components_layouts_headers_components USING btree (entity_id);
 8   DROP INDEX public.components_layouts_headers_entity_fk;
       public            ntgweb    false    285            q           1259    17489 &   components_layouts_headers_field_index    INDEX     y   CREATE INDEX components_layouts_headers_field_index ON public.components_layouts_headers_components USING btree (field);
 :   DROP INDEX public.components_layouts_headers_field_index;
       public            ntgweb    false    285            t           1259    17490 :   components_layouts_hero_circle_images_component_type_index    INDEX     �   CREATE INDEX components_layouts_hero_circle_images_component_type_index ON public.components_layouts_hero_circle_images_components USING btree (component_type);
 N   DROP INDEX public.components_layouts_hero_circle_images_component_type_index;
       public            ntgweb    false    289            w           1259    17491 /   components_layouts_hero_circle_images_entity_fk    INDEX     �   CREATE INDEX components_layouts_hero_circle_images_entity_fk ON public.components_layouts_hero_circle_images_components USING btree (entity_id);
 C   DROP INDEX public.components_layouts_hero_circle_images_entity_fk;
       public            ntgweb    false    289            x           1259    17492 1   components_layouts_hero_circle_images_field_index    INDEX     �   CREATE INDEX components_layouts_hero_circle_images_field_index ON public.components_layouts_hero_circle_images_components USING btree (field);
 E   DROP INDEX public.components_layouts_hero_circle_images_field_index;
       public            ntgweb    false    289            {           1259    17493 7   components_layouts_hero_highlights_component_type_index    INDEX     �   CREATE INDEX components_layouts_hero_highlights_component_type_index ON public.components_layouts_hero_highlights_components USING btree (component_type);
 K   DROP INDEX public.components_layouts_hero_highlights_component_type_index;
       public            ntgweb    false    293            ~           1259    17494 ,   components_layouts_hero_highlights_entity_fk    INDEX     �   CREATE INDEX components_layouts_hero_highlights_entity_fk ON public.components_layouts_hero_highlights_components USING btree (entity_id);
 @   DROP INDEX public.components_layouts_hero_highlights_entity_fk;
       public            ntgweb    false    293                       1259    17495 .   components_layouts_hero_highlights_field_index    INDEX     �   CREATE INDEX components_layouts_hero_highlights_field_index ON public.components_layouts_hero_highlights_components USING btree (field);
 B   DROP INDEX public.components_layouts_hero_highlights_field_index;
       public            ntgweb    false    293            �           1259    17496 :   components_layouts_hero_square_images_component_type_index    INDEX     �   CREATE INDEX components_layouts_hero_square_images_component_type_index ON public.components_layouts_hero_square_images_components USING btree (component_type);
 N   DROP INDEX public.components_layouts_hero_square_images_component_type_index;
       public            ntgweb    false    297            �           1259    17497 /   components_layouts_hero_square_images_entity_fk    INDEX     �   CREATE INDEX components_layouts_hero_square_images_entity_fk ON public.components_layouts_hero_square_images_components USING btree (entity_id);
 C   DROP INDEX public.components_layouts_hero_square_images_entity_fk;
       public            ntgweb    false    297            �           1259    17498 1   components_layouts_hero_square_images_field_index    INDEX     �   CREATE INDEX components_layouts_hero_square_images_field_index ON public.components_layouts_hero_square_images_components USING btree (field);
 E   DROP INDEX public.components_layouts_hero_square_images_field_index;
       public            ntgweb    false    297            �           1259    17499 3   components_layouts_item_heroes_component_type_index    INDEX     �   CREATE INDEX components_layouts_item_heroes_component_type_index ON public.components_layouts_item_heroes_components USING btree (component_type);
 G   DROP INDEX public.components_layouts_item_heroes_component_type_index;
       public            ntgweb    false    303            �           1259    17500 (   components_layouts_item_heroes_entity_fk    INDEX     �   CREATE INDEX components_layouts_item_heroes_entity_fk ON public.components_layouts_item_heroes_components USING btree (entity_id);
 <   DROP INDEX public.components_layouts_item_heroes_entity_fk;
       public            ntgweb    false    303            �           1259    17501 *   components_layouts_item_heroes_field_index    INDEX     �   CREATE INDEX components_layouts_item_heroes_field_index ON public.components_layouts_item_heroes_components USING btree (field);
 >   DROP INDEX public.components_layouts_item_heroes_field_index;
       public            ntgweb    false    303                        1259    18118 0   components_layouts_partners_component_type_index    INDEX     �   CREATE INDEX components_layouts_partners_component_type_index ON public.components_layouts_partners_components USING btree (component_type);
 D   DROP INDEX public.components_layouts_partners_component_type_index;
       public            postgres    false    388            #           1259    18119 %   components_layouts_partners_entity_fk    INDEX     }   CREATE INDEX components_layouts_partners_entity_fk ON public.components_layouts_partners_components USING btree (entity_id);
 9   DROP INDEX public.components_layouts_partners_entity_fk;
       public            postgres    false    388            $           1259    18117 '   components_layouts_partners_field_index    INDEX     {   CREATE INDEX components_layouts_partners_field_index ON public.components_layouts_partners_components USING btree (field);
 ;   DROP INDEX public.components_layouts_partners_field_index;
       public            postgres    false    388            �           1259    17508 -   components_layouts_steps_component_type_index    INDEX     �   CREATE INDEX components_layouts_steps_component_type_index ON public.components_layouts_steps_components USING btree (component_type);
 A   DROP INDEX public.components_layouts_steps_component_type_index;
       public            ntgweb    false    313            �           1259    17509 "   components_layouts_steps_entity_fk    INDEX     w   CREATE INDEX components_layouts_steps_entity_fk ON public.components_layouts_steps_components USING btree (entity_id);
 6   DROP INDEX public.components_layouts_steps_entity_fk;
       public            ntgweb    false    313            �           1259    17510 $   components_layouts_steps_field_index    INDEX     u   CREATE INDEX components_layouts_steps_field_index ON public.components_layouts_steps_components USING btree (field);
 8   DROP INDEX public.components_layouts_steps_field_index;
       public            ntgweb    false    313            �           1259    17511 6   components_layouts_support_heroes_component_type_index    INDEX     �   CREATE INDEX components_layouts_support_heroes_component_type_index ON public.components_layouts_support_heroes_components USING btree (component_type);
 J   DROP INDEX public.components_layouts_support_heroes_component_type_index;
       public            ntgweb    false    317            �           1259    17512 +   components_layouts_support_heroes_entity_fk    INDEX     �   CREATE INDEX components_layouts_support_heroes_entity_fk ON public.components_layouts_support_heroes_components USING btree (entity_id);
 ?   DROP INDEX public.components_layouts_support_heroes_entity_fk;
       public            ntgweb    false    317            �           1259    17513 -   components_layouts_support_heroes_field_index    INDEX     �   CREATE INDEX components_layouts_support_heroes_field_index ON public.components_layouts_support_heroes_components USING btree (field);
 A   DROP INDEX public.components_layouts_support_heroes_field_index;
       public            ntgweb    false    317            �           1259    17514 +   components_shared_seos_component_type_index    INDEX     �   CREATE INDEX components_shared_seos_component_type_index ON public.components_shared_seos_components USING btree (component_type);
 ?   DROP INDEX public.components_shared_seos_component_type_index;
       public            ntgweb    false    327            �           1259    17515     components_shared_seos_entity_fk    INDEX     s   CREATE INDEX components_shared_seos_entity_fk ON public.components_shared_seos_components USING btree (entity_id);
 4   DROP INDEX public.components_shared_seos_entity_fk;
       public            ntgweb    false    327            �           1259    17516 "   components_shared_seos_field_index    INDEX     q   CREATE INDEX components_shared_seos_field_index ON public.components_shared_seos_components USING btree (field);
 6   DROP INDEX public.components_shared_seos_field_index;
       public            ntgweb    false    327            X           1259    20487    contacts_created_by_id_fk    INDEX     W   CREATE INDEX contacts_created_by_id_fk ON public.contacts USING btree (created_by_id);
 -   DROP INDEX public.contacts_created_by_id_fk;
       public            postgres    false    423            [           1259    20488    contacts_updated_by_id_fk    INDEX     W   CREATE INDEX contacts_updated_by_id_fk ON public.contacts USING btree (updated_by_id);
 -   DROP INDEX public.contacts_updated_by_id_fk;
       public            postgres    false    423            �           1259    17517    customers_created_by_id_fk    INDEX     Y   CREATE INDEX customers_created_by_id_fk ON public.customers USING btree (created_by_id);
 .   DROP INDEX public.customers_created_by_id_fk;
       public            ntgweb    false    330            �           1259    17518    customers_updated_by_id_fk    INDEX     Y   CREATE INDEX customers_updated_by_id_fk ON public.customers USING btree (updated_by_id);
 .   DROP INDEX public.customers_updated_by_id_fk;
       public            ntgweb    false    330            �           1259    17519    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            ntgweb    false    332            �           1259    17520    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            ntgweb    false    334            �           1259    17521    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            ntgweb    false    332            �           1259    17522    globals_component_type_index    INDEX     e   CREATE INDEX globals_component_type_index ON public.globals_components USING btree (component_type);
 0   DROP INDEX public.globals_component_type_index;
       public            ntgweb    false    336            �           1259    17523    globals_created_by_id_fk    INDEX     U   CREATE INDEX globals_created_by_id_fk ON public.globals USING btree (created_by_id);
 ,   DROP INDEX public.globals_created_by_id_fk;
       public            ntgweb    false    335            �           1259    17524    globals_entity_fk    INDEX     U   CREATE INDEX globals_entity_fk ON public.globals_components USING btree (entity_id);
 %   DROP INDEX public.globals_entity_fk;
       public            ntgweb    false    336            �           1259    17525    globals_field_index    INDEX     S   CREATE INDEX globals_field_index ON public.globals_components USING btree (field);
 '   DROP INDEX public.globals_field_index;
       public            ntgweb    false    336            �           1259    17526    globals_localizations_links_fk    INDEX     k   CREATE INDEX globals_localizations_links_fk ON public.globals_localizations_links USING btree (global_id);
 2   DROP INDEX public.globals_localizations_links_fk;
       public            ntgweb    false    339            �           1259    17527 "   globals_localizations_links_inv_fk    INDEX     s   CREATE INDEX globals_localizations_links_inv_fk ON public.globals_localizations_links USING btree (inv_global_id);
 6   DROP INDEX public.globals_localizations_links_inv_fk;
       public            ntgweb    false    339            �           1259    17528    globals_updated_by_id_fk    INDEX     U   CREATE INDEX globals_updated_by_id_fk ON public.globals USING btree (updated_by_id);
 ,   DROP INDEX public.globals_updated_by_id_fk;
       public            ntgweb    false    335            �           1259    17529    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            ntgweb    false    340            �           1259    17530    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            ntgweb    false    340            I           1259    20358    insights_author_links_fk    INDEX     `   CREATE INDEX insights_author_links_fk ON public.insights_author_links USING btree (insight_id);
 ,   DROP INDEX public.insights_author_links_fk;
       public            postgres    false    415            J           1259    20359    insights_author_links_inv_fk    INDEX     c   CREATE INDEX insights_author_links_inv_fk ON public.insights_author_links USING btree (author_id);
 0   DROP INDEX public.insights_author_links_inv_fk;
       public            postgres    false    415            �           1259    17531 "   insights_category_insight_links_fk    INDEX     t   CREATE INDEX insights_category_insight_links_fk ON public.insights_category_insight_links USING btree (insight_id);
 6   DROP INDEX public.insights_category_insight_links_fk;
       public            ntgweb    false    343            �           1259    17532 &   insights_category_insight_links_inv_fk    INDEX     �   CREATE INDEX insights_category_insight_links_inv_fk ON public.insights_category_insight_links USING btree (category_insight_id);
 :   DROP INDEX public.insights_category_insight_links_inv_fk;
       public            ntgweb    false    343            �           1259    17533    insights_component_type_index    INDEX     g   CREATE INDEX insights_component_type_index ON public.insights_components USING btree (component_type);
 1   DROP INDEX public.insights_component_type_index;
       public            ntgweb    false    344            �           1259    17534    insights_created_by_id_fk    INDEX     W   CREATE INDEX insights_created_by_id_fk ON public.insights USING btree (created_by_id);
 -   DROP INDEX public.insights_created_by_id_fk;
       public            ntgweb    false    342            �           1259    17535    insights_entity_fk    INDEX     W   CREATE INDEX insights_entity_fk ON public.insights_components USING btree (entity_id);
 &   DROP INDEX public.insights_entity_fk;
       public            ntgweb    false    344            �           1259    17536    insights_field_index    INDEX     U   CREATE INDEX insights_field_index ON public.insights_components USING btree (field);
 (   DROP INDEX public.insights_field_index;
       public            ntgweb    false    344            l           1259    20637    insights_localizations_links_fk    INDEX     n   CREATE INDEX insights_localizations_links_fk ON public.insights_localizations_links USING btree (insight_id);
 3   DROP INDEX public.insights_localizations_links_fk;
       public            postgres    false    433            m           1259    20638 #   insights_localizations_links_inv_fk    INDEX     v   CREATE INDEX insights_localizations_links_inv_fk ON public.insights_localizations_links USING btree (inv_insight_id);
 7   DROP INDEX public.insights_localizations_links_inv_fk;
       public            postgres    false    433            �           1259    17537 "   insights_related_insights_links_fk    INDEX     t   CREATE INDEX insights_related_insights_links_fk ON public.insights_related_insights_links USING btree (insight_id);
 6   DROP INDEX public.insights_related_insights_links_fk;
       public            ntgweb    false    347            �           1259    17538 &   insights_related_insights_links_inv_fk    INDEX     |   CREATE INDEX insights_related_insights_links_inv_fk ON public.insights_related_insights_links USING btree (inv_insight_id);
 :   DROP INDEX public.insights_related_insights_links_inv_fk;
       public            ntgweb    false    347            �           1259    17539    insights_updated_by_id_fk    INDEX     W   CREATE INDEX insights_updated_by_id_fk ON public.insights USING btree (updated_by_id);
 -   DROP INDEX public.insights_updated_by_id_fk;
       public            ntgweb    false    342            �           1259    17540    pages_component_type_index    INDEX     a   CREATE INDEX pages_component_type_index ON public.pages_components USING btree (component_type);
 .   DROP INDEX public.pages_component_type_index;
       public            ntgweb    false    349            �           1259    17541    pages_created_by_id_fk    INDEX     Q   CREATE INDEX pages_created_by_id_fk ON public.pages USING btree (created_by_id);
 *   DROP INDEX public.pages_created_by_id_fk;
       public            ntgweb    false    348            �           1259    17542    pages_entity_fk    INDEX     Q   CREATE INDEX pages_entity_fk ON public.pages_components USING btree (entity_id);
 #   DROP INDEX public.pages_entity_fk;
       public            ntgweb    false    349            �           1259    17543    pages_field_index    INDEX     O   CREATE INDEX pages_field_index ON public.pages_components USING btree (field);
 %   DROP INDEX public.pages_field_index;
       public            ntgweb    false    349            �           1259    17544    pages_localizations_links_fk    INDEX     e   CREATE INDEX pages_localizations_links_fk ON public.pages_localizations_links USING btree (page_id);
 0   DROP INDEX public.pages_localizations_links_fk;
       public            ntgweb    false    352            �           1259    17545     pages_localizations_links_inv_fk    INDEX     m   CREATE INDEX pages_localizations_links_inv_fk ON public.pages_localizations_links USING btree (inv_page_id);
 4   DROP INDEX public.pages_localizations_links_inv_fk;
       public            ntgweb    false    352            �           1259    17546    pages_updated_by_id_fk    INDEX     Q   CREATE INDEX pages_updated_by_id_fk ON public.pages USING btree (updated_by_id);
 *   DROP INDEX public.pages_updated_by_id_fk;
       public            ntgweb    false    348            �           1259    17547    platforms_created_by_id_fk    INDEX     Y   CREATE INDEX platforms_created_by_id_fk ON public.platforms USING btree (created_by_id);
 .   DROP INDEX public.platforms_created_by_id_fk;
       public            ntgweb    false    353            �           1259    17548    platforms_updated_by_id_fk    INDEX     Y   CREATE INDEX platforms_updated_by_id_fk ON public.platforms USING btree (updated_by_id);
 .   DROP INDEX public.platforms_updated_by_id_fk;
       public            ntgweb    false    353            R           1259    20421 "   product_instances_created_by_id_fk    INDEX     i   CREATE INDEX product_instances_created_by_id_fk ON public.product_instances USING btree (created_by_id);
 6   DROP INDEX public.product_instances_created_by_id_fk;
       public            postgres    false    420            U           1259    20422 "   product_instances_updated_by_id_fk    INDEX     i   CREATE INDEX product_instances_updated_by_id_fk ON public.product_instances USING btree (updated_by_id);
 6   DROP INDEX public.product_instances_updated_by_id_fk;
       public            postgres    false    420            �           1259    17549 #   products_category_products_links_fk    INDEX     v   CREATE INDEX products_category_products_links_fk ON public.products_category_products_links USING btree (product_id);
 7   DROP INDEX public.products_category_products_links_fk;
       public            ntgweb    false    356            �           1259    17550 '   products_category_products_links_inv_fk    INDEX     �   CREATE INDEX products_category_products_links_inv_fk ON public.products_category_products_links USING btree (category_product_id);
 ;   DROP INDEX public.products_category_products_links_inv_fk;
       public            ntgweb    false    356            �           1259    17551    products_component_type_index    INDEX     g   CREATE INDEX products_component_type_index ON public.products_components USING btree (component_type);
 1   DROP INDEX public.products_component_type_index;
       public            ntgweb    false    357            �           1259    17552    products_created_by_id_fk    INDEX     W   CREATE INDEX products_created_by_id_fk ON public.products USING btree (created_by_id);
 -   DROP INDEX public.products_created_by_id_fk;
       public            ntgweb    false    355            C           1259    18415    products_customers_links_fk    INDEX     f   CREATE INDEX products_customers_links_fk ON public.products_customers_links USING btree (product_id);
 /   DROP INDEX public.products_customers_links_fk;
       public            postgres    false    412            D           1259    18416    products_customers_links_inv_fk    INDEX     k   CREATE INDEX products_customers_links_inv_fk ON public.products_customers_links USING btree (customer_id);
 3   DROP INDEX public.products_customers_links_inv_fk;
       public            postgres    false    412            �           1259    17553    products_entity_fk    INDEX     W   CREATE INDEX products_entity_fk ON public.products_components USING btree (entity_id);
 &   DROP INDEX public.products_entity_fk;
       public            ntgweb    false    357            �           1259    17554    products_field_index    INDEX     U   CREATE INDEX products_field_index ON public.products_components USING btree (field);
 (   DROP INDEX public.products_field_index;
       public            ntgweb    false    357            n           1259    20654    products_localizations_links_fk    INDEX     n   CREATE INDEX products_localizations_links_fk ON public.products_localizations_links USING btree (product_id);
 3   DROP INDEX public.products_localizations_links_fk;
       public            postgres    false    434            o           1259    20655 #   products_localizations_links_inv_fk    INDEX     v   CREATE INDEX products_localizations_links_inv_fk ON public.products_localizations_links USING btree (inv_product_id);
 7   DROP INDEX public.products_localizations_links_inv_fk;
       public            postgres    false    434            �           1259    17555    products_platform_links_fk    INDEX     d   CREATE INDEX products_platform_links_fk ON public.products_platform_links USING btree (product_id);
 .   DROP INDEX public.products_platform_links_fk;
       public            ntgweb    false    360            �           1259    17556    products_platform_links_inv_fk    INDEX     i   CREATE INDEX products_platform_links_inv_fk ON public.products_platform_links USING btree (platform_id);
 2   DROP INDEX public.products_platform_links_inv_fk;
       public            ntgweb    false    360            V           1259    20438 "   products_product_instance_links_fk    INDEX     t   CREATE INDEX products_product_instance_links_fk ON public.products_product_instance_links USING btree (product_id);
 6   DROP INDEX public.products_product_instance_links_fk;
       public            postgres    false    421            W           1259    20439 &   products_product_instance_links_inv_fk    INDEX     �   CREATE INDEX products_product_instance_links_inv_fk ON public.products_product_instance_links USING btree (product_instance_id);
 :   DROP INDEX public.products_product_instance_links_inv_fk;
       public            postgres    false    421            P           1259    20399    products_service_links_fk    INDEX     b   CREATE INDEX products_service_links_fk ON public.products_service_links USING btree (product_id);
 -   DROP INDEX public.products_service_links_fk;
       public            postgres    false    418            Q           1259    20400    products_service_links_inv_fk    INDEX     f   CREATE INDEX products_service_links_inv_fk ON public.products_service_links USING btree (service_id);
 1   DROP INDEX public.products_service_links_inv_fk;
       public            postgres    false    418            �           1259    17557    products_updated_by_id_fk    INDEX     W   CREATE INDEX products_updated_by_id_fk ON public.products USING btree (updated_by_id);
 -   DROP INDEX public.products_updated_by_id_fk;
       public            ntgweb    false    355            K           1259    20387    services_component_type_index    INDEX     g   CREATE INDEX services_component_type_index ON public.services_components USING btree (component_type);
 1   DROP INDEX public.services_component_type_index;
       public            postgres    false    417            �           1259    17558    services_created_by_id_fk    INDEX     W   CREATE INDEX services_created_by_id_fk ON public.services USING btree (created_by_id);
 -   DROP INDEX public.services_created_by_id_fk;
       public            ntgweb    false    361            N           1259    20388    services_entity_fk    INDEX     W   CREATE INDEX services_entity_fk ON public.services_components USING btree (entity_id);
 &   DROP INDEX public.services_entity_fk;
       public            postgres    false    417            O           1259    20386    services_field_index    INDEX     U   CREATE INDEX services_field_index ON public.services_components USING btree (field);
 (   DROP INDEX public.services_field_index;
       public            postgres    false    417            p           1259    20671    services_localizations_links_fk    INDEX     n   CREATE INDEX services_localizations_links_fk ON public.services_localizations_links USING btree (service_id);
 3   DROP INDEX public.services_localizations_links_fk;
       public            postgres    false    435            q           1259    20672 #   services_localizations_links_inv_fk    INDEX     v   CREATE INDEX services_localizations_links_inv_fk ON public.services_localizations_links USING btree (inv_service_id);
 7   DROP INDEX public.services_localizations_links_inv_fk;
       public            postgres    false    435            �           1259    17559    services_updated_by_id_fk    INDEX     W   CREATE INDEX services_updated_by_id_fk ON public.services USING btree (updated_by_id);
 -   DROP INDEX public.services_updated_by_id_fk;
       public            ntgweb    false    361            �           1259    17560 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            ntgweb    false    363            �           1259    17561 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            ntgweb    false    363                       1259    17562    testimonis_created_by_id_fk    INDEX     [   CREATE INDEX testimonis_created_by_id_fk ON public.testimonis USING btree (created_by_id);
 /   DROP INDEX public.testimonis_created_by_id_fk;
       public            ntgweb    false    373            	           1259    17563    testimonis_updated_by_id_fk    INDEX     [   CREATE INDEX testimonis_updated_by_id_fk ON public.testimonis USING btree (updated_by_id);
 /   DROP INDEX public.testimonis_updated_by_id_fk;
       public            ntgweb    false    373            
           1259    17564    type_jobs_created_by_id_fk    INDEX     Y   CREATE INDEX type_jobs_created_by_id_fk ON public.type_jobs USING btree (created_by_id);
 .   DROP INDEX public.type_jobs_created_by_id_fk;
       public            ntgweb    false    375                       1259    17565    type_jobs_updated_by_id_fk    INDEX     Y   CREATE INDEX type_jobs_updated_by_id_fk ON public.type_jobs USING btree (updated_by_id);
 .   DROP INDEX public.type_jobs_updated_by_id_fk;
       public            ntgweb    false    375                       1259    17566    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            ntgweb    false    377                       1259    17567    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            ntgweb    false    379                       1259    17568     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            ntgweb    false    379                       1259    17569    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            ntgweb    false    377                       1259    17570    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            ntgweb    false    380                       1259    17571    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            ntgweb    false    380                       1259    17572    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            ntgweb    false    382                       1259    17573    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            ntgweb    false    384                       1259    17574    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            ntgweb    false    384                       1259    17575    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            ntgweb    false    382            r           2606    17578 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          ntgweb    false    200    205    4078            t           2606    17583 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          ntgweb    false    202    200    4068            u           2606    17588 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          ntgweb    false    202    203    4074            s           2606    17593 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          ntgweb    false    200    205    4078            v           2606    17598 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          ntgweb    false    203    205    4078            w           2606    17603 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          ntgweb    false    203    205    4078            x           2606    17608 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          ntgweb    false    205    205    4078            z           2606    17613 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          ntgweb    false    207    205    4078            {           2606    17618 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          ntgweb    false    207    203    4074            y           2606    17623 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          ntgweb    false    205    205    4078            ~           2606    17628 2   applicants_career_links applicants_career_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.applicants_career_links
    ADD CONSTRAINT applicants_career_links_fk FOREIGN KEY (applicant_id) REFERENCES public.applicants(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.applicants_career_links DROP CONSTRAINT applicants_career_links_fk;
       public          ntgweb    false    209    208    4084                       2606    17633 6   applicants_career_links applicants_career_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.applicants_career_links
    ADD CONSTRAINT applicants_career_links_inv_fk FOREIGN KEY (career_id) REFERENCES public.careers(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.applicants_career_links DROP CONSTRAINT applicants_career_links_inv_fk;
       public          ntgweb    false    209    211    4090            |           2606    17638 &   applicants applicants_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.applicants
    ADD CONSTRAINT applicants_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.applicants DROP CONSTRAINT applicants_created_by_id_fk;
       public          ntgweb    false    208    205    4078            }           2606    17643 &   applicants applicants_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.applicants
    ADD CONSTRAINT applicants_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.applicants DROP CONSTRAINT applicants_updated_by_id_fk;
       public          ntgweb    false    208    205    4078            �           2606    20343     authors authors_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_created_by_id_fk;
       public          postgres    false    4078    414    205            �           2606    20348     authors authors_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.authors DROP CONSTRAINT authors_updated_by_id_fk;
       public          postgres    false    205    4078    414            �           2606    17648     careers careers_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.careers
    ADD CONSTRAINT careers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.careers DROP CONSTRAINT careers_created_by_id_fk;
       public          ntgweb    false    205    211    4078            �           2606    17653 $   careers_components careers_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.careers_components
    ADD CONSTRAINT careers_entity_fk FOREIGN KEY (entity_id) REFERENCES public.careers(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.careers_components DROP CONSTRAINT careers_entity_fk;
       public          ntgweb    false    212    211    4090            �           2606    20622 :   careers_localizations_links careers_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.careers_localizations_links
    ADD CONSTRAINT careers_localizations_links_fk FOREIGN KEY (career_id) REFERENCES public.careers(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.careers_localizations_links DROP CONSTRAINT careers_localizations_links_fk;
       public          postgres    false    4090    432    211            �           2606    20627 >   careers_localizations_links careers_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.careers_localizations_links
    ADD CONSTRAINT careers_localizations_links_inv_fk FOREIGN KEY (inv_career_id) REFERENCES public.careers(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.careers_localizations_links DROP CONSTRAINT careers_localizations_links_inv_fk;
       public          postgres    false    4090    211    432            �           2606    17658 0   careers_type_job_links careers_type_job_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.careers_type_job_links
    ADD CONSTRAINT careers_type_job_links_fk FOREIGN KEY (career_id) REFERENCES public.careers(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.careers_type_job_links DROP CONSTRAINT careers_type_job_links_fk;
       public          ntgweb    false    4090    215    211            �           2606    17663 4   careers_type_job_links careers_type_job_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.careers_type_job_links
    ADD CONSTRAINT careers_type_job_links_inv_fk FOREIGN KEY (type_job_id) REFERENCES public.type_jobs(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.careers_type_job_links DROP CONSTRAINT careers_type_job_links_inv_fk;
       public          ntgweb    false    375    215    4364            �           2606    17668     careers careers_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.careers
    ADD CONSTRAINT careers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.careers DROP CONSTRAINT careers_updated_by_id_fk;
       public          ntgweb    false    205    211    4078            �           2606    17673 4   category_insights category_insights_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.category_insights
    ADD CONSTRAINT category_insights_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.category_insights DROP CONSTRAINT category_insights_created_by_id_fk;
       public          ntgweb    false    205    216    4078            �           2606    17678 4   category_insights category_insights_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.category_insights
    ADD CONSTRAINT category_insights_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.category_insights DROP CONSTRAINT category_insights_updated_by_id_fk;
       public          ntgweb    false    205    216    4078            �           2606    17683 4   category_products category_products_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.category_products
    ADD CONSTRAINT category_products_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.category_products DROP CONSTRAINT category_products_created_by_id_fk;
       public          ntgweb    false    205    218    4078            �           2606    17688 4   category_products category_products_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.category_products
    ADD CONSTRAINT category_products_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.category_products DROP CONSTRAINT category_products_updated_by_id_fk;
       public          ntgweb    false    205    218    4078            �           2606    17693 R   components_column_link_columns_components components_column_link_columns_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_column_link_columns_components
    ADD CONSTRAINT components_column_link_columns_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_column_link_columns(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.components_column_link_columns_components DROP CONSTRAINT components_column_link_columns_entity_fk;
       public          ntgweb    false    220    221    4110            �           2606    20545 L   components_elements_headers_components components_elements_headers_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_elements_headers_components
    ADD CONSTRAINT components_elements_headers_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_elements_headers(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.components_elements_headers_components DROP CONSTRAINT components_elements_headers_entity_fk;
       public          postgres    false    429    425    4445            �           2606    20567 R   components_elements_menu_items_components components_elements_menu_items_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_elements_menu_items_components
    ADD CONSTRAINT components_elements_menu_items_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_elements_menu_items(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.components_elements_menu_items_components DROP CONSTRAINT components_elements_menu_items_entity_fk;
       public          postgres    false    4447    427    431            �           2606    17698 D   components_heros_heroes_components components_heros_heroes_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_heros_heroes_components
    ADD CONSTRAINT components_heros_heroes_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_heros_heroes(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.components_heros_heroes_components DROP CONSTRAINT components_heros_heroes_entity_fk;
       public          ntgweb    false    242    243    4135            �           2606    17703 `   components_layouts_accordion_contents_components components_layouts_accordion_contents_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_accordion_contents_components
    ADD CONSTRAINT components_layouts_accordion_contents_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_accordion_contents(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_layouts_accordion_contents_components DROP CONSTRAINT components_layouts_accordion_contents_entity_fk;
       public          ntgweb    false    246    247    4142            �           2606    17708 R   components_layouts_bkg_headers_components components_layouts_bkg_headers_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_bkg_headers_components
    ADD CONSTRAINT components_layouts_bkg_headers_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_bkg_headers(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.components_layouts_bkg_headers_components DROP CONSTRAINT components_layouts_bkg_headers_entity_fk;
       public          ntgweb    false    250    251    4149            �           2606    17713 ^   components_layouts_card_with_buttons_components components_layouts_card_with_buttons_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_card_with_buttons_components
    ADD CONSTRAINT components_layouts_card_with_buttons_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_card_with_buttons(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_layouts_card_with_buttons_components DROP CONSTRAINT components_layouts_card_with_buttons_entity_fk;
       public          ntgweb    false    4156    255    254            �           2606    17718 F   components_layouts_cards_components components_layouts_cards_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_cards_components
    ADD CONSTRAINT components_layouts_cards_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_cards(id) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.components_layouts_cards_components DROP CONSTRAINT components_layouts_cards_entity_fk;
       public          ntgweb    false    259    258    4163            �           2606    17723 V   components_layouts_center_heroes_components components_layouts_center_heroes_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_center_heroes_components
    ADD CONSTRAINT components_layouts_center_heroes_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_center_heroes(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_layouts_center_heroes_components DROP CONSTRAINT components_layouts_center_heroes_entity_fk;
       public          ntgweb    false    4170    263    262            �           2606    18149 Z   components_layouts_component_types_components components_layouts_component_types_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_component_types_components
    ADD CONSTRAINT components_layouts_component_types_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_component_types(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_layouts_component_types_components DROP CONSTRAINT components_layouts_component_types_entity_fk;
       public          postgres    false    390    266    4177            �           2606    17728 V   components_layouts_contact_infos_components components_layouts_contact_infos_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_contact_infos_components
    ADD CONSTRAINT components_layouts_contact_infos_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_contact_infos(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_layouts_contact_infos_components DROP CONSTRAINT components_layouts_contact_infos_entity_fk;
       public          ntgweb    false    268    269    4179            �           2606    18261 V   components_layouts_featured_news_components components_layouts_featured_news_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_featured_news_components
    ADD CONSTRAINT components_layouts_featured_news_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_featured_news(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_layouts_featured_news_components DROP CONSTRAINT components_layouts_featured_news_entity_fk;
       public          postgres    false    396    4399    399            �           2606    18234 `   components_layouts_featured_news_insight_links components_layouts_featured_news_insight_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_featured_news_insight_links
    ADD CONSTRAINT components_layouts_featured_news_insight_links_fk FOREIGN KEY (featured_news_id) REFERENCES public.components_layouts_featured_news(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_layouts_featured_news_insight_links DROP CONSTRAINT components_layouts_featured_news_insight_links_fk;
       public          postgres    false    397    4399    396            �           2606    18239 d   components_layouts_featured_news_insight_links components_layouts_featured_news_insight_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_featured_news_insight_links
    ADD CONSTRAINT components_layouts_featured_news_insight_links_inv_fk FOREIGN KEY (insight_id) REFERENCES public.insights(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_layouts_featured_news_insight_links DROP CONSTRAINT components_layouts_featured_news_insight_links_inv_fk;
       public          postgres    false    342    4299    397            �           2606    17733 J   components_layouts_footers_components components_layouts_footers_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_footers_components
    ADD CONSTRAINT components_layouts_footers_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_footers(id) ON DELETE CASCADE;
 t   ALTER TABLE ONLY public.components_layouts_footers_components DROP CONSTRAINT components_layouts_footers_entity_fk;
       public          ntgweb    false    276    277    4190            �           2606    17738 f   components_layouts_header_with_customers_components components_layouts_header_with_customers_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_header_with_customers_components
    ADD CONSTRAINT components_layouts_header_with_customers_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_header_with_customers(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_layouts_header_with_customers_components DROP CONSTRAINT components_layouts_header_with_customers_entity_fk;
       public          ntgweb    false    280    281    4197            �           2606    17743 J   components_layouts_headers_components components_layouts_headers_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_headers_components
    ADD CONSTRAINT components_layouts_headers_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_headers(id) ON DELETE CASCADE;
 t   ALTER TABLE ONLY public.components_layouts_headers_components DROP CONSTRAINT components_layouts_headers_entity_fk;
       public          ntgweb    false    284    285    4204            �           2606    17748 `   components_layouts_hero_circle_images_components components_layouts_hero_circle_images_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_hero_circle_images_components
    ADD CONSTRAINT components_layouts_hero_circle_images_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_hero_circle_images(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_layouts_hero_circle_images_components DROP CONSTRAINT components_layouts_hero_circle_images_entity_fk;
       public          ntgweb    false    288    289    4211            �           2606    17753 Z   components_layouts_hero_highlights_components components_layouts_hero_highlights_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_hero_highlights_components
    ADD CONSTRAINT components_layouts_hero_highlights_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_hero_highlights(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_layouts_hero_highlights_components DROP CONSTRAINT components_layouts_hero_highlights_entity_fk;
       public          ntgweb    false    292    293    4218            �           2606    17758 `   components_layouts_hero_square_images_components components_layouts_hero_square_images_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_hero_square_images_components
    ADD CONSTRAINT components_layouts_hero_square_images_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_hero_square_images(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_layouts_hero_square_images_components DROP CONSTRAINT components_layouts_hero_square_images_entity_fk;
       public          ntgweb    false    296    297    4225            �           2606    17763 R   components_layouts_item_heroes_components components_layouts_item_heroes_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_item_heroes_components
    ADD CONSTRAINT components_layouts_item_heroes_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_item_heroes(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.components_layouts_item_heroes_components DROP CONSTRAINT components_layouts_item_heroes_entity_fk;
       public          ntgweb    false    302    303    4234            �           2606    18120 L   components_layouts_partners_components components_layouts_partners_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_partners_components
    ADD CONSTRAINT components_layouts_partners_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_partners(id) ON DELETE CASCADE;
 v   ALTER TABLE ONLY public.components_layouts_partners_components DROP CONSTRAINT components_layouts_partners_entity_fk;
       public          postgres    false    388    386    4383            �           2606    17778 F   components_layouts_steps_components components_layouts_steps_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_steps_components
    ADD CONSTRAINT components_layouts_steps_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_steps(id) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.components_layouts_steps_components DROP CONSTRAINT components_layouts_steps_entity_fk;
       public          ntgweb    false    312    313    4247            �           2606    17783 X   components_layouts_support_heroes_components components_layouts_support_heroes_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_layouts_support_heroes_components
    ADD CONSTRAINT components_layouts_support_heroes_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_layouts_support_heroes(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.components_layouts_support_heroes_components DROP CONSTRAINT components_layouts_support_heroes_entity_fk;
       public          ntgweb    false    316    317    4254            �           2606    17788 B   components_shared_seos_components components_shared_seos_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.components_shared_seos_components
    ADD CONSTRAINT components_shared_seos_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_shared_seos(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.components_shared_seos_components DROP CONSTRAINT components_shared_seos_entity_fk;
       public          ntgweb    false    326    327    4267            �           2606    20489 "   contacts contacts_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_created_by_id_fk;
       public          postgres    false    205    4078    423            �           2606    20494 "   contacts contacts_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.contacts DROP CONSTRAINT contacts_updated_by_id_fk;
       public          postgres    false    205    4078    423            �           2606    17793 $   customers customers_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_created_by_id_fk;
       public          ntgweb    false    4078    330    205            �           2606    17798 $   customers customers_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_updated_by_id_fk;
       public          ntgweb    false    330    205    4078            �           2606    17803    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          ntgweb    false    4078    332    205            �           2606    17808 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          ntgweb    false    332    334    4279            �           2606    17813    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          ntgweb    false    205    332    4078            �           2606    17818     globals globals_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_created_by_id_fk;
       public          ntgweb    false    205    335    4078            �           2606    17823 $   globals_components globals_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_entity_fk FOREIGN KEY (entity_id) REFERENCES public.globals(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.globals_components DROP CONSTRAINT globals_entity_fk;
       public          ntgweb    false    335    336    4284            �           2606    17828 :   globals_localizations_links globals_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals_localizations_links
    ADD CONSTRAINT globals_localizations_links_fk FOREIGN KEY (global_id) REFERENCES public.globals(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.globals_localizations_links DROP CONSTRAINT globals_localizations_links_fk;
       public          ntgweb    false    335    339    4284            �           2606    17833 >   globals_localizations_links globals_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals_localizations_links
    ADD CONSTRAINT globals_localizations_links_inv_fk FOREIGN KEY (inv_global_id) REFERENCES public.globals(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.globals_localizations_links DROP CONSTRAINT globals_localizations_links_inv_fk;
       public          ntgweb    false    335    339    4284            �           2606    17838     globals globals_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_updated_by_id_fk;
       public          ntgweb    false    205    335    4078            �           2606    17843 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          ntgweb    false    205    340    4078            �           2606    17848 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          ntgweb    false    205    340    4078            �           2606    20360 .   insights_author_links insights_author_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.insights_author_links
    ADD CONSTRAINT insights_author_links_fk FOREIGN KEY (insight_id) REFERENCES public.insights(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.insights_author_links DROP CONSTRAINT insights_author_links_fk;
       public          postgres    false    342    415    4299            �           2606    20365 2   insights_author_links insights_author_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.insights_author_links
    ADD CONSTRAINT insights_author_links_inv_fk FOREIGN KEY (author_id) REFERENCES public.authors(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.insights_author_links DROP CONSTRAINT insights_author_links_inv_fk;
       public          postgres    false    415    414    4423            �           2606    17853 B   insights_category_insight_links insights_category_insight_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.insights_category_insight_links
    ADD CONSTRAINT insights_category_insight_links_fk FOREIGN KEY (insight_id) REFERENCES public.insights(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.insights_category_insight_links DROP CONSTRAINT insights_category_insight_links_fk;
       public          ntgweb    false    342    343    4299            �           2606    17858 F   insights_category_insight_links insights_category_insight_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.insights_category_insight_links
    ADD CONSTRAINT insights_category_insight_links_inv_fk FOREIGN KEY (category_insight_id) REFERENCES public.category_insights(id) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.insights_category_insight_links DROP CONSTRAINT insights_category_insight_links_inv_fk;
       public          ntgweb    false    216    343    4103            �           2606    17863 "   insights insights_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.insights
    ADD CONSTRAINT insights_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.insights DROP CONSTRAINT insights_created_by_id_fk;
       public          ntgweb    false    342    205    4078            �           2606    17868 &   insights_components insights_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.insights_components
    ADD CONSTRAINT insights_entity_fk FOREIGN KEY (entity_id) REFERENCES public.insights(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.insights_components DROP CONSTRAINT insights_entity_fk;
       public          ntgweb    false    344    342    4299            �           2606    20639 <   insights_localizations_links insights_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.insights_localizations_links
    ADD CONSTRAINT insights_localizations_links_fk FOREIGN KEY (insight_id) REFERENCES public.insights(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.insights_localizations_links DROP CONSTRAINT insights_localizations_links_fk;
       public          postgres    false    433    4299    342            �           2606    20644 @   insights_localizations_links insights_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.insights_localizations_links
    ADD CONSTRAINT insights_localizations_links_inv_fk FOREIGN KEY (inv_insight_id) REFERENCES public.insights(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.insights_localizations_links DROP CONSTRAINT insights_localizations_links_inv_fk;
       public          postgres    false    433    342    4299            �           2606    17873 B   insights_related_insights_links insights_related_insights_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.insights_related_insights_links
    ADD CONSTRAINT insights_related_insights_links_fk FOREIGN KEY (insight_id) REFERENCES public.insights(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.insights_related_insights_links DROP CONSTRAINT insights_related_insights_links_fk;
       public          ntgweb    false    4299    347    342            �           2606    17878 F   insights_related_insights_links insights_related_insights_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.insights_related_insights_links
    ADD CONSTRAINT insights_related_insights_links_inv_fk FOREIGN KEY (inv_insight_id) REFERENCES public.insights(id) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.insights_related_insights_links DROP CONSTRAINT insights_related_insights_links_inv_fk;
       public          ntgweb    false    342    347    4299            �           2606    17883 "   insights insights_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.insights
    ADD CONSTRAINT insights_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.insights DROP CONSTRAINT insights_updated_by_id_fk;
       public          ntgweb    false    205    342    4078            �           2606    17888    pages pages_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.pages DROP CONSTRAINT pages_created_by_id_fk;
       public          ntgweb    false    205    348    4078            �           2606    17893     pages_components pages_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.pages(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.pages_components DROP CONSTRAINT pages_entity_fk;
       public          ntgweb    false    348    349    4314            �           2606    17898 6   pages_localizations_links pages_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pages_localizations_links
    ADD CONSTRAINT pages_localizations_links_fk FOREIGN KEY (page_id) REFERENCES public.pages(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.pages_localizations_links DROP CONSTRAINT pages_localizations_links_fk;
       public          ntgweb    false    348    352    4314            �           2606    17903 :   pages_localizations_links pages_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pages_localizations_links
    ADD CONSTRAINT pages_localizations_links_inv_fk FOREIGN KEY (inv_page_id) REFERENCES public.pages(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.pages_localizations_links DROP CONSTRAINT pages_localizations_links_inv_fk;
       public          ntgweb    false    348    352    4314            �           2606    17908    pages pages_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.pages DROP CONSTRAINT pages_updated_by_id_fk;
       public          ntgweb    false    205    348    4078            �           2606    17913 $   platforms platforms_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT platforms_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.platforms DROP CONSTRAINT platforms_created_by_id_fk;
       public          ntgweb    false    205    353    4078            �           2606    17918 $   platforms platforms_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT platforms_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.platforms DROP CONSTRAINT platforms_updated_by_id_fk;
       public          ntgweb    false    205    353    4078            �           2606    20423 4   product_instances product_instances_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_instances
    ADD CONSTRAINT product_instances_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.product_instances DROP CONSTRAINT product_instances_created_by_id_fk;
       public          postgres    false    4078    420    205            �           2606    20428 4   product_instances product_instances_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_instances
    ADD CONSTRAINT product_instances_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.product_instances DROP CONSTRAINT product_instances_updated_by_id_fk;
       public          postgres    false    420    205    4078            �           2606    17923 D   products_category_products_links products_category_products_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_category_products_links
    ADD CONSTRAINT products_category_products_links_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 n   ALTER TABLE ONLY public.products_category_products_links DROP CONSTRAINT products_category_products_links_fk;
       public          ntgweb    false    355    356    4329            �           2606    17928 H   products_category_products_links products_category_products_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_category_products_links
    ADD CONSTRAINT products_category_products_links_inv_fk FOREIGN KEY (category_product_id) REFERENCES public.category_products(id) ON DELETE CASCADE;
 r   ALTER TABLE ONLY public.products_category_products_links DROP CONSTRAINT products_category_products_links_inv_fk;
       public          ntgweb    false    356    4107    218            �           2606    17933 "   products products_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_created_by_id_fk;
       public          ntgweb    false    205    4078    355            �           2606    18417 4   products_customers_links products_customers_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_customers_links
    ADD CONSTRAINT products_customers_links_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.products_customers_links DROP CONSTRAINT products_customers_links_fk;
       public          postgres    false    412    4329    355            �           2606    18422 8   products_customers_links products_customers_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_customers_links
    ADD CONSTRAINT products_customers_links_inv_fk FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.products_customers_links DROP CONSTRAINT products_customers_links_inv_fk;
       public          postgres    false    330    412    4275            �           2606    17938 &   products_components products_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_components
    ADD CONSTRAINT products_entity_fk FOREIGN KEY (entity_id) REFERENCES public.products(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.products_components DROP CONSTRAINT products_entity_fk;
       public          ntgweb    false    355    357    4329            �           2606    20656 <   products_localizations_links products_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_localizations_links
    ADD CONSTRAINT products_localizations_links_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.products_localizations_links DROP CONSTRAINT products_localizations_links_fk;
       public          postgres    false    355    4329    434            �           2606    20661 @   products_localizations_links products_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_localizations_links
    ADD CONSTRAINT products_localizations_links_inv_fk FOREIGN KEY (inv_product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.products_localizations_links DROP CONSTRAINT products_localizations_links_inv_fk;
       public          postgres    false    434    4329    355            �           2606    17943 2   products_platform_links products_platform_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_platform_links
    ADD CONSTRAINT products_platform_links_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.products_platform_links DROP CONSTRAINT products_platform_links_fk;
       public          ntgweb    false    4329    360    355            �           2606    17948 6   products_platform_links products_platform_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_platform_links
    ADD CONSTRAINT products_platform_links_inv_fk FOREIGN KEY (platform_id) REFERENCES public.platforms(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.products_platform_links DROP CONSTRAINT products_platform_links_inv_fk;
       public          ntgweb    false    4325    360    353            �           2606    20440 B   products_product_instance_links products_product_instance_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_product_instance_links
    ADD CONSTRAINT products_product_instance_links_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.products_product_instance_links DROP CONSTRAINT products_product_instance_links_fk;
       public          postgres    false    4329    421    355            �           2606    20445 F   products_product_instance_links products_product_instance_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_product_instance_links
    ADD CONSTRAINT products_product_instance_links_inv_fk FOREIGN KEY (product_instance_id) REFERENCES public.product_instances(id) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.products_product_instance_links DROP CONSTRAINT products_product_instance_links_inv_fk;
       public          postgres    false    420    4436    421            �           2606    20401 0   products_service_links products_service_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_service_links
    ADD CONSTRAINT products_service_links_fk FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.products_service_links DROP CONSTRAINT products_service_links_fk;
       public          postgres    false    418    355    4329            �           2606    20406 4   products_service_links products_service_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products_service_links
    ADD CONSTRAINT products_service_links_inv_fk FOREIGN KEY (service_id) REFERENCES public.services(id) ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.products_service_links DROP CONSTRAINT products_service_links_inv_fk;
       public          postgres    false    4344    361    418            �           2606    17953 "   products products_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.products DROP CONSTRAINT products_updated_by_id_fk;
       public          ntgweb    false    205    355    4078            �           2606    17958 "   services services_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.services DROP CONSTRAINT services_created_by_id_fk;
       public          ntgweb    false    4078    361    205            �           2606    20389 &   services_components services_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.services_components
    ADD CONSTRAINT services_entity_fk FOREIGN KEY (entity_id) REFERENCES public.services(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.services_components DROP CONSTRAINT services_entity_fk;
       public          postgres    false    361    417    4344            �           2606    20673 <   services_localizations_links services_localizations_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.services_localizations_links
    ADD CONSTRAINT services_localizations_links_fk FOREIGN KEY (service_id) REFERENCES public.services(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.services_localizations_links DROP CONSTRAINT services_localizations_links_fk;
       public          postgres    false    435    4344    361            �           2606    20678 @   services_localizations_links services_localizations_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.services_localizations_links
    ADD CONSTRAINT services_localizations_links_inv_fk FOREIGN KEY (inv_service_id) REFERENCES public.services(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.services_localizations_links DROP CONSTRAINT services_localizations_links_inv_fk;
       public          postgres    false    361    435    4344            �           2606    17963 "   services services_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.services DROP CONSTRAINT services_updated_by_id_fk;
       public          ntgweb    false    205    361    4078            �           2606    17968 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          ntgweb    false    205    363    4078            �           2606    17973 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          ntgweb    false    4078    205    363            �           2606    17978 &   testimonis testimonis_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.testimonis
    ADD CONSTRAINT testimonis_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.testimonis DROP CONSTRAINT testimonis_created_by_id_fk;
       public          ntgweb    false    4078    373    205            �           2606    17983 &   testimonis testimonis_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.testimonis
    ADD CONSTRAINT testimonis_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.testimonis DROP CONSTRAINT testimonis_updated_by_id_fk;
       public          ntgweb    false    205    373    4078            �           2606    17988 $   type_jobs type_jobs_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.type_jobs
    ADD CONSTRAINT type_jobs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.type_jobs DROP CONSTRAINT type_jobs_created_by_id_fk;
       public          ntgweb    false    4078    205    375            �           2606    17993 $   type_jobs type_jobs_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.type_jobs
    ADD CONSTRAINT type_jobs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.type_jobs DROP CONSTRAINT type_jobs_updated_by_id_fk;
       public          ntgweb    false    4078    375    205            �           2606    17998 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          ntgweb    false    4078    377    205            �           2606    18003 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          ntgweb    false    379    4368    377            �           2606    18008 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          ntgweb    false    4374    379    380            �           2606    18013 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          ntgweb    false    205    377    4078            �           2606    18018 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          ntgweb    false    380    4078    205            �           2606    18023 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          ntgweb    false    205    380    4078            �           2606    18028 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          ntgweb    false    382    4078    205            �           2606    18033 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          ntgweb    false    382    384    4378            �           2606    18038 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          ntgweb    false    380    4374    384            �           2606    18043 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          ntgweb    false    382    205    4078            n   e  x��\Ks�8>;����
E��KםK�v��$��I*EK��5E�H�������@��gtHD�����Fw ���۬X���L��b���뇋?�w�۷���芐K/Zco�Sb߈�~������u͚m8��QPB���}��~�@=B8����NԷ�c!������JځI/��i�g���žN5�¹ѼJ�;q+�W�@�Օ����4���=w�)A8����[�����F����9�vO���������#��p�aS+��.-�[V!�;gY��N��U�jϪ]V�YYp�r�⏫�����j}�ە@�tǮ�vy�vi���}U>d[V���A�j+�+Ɵ�# _�{V��s�U���,� kw���{yY�9��f�C��H�i��ȲZ�x�Z<D"�{Z� ��f��Q�i�p�]�Ö��B)�|�hH��R�Yq��U�g"p5�*�z���LD|��Ĉ���uS�9ۈ!p� �53(��9��ۗG�<���<4s\CD�Ĉ�x�U<�����[��3<"Db�<8�8N��#n��z�z��@���i2K,QM�:�H�����x�yܕ&Bw8�7�z�'�QD'���@ޔ�-N͜A�t��p``����fN�r�8b��I�gg5�L�B�:��<�q�x�Lsf1�!��I>��@<�_�;F^�S�āt�%�l6	
��Q;�'Z���ı�"�N$Շ73W��³0Fq<	���"��q�>"Xc?���fqL0E�j� p`�/2Zn���80�3�T���������āU`�jY�1�dRu80g���Ѫa�}�Y-?]�|�1��ȁ��31mh�p`ϰL�i�aەm %��ġÁe��r�9������e�.�|ݥ�=k�7�q�P�C��H(ce��5���4���O4�80!sL������ā���<�뻲����$B���ā0�^�}��i߫Ál0!�h.>/ܰ����b������+��p�����^�[��%4�!���"Y�L��dHsY���vY�C?�R]�)�N�oT;�L|n�:��0�$C�K:M!:9%4�!�E�RQM �0ФC����^49
�@��t���7�P+�E�����@:Ԑ^�.�uv�	1��HCxY�"�&� �c�eM������U�f�:�s��5�����~�6�����nі՛*ۋ���3/o����W�P��u��WZݲ��'������\d�� �?F}��Mט�12��1�,�O-��n�ç�9���M&:i�$.�r�m�Ŏ�5�1=���:�"1���1�ՀY��Z{~3��O�G��i�g�_m��#\�X�?\�Y}�s��-��Ϩ��;�#`��8^{��6IqX.J�̞��M�+�uWCm*M�;ż��r���9TlF�RF"f�p����9�.���-����Hn��Op��>�U��B������u�#�����o���q̝��:�ۉ�WOm�|�����v�)0�J&�	f`'�0�E�2�Ś�1������dx��䶫|/���G��x>�zl���z��E��O��-�����ե/���8���Ϟ�x\�p���k�����6=i 0J��RO3[����#:s7e�C���Sn��+��I����p�wip%��qh���>AQ�{~�+�ْ>ys5�������aw�X��P2\������`>A��� �J�t��"|���$����~�|�J$���1��}2����P7�N�p���T2�Ȯ�����"H�(6�j��B�A��׬ q��"��݁{b�U1��}��!��s
	jĕ���'�� ���Z�u,e��W�S�q�ڦIoy�¤'�*�Q�E�)˦��һ�þ�"g��Ve��J�靮|��s���FzN�{Sn��S���z��kR�R$.�h�_�������qc�s��������<�ս�KzI��v�5|%�HpϞ�f�z�O�u�ẩm�����9��2��/�fpc�|J���O�7�G��WV�o�����j���ð�|�{���tC<�%h�W�)j�c�	���a���ݽ5��l�/6�n��H���s�$����<�0}�k7��C��l���.,J��Du��?�U`lĕUXT*�<�l
�������ة�L]oI�/Dϖ=��NӪ�/�{FqY1��j7�&���bcc�oX�o���;qP�e����4F8!F\���R�٘���qu��"���NZt��݀��5�ߠI�����hPw5m�IF<P��5���?�cR���X��&X1w�>:<>��$F\I�ܑ�~�I`��A�S�fZ/YU7�����^C����8WvjE:�N�9�Ӫ핲��3V�ȘV�UcC�"!��Ph�o4�p�@Z��[��D�c�����D�Q�M������6Gx/��H+�/���4�RT,F��qey.�뼞��lwvG�W����� �8[���l,o��v��<�]c�s�(6�J"��F�����4�N��J �}}�R�M�ۉJ͉}w�2'�}5Ssr��x�-�G\�亹�B�w�q%�c���t�}t�ڌ������QMZ5�l#�j9yaV�7�.�#��/�u�&9�D{�OݧT4��xD�ڏ���_{g&���Xg7ܺ>4MYt]s�niw�wU�KӒ��{4��G7���z���~Lđ�$�l��p�`N��ٽ��uv����	G\��(~�n]����1�{��W�O���u!4���g��>?��i����!�#ߧF\I�tz�UdN������kH�?�0�Aj��w�4�v�-�n���Rc�DH&6O��Ý#\	�t,�5D����¢���ㄎ#��v�1�9=`\`	\r��8J�8f�z�%��+�F\�ea��MD',0� X�8@Z�T���3]�H/h$���S�}\	��O,^��W�9��SH���q��B�qB#�ج{V}�����vW6/ �=���O�A�WR9����	�`���@� =�L�WR9��GRͰ6>n�v���3�3?{G�/{F�3�}�;n�r</���aL��q%��B�K��؈�p�瞃�9���OMo�Q��;��畍�f�畍��N�����\_�2q0g�����O�ۆN ��O.���޽{��[�^      p     x�-�A�!��cV$�����;�r���J�`�yK��ֺ�?��s��O�HDH!��A佒�H��H��H��H��� !AB�� 
� 
� 
� 
� 
� ĂXbA,�� �g�
�C/�-6'o��{8�x�i|mɴm�FM;5���h+�<���m���m�����
������c��yl��K���y�yl�O=�z<ї����o�Џ�[�Y�q��a�e*V�{|G9$����M��'�ʦ<K�����!�S$�HΑ$�u�:K&���7��bDg�      q   �   x�u�=o� @g�+�a܏([��]�f��%Fr��J��%E�Zɑ���{0�SY(���BT,�������38���3`�pÈW�g�J��8�H�W��k{��[�}?��h��ڧ��QWg��Iy��65�*Vu�-�s<�KQ(
C�n.��L�	��L��)oFY����x�ա��~��M����5汿Ä_���E���ޙ�)o����~-      s   �   x�3�t�I��tN,K�I-J���,H-*��K��K�
:��&f����*F�*�*���!�a�F&ξ�.���nA���&�I��������.����FƑ>�Uy�.z�� ����3D���)�[YZ��#�M��F�V&zf��\1z\\\ SM0�      u      x�3�4����� ]      v      x������ � �      w      x������ � �      D   8   x�3����NUp*-�H-�4202�50�52U02�21�21Գ42�)n�i����� MI�      y   �   x�ՐMN!��p�w�i�Ow۲�3�qC7ϑ� :o/���h<�y���UR%ȃ����L�LF�1��p������ί��{X2�Cq�ǋwݝ��1�a)X��)�\;�=�fJ�Lu1��Լouoq8a5h����a{gDr)>r��X��ٲ��;B��'�f��/�&�Y	ү��Y��v���xå�\����O��5,}f��$��      z   �   x���K� @�p���;��n�N")J\���n�4Űa�{$�tz�}�qY��!wcm`�ܽG�U��hq�9��ws�K����옻c$�!\&����,(	�, �V?�J����Զ*�}�fzX�F����#u�M����~*P^�%	ՅhP�P_�V��\�֐ į[zm�&-�db�[�90�޹      V      x�3�4�2�4����� ��      }      x�3�4����� ]      ~   �   x�u�1�0���W�{�rwi�����ɱK	Ŋ���78����>�{�K��i��SYcmi���������y�HQ<Z�%��wNa΢���H�U���!u�~��Q�VkC���{��߆��
>ԍMj?�鞆�6�Nȁ	~�*@Um)2w�������-h�_�w=�      �   �   x�u���0E��+��b;�f�������PS���|Zi+oGW�W6�m|�� ET*]�-���-x��-R���q�ԓ5^S���uA�h�sn8�W��-0b���ܴ���MPh�"��[�7�]��_y��!pgU N�|�3X�X��Դ������mG-+`;{ O���}�5H)�i.[�      �   X   x�5��
�0�|#����Vpu)5h+I����W�t�l{2��4�WH�P�̚%���ѫ�z4/1+���S�X��${C�OK���K      �   �   x�u�9�0���0�@BwI�"Ǎs�	�Шyb�e����:���{��}�j�6�*��Sfgr���h$���AJ���-DU��sݸ`A�`�`.�g�Vc�
)�w�A(�>�,������򚪮�/<r��r,]��=������㳣      �      x������ � �      �      x������ � �      �      x�3������� 
C�      �   �  x��[�ܶ��~
v�60;[_�������Rǈ,
(�3ìD*����W_���'�w/�Ƴ��A?��������/N�Ҿ��n�;�l��Z��h�;��P�:e:�*��S�(�B�m�KY�J�rX�AaYY�����S�S�d���x.�����i*QZSi~��5��謰����N�2��J�>j����+��أMxPe�Š����y{u��W����5��e�|���Z�B׺ۋ~���v��zkd�~������>���ɾ�C_���9�,͞�=F�tyi� ��[v�;5Mo*�`n����d+}� ���"_d�?`�����=0lφl���"Zǎ���V|�JZ�;T�հSN��Sq_>�|_��M�;�+�l�*r�V:�u��]0�������vϩ��iO;�`De<h��Inz~lX�'wN�݊��������S�ܑ����l/��ۯ�9۫g^�D��S�^idV�W�V�8ܚ�zGr�[M��8��R��*K��dE�&#�������_�Fny�j��S��ɰ�z�oO~��ɓ/>��ޣ���@�����k��i!˛����Yik랺mq��g����W�𣦭�~�e �ρ*%d;��:}��[ݬ�=̩ !,M�.z�Pt�K�����k�oe��-���O�_E3��z��N�iOT����ckxjOx�9��.�����9U'u�Y�l�[xH�Q]l%,f윢�*�F!r��pHR�r�kh�d&y��p��p�c�m��$�Mȯ�ۨ�r���N��
��F�tp��.k?�o���%;�g'��N6�	��s�����pE�&y���L@'�՚`�+%YI<6�!rf�Z-2���a�9�=��B��+D�)���Q,���ÉY���ԆS��	�X2��N����u����aT�݁[怣t?=_�9�0�Z��HM��(��k�-l�;�(F �Q>�{T_�/�����Yۃ����A_����*8;4G�^U�BնG���/�Q�����+�2�4<������0��';X�o�ʨnmI���zM<�Mq�k�b�b7�C���K^'�V��vzx��9��-<*x��K�p�t󿈱�T;Z}Xv�g��v�9,pj��1o�y'8u�)Q�+�(�\�K)vNm�<�u]럞�ð.㦳N7kpz~zE9��\^�40��i�C�-��!���dw��_�W�Gmz��rʹ��V���!;��;.����1HjcB�MR|r.�*ac��,7A���m,-�a�f^^d^V��S�c�b,d�FD��_I�g)M����N0��J�",Oy}r����!��V���b��fѧ�f���*�~�cs^8n�ӷ�2b��yU�*O_�U�)���:�E����k
ZO4���)lJ�,7ӵ�̵x�FyK��n6T�cL�rx�.1�`��7��X��!��j��*�e���Dg��bRY�K�Ҧ��̩Y�RD#��َ��w��p�޵6Dg�Th"21V�A��E�6.�KŒ���+�x*�������]�0�˅犒�-�?�r ��a]���]`\nb���ު��glp�OJ < � m�;B�R�(�k��\�c�N��c6v�W\i��a;C=�A�0�����#t	w���H����d��Vuc�||�5�b��Y��w�f'��#({5�(��(3�a���`bN�T]C�!�[�f�!ÕQ4+�MM�:%��$HyTR�[U���U�s����͜�Mꟈ��8�ţ���dQ8�IS�s'�ϋ�O�5��#���O��bS��j���~7j�=�r��
#8	yR�˨�ٌ�������k�B�a����G?�}�r�u��؁��d��˾Bma��mU�5�ݬ��hRBZ������������Ǌ�P�`��:�X;�C��}�QU�ɢ�~�C�E>`Iιm�O��ꀛ�齔����'�#�+lۢ��M��P�y���AӃw��T�<����ԺϚ�h��9�b��*LZB�pJ��)��r�V��1b?қv�Q����6Ċ��9�p����y�]L�#8s��'����vQ����ׯE���d�������#b�Z7�(RG��S
�o-��GJ�:��{���Hܾ��T#fฒ��~*�2���̋�Ch.�կL��N����Z�6���aQ�6tƦ�$���bغ�41ˇ��v�m��f�w�S>�����W���+%�ċ	�KTB����Wd�+�o�N�vp*�k%���n�Sa�*#Uta�����T^�!��\!���zO|��<����q�TJ<+��P,��&P�	�¤�Xsumx�;t��3�N�5�����UH����d��	�Z�4ߘ	!����4���\�Vs;e\P&�h��t��ƌD5�O��x2X�i�z���d�Va/4� ��N��AS�c����'�Pr���336RA0BV��㬶| ��S���3���uGɆ�=�x�������2c*�T�ԏ=j�X�u�~��75�,���k��ٍ�N�pɔ����+�AVَ�(��M�g����J�ԣ�����U��r��Ca:.�&��"��
SONG��3��6���ґ�rd�
��a�)h���~�蜬x��E�G�u�V'c7�{��74*��R�Ӡ+�wr�U4#G��iOsw{�u#o�C
��0�p�(jTG ��7�6�h���p�b�6$>��;;�{"P�%BԌ~H�i��?B	M���M���1���tn-'Ѵ�5����]׳)�G�5����a�F}�5�t��*f.�ϷR�Q�06�8�Ui�A�0�Y�>uu�J�4]���Be�����q�Z��Q�x��B�j��W�s�:r��� �n~E5�g0�w�~M3���dYSɅ�ѩC^$�IN���
!�בH<�+�tmɅЮ��J$��Z"��=��&N��>��Y���[K�a��c��'�繸�ňt�(u��������p�6̑ǃd�*\7��A��o9L*΃K�CR��F����#n�/a�p;�ض�e���vk�
�u7�>�A���t�X
���X�&��o}�G�A{�=Q�u�o���a�@X.�������˫f˫f˫f˫f?����'�k9���<�?{��o�k��{��^���k��{����k���X�w���-/;,/;,/;,/;,/;,/;,/;,/;,/;,/;,/;��_v���޽{��ѭ�      �   �   x��ұ�0��M܄�D��'�Bؔ)�^I#0�����ݵ��X�e�S�4u�P�+%Tdȫt�{R�P�c9��eD){�S�%m{{�L�fb�!�6@|�Y;m�qR$02%����1�ӆ�Ü�e<I9޳�i#��v���։Q�p �X���o������1�]�]vX�[�������Ɯ�6�@��O&P� �( +�      9   #  x�͒OK�@�ϛO1 �$M�����ŃzЫ ��YMw��Y%�޴�
��sޛ�&�$iǢӆП�<*M����D����r>/HGC_�MZT����D<`GA��؂ud ���F�5\�;�[��ښ �l#��^��Y��VE�u�G~��&��o�Ţ���d1�^����Vwc���w`��0J=lM�	װ�~��B Oa FC�L
[��IyH0�s��P1�|��H��ʯ���vJ��������������-2�6�K����ᗢ����M��x����<I�O���      ;   v   x�3����K��6�012�T056U0652�LN���Tvr4t4��2�t�M���L��+IL.q�+IM/J��K���L��Ts:C�p:���+'�f&��t��m�)QN4#��=... �E�      0     x��VKRG]���@ؒ?�P(!ٖ��(̆MMw�ty�+��̨��5|L'�����y�Y@U~_�{Տf��*��������&Y�q6�g���I����H�S-����e_�ӣ�cلH�8�{���V��֯H<ߐ�����,��v`g=ǊL�;��N9p,�"r��j����x�Ƅŵu.R`gzKr�pkSG��r�7źu���x;dĀgEC��c�%U��R0�^�Ƹ��驱mˁ}ڕ(9Lx\�
X{�:nV%�`�ߍ��U�F�l�Y:�EJ����X��A,����j����`º�W�]��8�_s.a� m����?�K#.�෾v���^����\bZ�z�����NL�pF��"R@�̆��b�xk�
�Yq����o����lW��cZ'�{8�Xh�G��#�I���`7���_lB}��zc��f�E1(C�'�,��:�EϰaG���f_+��]�C�g�*�E?S'����Y�xK�������Egm��ȚZ���Q0�p��i���ϟ�2h�"�s�
�t]zR`���\Z�iB��Hk��j����6�Flja�έau�1�X�%^���Īhc�����VZC^�m(d4)ٔ��k�����Ze!�3#�=+N]!u��@��'	�K���� oW`��|7;�`?қ��ogO��� QOv�T�E�zNj�h2T�Lc�� @:Ty�)�8`7�;SNĘ*����J5��
J�1Kq%��:_[�䇄�rC�TF�s]Z?���=|r4<���~��Gz�q@�viײ��E�.�K(�v����*��<�hW��6����L��1�,퉤�dG5KL �P�.חP����鞸�+�Ҥ�+6����v�}!�	����$���1XH�5A�f��GiocR�=�!#I����i-�7�+ jxj��('V+K΃*c�Ԅ���MF�#���ĽBը7�#~���|��Fꬵ}�����ΰ�y$������b�?>��?+?<|�<|�<|���s��/=��><���g������o8%�H      O      x�3�2����� l       S   {   x��ϻ�0Eњo��H�3Bvp�"@������k �6ɒ���<�y_ۚ��s��X��-C{�B\���a
K�u��n� �a%�K�U�˒�l��p���[8�������ioM�*��7 ?��h      �   �   x�u�;�0��{�=��i��h���Y%�`���z���CK�)f����`I-�(#�]zpH�C�d������]�����W���;�1S�چ$:�_��iN�-w�'��w'|����~�z~f���:v�s�ǂ�>f$O�      �   8  x��W�n�@>�>�V�z�`��zC&�PS�����r�V/���o�C_�׼Xۘ@��i�"a	��7?�ovƬ�:_=��X������?lh�X�D�q�C�P#�����oH�Ŷ�4�H�� P��)ì�\�G���H�$t#�*m�oJD�R[��H����[y~$�T&�X�c��4L��s�*���!�~��/�i�S���N`Qb(`�,�P�4�PfP��HgA?��L�}>'�.�����f���P�#�2M�&͕�\����Al���ZN�"<��J_��=j�n"O��#����sy�M됆���PܓN�W�x:��y�s�r4�.:�%�{��2���
c�Rl����TM��vE��;�����8�y,��c�|�2@�k��q�Y�}�ʦm#���
gs����\��D�����j����_Ը�����.! t�A�4��5$�M/�u�ZXVe���D���_��!�S�Ӫ��t�"�n5l��>���m�����q��� av���?�"!�DD$}�Y�i�'��B���a[�:��P�F�61Y��x6)y����/�
gu��^sv��-ԕ�\,����Z$1�H�	١��s�m�k���Mo���۬C���}ɮ�w�5����d/0���TR` H�H��"�5x�%�q�M�Ƚ7#@�E7Q�@�%�f(p[�f��Z�5��ٌ�}��m`�rG#p��6�}{�Sl��+eW��v5ک;F5z{��B�����V��N��^l7Ŭ:1��;XubNuI8?�޲�SpXPs�1�%�G%7���S	�:����ݪ      �   �   x�MQ1�0��W�T�Iی�N,,-R��H%e��THԷ�����,�w����D�i�Ҙ�k���^�I�kSNs�:�
H����i܆Zm�ۻ77�a	�2o_ f�����F	��K�����m3�����Ja-2T���+��|hw�)-=�J�^H!�b��&�D��j��@��[(	Y͋�/�۞����d      Q   �   x�m���0�g�)@�P�È:��J�]LjA��r�>?��J�`�e�w
�,��<@��s�R�w�y� �Y^�������T��X��s�H��� ������?�:E�|��t<�Q)�Ŷ�v��z�EӮ啦R�=��1f�(?����d��v�B�z�\16p���	�9"�Tpgc      U   �   x�}�I
�0E�_wi��K�^�&�$���
��U�<=}Y�������i[��c��~��2	zտ-��*�M_l3��,f�u��Ln[���6�Jfns�SWX�Z�7NQvZܮ����]���L���&����,Jω����      A   _   x�3�tO-Q�,Q��Sp�*-J�TV�L���IM�/N�I�2BV����sCVbL��4Č�!�� l�%AC�bhH�"�6F��� ��~      ?   P   x�3���L.�/�O+Qp�*-J�4�35�2�.l��XT��Z�bWe����k�]�%vaCT݆�h|#���P���qqq ��Bp      �   �  x��W�n7>SO1A��"���SS�IZ��Q���;Ҳ�[�+y}�C�%�}�>I��d��4)`�w8?��͐�D]i���F6���uI]��7���:S����S&MF;GKm63��{��G���]0:3�Z��N�S�Hm�����ǭ5����Ǚ�vQq��|�~���枾���#d�~aZs&�S�2.{
�昦�$^�2[!�\���^�Ud�央��7y�NLOW+k,��	]ϿQ'+��İ���t=W���Y�d�'�+pdbg3�%[��j���(�	���`n8%�	�`�.����<�i&I��"�:"--X_�.��C���R���!�T��	/�kQl��� �w����d��
�_���Z�C�:В�e� ���5z#��
rboxF��_�ZP��.�aOͮ��i	��b��7��b.j����(��1�$m��α_�:;���Y h�~�9���)�qd���
0[xX�1zqcB�jK��2�ڃ(�o)O	�ZY_h���^2BK�ӆm�� ��_I���P�y�+z.<��a$
�:�R� o8p2�fZlv,��3� X�z��(�& �aGQHlt6����K�b�����0��U�suQd**.
����}�.�%�[m䔃o��Q)�^ ���C2�D-E��Ͳ3'��[F�
��C�؋�u���.�"7�_����;l���A~-�d�PZ����>Q?�FJ���dB�k>M���~�|v���2�m:/��\A@��\�~��oҖ6��w��_<Uo7�zٵm�Y����4�R��H��k�5NO輒��m�.3��7Zzi��ԥ؝����^~�j2��PW����u���-
��K�� e��h#0���n�DD&T��u%h�+�<�X���Q[[R�w�0X�Ô)�K�����F��(��2�o�/W����(��h0N.c�j��d�v d"��_�.S��7����W�2��9#*������B(����U��K:��rb���r�z2VI�-����m��H�y�w�M���1!����_5���J:��;�	�!��wK/�
������J���3�B��ۂˁL>��#���mؿ7`7N��@ �ȸ��mu��nt�g�r����%�u�M�ן>�R�I�gЁ��c^�)x�Bi6��1�#rx�K��A����	U�#�J��uR^�.��B�3�]�ӹ�(�so\\�&��?�c��      .   �  x��V;r�F����H��]R?GRQ�Dv�T��I�F�@�����C�|��'����t9r���``���{�{V�sI�`�D��w�T}�$�q1�$-���K�'d}J!�D(�z��_ssE� r-q�:g,]�K�w���:��t�٘ƈK�%���KV�dǡ��y/x�s�/��V�-�vٴ�+��䫄�D�ωz�#|%���jII¼s?Z����HX.�W���l��0r��s���d�_�����_]p��ꭰM=�~k�Ÿ�0�W��m���>H�P�V[5�%����k����ճ����}��!��~|��WG��z}�O�����϶���͙��Gi��������v��m��,�����XLb�ɇ����ƨ�	u�d�/j!jx��N�t9r`$m�FHM�-�L[�͟aS��ͷH����c�$��H��'X��c�����euq�� �.&�p���I�1.�Ք[����a��q"���6M�H3�0ۻ�3x�����_��!�J�6%ߢ����+�_�� M(�ѷ�G<�!C�.#���P�>q�,I��L���������  ଺�ګ�� 2���m��o�j�@��STC����`\�Ac���"����F��B'�kܢ4���-rh-\ BĚ?#�xtj��hB!�C��6��G��-� Vh�����:�K�cۈ�,�m����= L����v"��:�����h��ig�0���͕�A�B�(
#� �7��x��V��N|4ZC���`x�y��3h��S����ҦS�ӽ�a����k|k�rNA�M7��

�X�����k�נ>�h�>����!p���.�a������P��_��[:��]ҭ2:�f�D�J(dV����9����ua�<콂Aj�ս��VwDDm��&&��;�����2�je8�݀o�J5Z�h �vZ.~Y.��	��o      �   	  x��1r�0k�5i�$�q�� 1jJ����v�'�H���p\�O�V���n0�P%m�3A&٠���KV� �EHk��� ����A��9e�}oT}4���ms�/����Ul�8��DM���V�
P�D���k�e�٦�^�ل��~���� ��"�t��PBC֎vc%3�>)6>�&�J(��!{O�l��i`,Jo�X؋�F =����^7yзL0�6>�����s�/�D�����?s��4�/f�#�      �      x������ � �      �   @   x�3�I-�-VPSp��K�,���+��I,.Q��O�L�LM�Rp,MW02W0202�2"Q}� Sp      �   �   x���K
�0E�q�^"���NB�A�I����s a�� �+ɓ��w?�y�uۮ�k���~�c�_)4j+�T�`� iT�V�P%[%�x{�U�*U�U���z%4R��B�`��B3Ys[�1�Yc������s�T�� ����      �   t  x��V�j�@>KO1�PZ0ª�4�L�I�K.�ݑ�X�Q��F��CO}��Xg�I
��[��`ˈ�o����U�W.���ԥh��A�Ra,V�Eqq�U���5`s��3�ym�u;�Vs�hc
�) 9��cȀ�Uy0�����)m�;��cT֡?�oRLAw�(C��+/�;�}�7�&gl�\,W�⮵�sl�QG�`#�����e�4 5L�4���Xvf�� �w���ΰ��u�&���T�V0򵞜)ż���w���8V�r��֫��ۃ�#�Pg�X�-$W��0Rʛ�(�\���Q2��%���l%�Gos�8]��ٚ�A�q6���_y�Cg�*��I�����ǈ:�0
����喱�^���'W�ݵ��&*�4Yw����%�F�r���@��Ƽv�e�[���9|�;�M���a�P<�#p�dp���;eR�Ǫ��'9"��������(����:
0
�X�|��zYH�'y���1(�l|l?t��Z�����T{|Lβa�O�����������O��p~��h�3G��X#r�*����O'��ǈr��0�b�{�c��r�9���/&�����)����z��^O&y�I�z���*��bA"@      �      x�}�;�0Cg�0�)�q|�N������ѹ�z�G�(1��q�{{~�|_��L�pT�@
��`�K�K�.	UoK��Bp��,YLU�:!$��w�D�aM!�_S�jԉ�<���F~��      �   &  x�M�AR�0E��)t ��,��Q��DLb��Lv܁s��zN��v�,�����s�ʹh��=�P����l�k(��P9�+������T�����rNTR�.�A�Α�*a^ƴ�]���\�"h�փ^�K[m=Np7%������|Gc^�b���?*�<� 9q�\F	.���GH�����*�n��=I�TF��0��yr�χ	�it�<��p�[�f�f�kuQ1���Ԩ���J�����p�bM�6n~�?�_����|?T���h�	��m���/a�7      �   f   x�}�=� @ṽ��b�pL�I���r�����@�@/���_hZ�V�r�
g��ׁ����m���P2g���'�l��"!3�$��>���(X�      �     x�%�=N1���S�2HQ$�HT4#{6;�w&�'�RqJ@�rN�8����{�>�axj\j��WJ��/5�GF� Q���S��x� δ"z7�"����zU��O��eNrd?�\��d�@���}v|�J��n��	�}Ҕ ����+m�H��0��-wu7'��\F�>��&�{ԙAZ.�!�������NZ��$�����}�lV�V4e,�/��Z��m^fWG�`�W��I$�!ݻ����]�6mD�����q�<��      �   S   x�340�4�44�L�I�M�+)�+JM�/J�LN�\�� y3��F@y#��)vyc��1�!�4ބdN�M��Ƹ�����  (7]      �      x������ � �      �      x������ � �      �   �  x��V�n�F>SO1��8ɱp��:�/��rDn��ew�R�Sޡ�� =��&y�~Cё
8����r~���!��[!�B��Q|v=�6Z_�2Dʵ��\X�I��6�T�]N�o򲸭9�Z��ؓx��dkpSR�{n�?Ċ�}���'M�B����:���5Y��
6+![
�)���)7������`6�-K�Q�$���gQZ�c�>-l!)ǒhm�.�L�#�(Φ�L�Ή�$=!��Rp f��;jc�_��2s4�DI-���l�ŘH	�g�8JZ����Q�m�p�@<�&n$#!���s�Ҷ6-��.��C��p�x����5��4��９�1�@/;�LG��;4"r���c��YHũ7�k.����K=cdh%6�G$ǔ#�5l��'4Z���Se�hDɔ:�=xb�I~C���o$!h)��4��x�WVW=c�
A��hS�I�.��C�;p �E��;!Y��ms����a)C@�RL�]2��%���)m�J���$'a�tKI?��HE�z}�if��z�MT3t�,,ț�+��:�N����m�$�$϶	��Oo^�_^_�_�Lf��/_@��	m�㇏�~���蔊aƛa�Al�8.�A�:�����#�Ѿ��U� ����[��e}P��+p�l���a�L��d�Z7����ɐs\)���3՚�l���?�%��ب�5��K+�~���T9��6��!�Fb��O��짋��Qq5n�/���a�[�y�԰k�Q��������f��I�vX��"&�����V�ߍ�!ave9ο�G*���|��ǰ]6�<_t�zxbڥL�VX�������7W�Х������`�,��'�n�X�%Q���(N���;���=������ŷI���:��xg���x�@���=�/����o����~�+�n:�L��d>	      ,   F   x�32�4"#�Ԝ��Լ�b��̼lΤҒ��<NC.#KN#cNS3\�Ɔ��f��&8�8���l� �C%�      �      x�3�2����� l       �   P   x�32�4�Ԝ��Լ�b��������̒�\NC.#��i#.#S��1ic.#3�^܆��Mqn�6�ix� m�8�      �   w   x�Ŏ1�0k���H�#THH���E��l��h�3S��ݸ��Ba3�����ӎ e]���ҏ�"^�e��+���/�m�j��#F$�jn�-='
����ǳ�����\8      �     x��UKo1>��b�)��H��4��T	PEA���;�x����j�=���>�@n(�$�x�=fƋ�+/[�zFWΈ��b��;�Y]Z�V���처�E�h�*K!�ϏJ��o��lu��q��o������y��hu�ge��Q�)�9)�#�j����>?�cl�YQ�}?�Ӧ�(�\��8Z��yY��c���LnM���(��zq^�p 	kN+Y�)j+A��aNkD����aI;�)���Y���F%�WŔ���)[�g�|�?�@���9L�U��e�zꙺ�$q���O'}���uT+��J"e����M'��q���\���Y���g�N�E���G7��#@�1Pmjb�lH�8c����^ُ�[��j[��t�	Q�g�� &���/�n�������ݖ~r��XC���U~��㑯X(�ʏ��7��ا�������t�Oɤ,�V���B�����t�u�*K�H��Z6�}b�(#��mYm	�l�W�Ͻ)�NY���/I�˻s��O�` ��������ك���Xb pb�o���9�3��zײ�y��ON+c����  �吏���6LF=�[����$�Y{�<��r!$���~��CW~��+H��%��%�m3-l��0�4����gy�3����n��H���>��,����xd Xǣ��'�qR�&3��usi����D��/������U�۸J���]s��	-^.NO�W��J�_i�+m������J�:?<<�3Yو      2      x�3�t����/W(-V���2B���qqq ç
"      5   R   x�34�4��Ģ�������]0��	��̀ʌ*4�24*4&�И��h�	1V[�a��P�V��qqq �&N�      3      x�3�4����� d      �   a  x�M�=v1���ST�7���80��d�^Mώ�F-��x�6�\_�����T]������O>��z�p�n��p�/s-�Ӣ�I��q�j�&+�ك�T�E+J�\u��.�Hپ��`Q�0kH�K
�h��S�Ͼl�N��:�^oF:?i�-I��}���p��x�p�kX������ts�$�+�,���k���á����y�e������j��S���,�Bx��⡥����GC�h�J�3��������I�
dm� I�0��"ͦ��j�Tx�n���Լ��ro���q���
^ea�h�V$~ gfy/���&���Hط�����ib%t@�a���	��>      �   �   x���1�0��ٹ~vÆ2 ҀT�=v۵f��O�~��	$�Zos�e��������B�X�$'合5�m�?�X�O�ym���!_V]"�몡!M�31i�6�&�r�+q9��'�rdC�e�
˯SJ�aÜ�      �   �   x�U�1N1�z���Z�7XDK�7��%v6Nw��{12#�@re�����?�0��e�sc��1*EcT,��/<����E�"S!��d.�B�Ce'�_��Gx��?҃#�cP�b�"9)��{ϡ�c xJ�*zǩ���
����2���3ZƢ���/5'��C�O�f��Y6�e�3��pC���%k���獽��ep3�g$���k�g�Ĳ�u�Y���}?��/ױ��      �   f   x�u��
� ���|�&��K�@"2=d���T�v��~F� �p�T.�-R�SU�S�E�Ԉ:Qk_��ֻ���o$�
�K���Ŀ��ꢕR{(E�      �   �  x��M��@���S�;F�� ;��$�!$6�UNbu��r���n�����I�h$.��,㶟��W��{{��v�	*⩂2�T� 4�
g�ԢVV�����K8f�8�<��J�Y��M�p��M f¢�w?��)�Y��&)��D����(�͌-�X+Zw�S�ټ�06A����n&R�ˡ�e8�J�F� &�9�x��\_�u�������}�dF��p ��&�Bv��]��@���
	�yUL�b�|&py;�7�ˈ�g�\b(p��{���t4����B=��ɷL���7�lJs�7�!�������!�7>�z�_�T��%��%��:���͂I{��Os��ϓ�q�6g�B��E!3YL �5?�X⭽�D%�A���@���b����w$n������
K��� �O��>�B�p*�\K�����,������B:�{o��� ^����^�/��oW���'��*7      �   Z   x�}�9�0k�c�x��*�t
��IA��\�H��@E;���x��qw�C���"���G�..Q��8����as�z[؝�|��Q�      �   �   x��1R�0E��� ����PQ1C�ƉE���2���v��q�6ԴT��K�}�{���w�?����"��IJ�+8$��GdH��(��KH֦�ʄ�p0#.�Geom��"/�ws%̲��'��W{�=P�P5���g�Y�D���VO�u��Y�%�1�ȖE	���v�*�9�\�!�KWx��F��~;%ٚ�)�bUq�[��mL�+�\����?��8^���4Q�      �   n   x�u�1�0D��s��� w�M���f��֡6��'Y�V��������u�a�q�L,�n�U���5���!!�	����R6�����j�=��<��ҹ�)�< ��b�      �   }   x���1�0��9���"�:!���₫X��*v�=�`{��I�8��2��p]e�'�s�L�ei���,�e��v�E�07���?�L�}�����fL�S"?���;D�0�5��?�1��|�Xv      �   Q   x�u�1� �z�1�=�/vz��h��?B�$Cb�ݖ�)��v���U,�­��
Cյ��0BQ�A�S�8����(ߝ��o 6�      �   �   x�ՎA�0D�p�1�D%@d��čGp㦡_h,����p{��0��ż���;�Q	�@ԛ�5{�V�� �������7�K p���fF� �4�<�u�J�.�؏X��?�S�c��Bj*��i3k\�8^iCNu�jN�_�$��H��6����7�z�Y�y�cx�      �   .   x�3�4��L�I�M�+)�K*-)���R�\��F�F���c���� ͙f      �   �   x�U�MN�0�u{
��W`��6��M�ڕ�2�P�b.6�H�,'��{n�Ӑ�¹yQ!����A(,\Mi��OA��F�$HT
:��}�MW��{bZ��S^�r�l��j��ѣU��{���O��3,{A@a�if��ۧ���{�Ѽ�:���~2	]u1.R��t�]��d�u#n�Og�k��T\m��TG�M-ǎn�
��N�I���'�v�JUi�~�m�> �˃�      �   W   x�3�ϨT(�/�VpP�+IM/J̱�tJMN,-NU(OUHN,JU��S���%�y
�y@��J��̒��Ғ�����T.#j���� Hp3>      �   �   x�u�;
�0��Y:L��N��tjꡐ$��kA�k��	��&(k��^�������7M�~��8_�esMM�
Znj}U��)S����}�h���yD3����o�^����}i.���\�5�cJ�)�c��9
|��`�	      �   �   x�ݏM�0��p��Ԅ��-���4e*��l�v^��yo���}y��V�����D+��K������6�乧6��8C���YA��b\�s��`r6�~PʹU�&Z-�P"Xv=�Fi�a���ʽO�'r�r_��Kfh�ٖc[u���/����/�O�      (   F   x�3��/-Rp�+I-*(�,NUH,*�K-*�TN3H3J3�2�@NK�2%���.�?�CdN� &U)J      *   �   x�u�1r!D�x8��fX���-'���/w;n�M^@�ږ6����s�~?����m�o1;u(�SS�Օ&tP�҂&�����aq��kQ�}m�a��N��&ԩ�;�z��1�ܼ�:O�l��Uޗ�Uޗ�7U���N=u��\���S�}�9���3���9��B�B�L�l��8�l�U�s�r:�\�\��8�,�*t΢�U蜓*_��/���yQO�`n�|Al�N�/���T�
�+���l_����n4�      �   �  x�햱n�0�g�)���д�ӎn�Z��-�E&ԝ@-h�c���'��q�BKv@y���!}Z,w��&���k�G-T�{�ͮ&�)��\b��4�ub<H0:=˴'�O�nا�c�oG	;���Up�O����k���wZ�������v{������D�ߑP˃�L�a�sa��j��
6��N���e��?��#�[��#��eq9s��r�\8<fe�s�[E�#R.-�z�&�T�tX���X;��Ds���$��1�47���K^���� ���I-qb�25{jƓB�<$�s�Øm,�*��$�}lr��S O[��:�$<@��Ψj�ˎC|Y.����V����C��ي2d�n�Uo1�Q����e���|�^{ẓ̌49J�g.�\��\���f0�`.f0�`濛i0�ʢ(�����      �     x��Q;R�0��)M�\���ٞ%v�"^;�2������.���Y7���ɒ9 {�6H`c)�C��h�"r�E8�q$��=f����|��}�yUَ�����s"�,t��Qxٰ�bG8>;dQuJ&�XK�V����8��{]m���	�(��W���cZeq�9ז-�zs_���+w��]��BeqX�e���<%���ve�^�."��ֿ�rmO��M?]���M��=r�H��	�����*f��vx������4� �!%      �   �   x�͎1�0���Q�x?��Q�H4�-�����A����mx聃�Je�^�Lix2�lWl��J^d0I%r��f256�3e,�]9V�2�x�	Z��㊏�w[j!G�V����8|�����?���*�i      �   c   x�}�K
�0E�q�^��~��Dj�U��?�d~�\���Lv[��c��s(G;��V���	�@7)0	����(t#!�:�<�����D�	Y��?���.W�      �   u   x��ͱ�0�:���,��t�4&���l��;��}؂�u�\�7���w�bc��M+�۬�Zt�đ*��U�qu�HY��*��;�O�[F��Ls*4�A�Yc���}���pVR      �   ~   x���1
�0��Y��Cl�j{�.�Ԑ��v��#Mݪ�}<��<������S�\����?�Y� �4+��, ye?�����v%����[&oQX4XDZ�+�	I��@�;�&,�	wad&<'D� ��{�      =   �  x���n�6���S�؁���$�#`76�E��^z�DZbC�I���}�>I��W��^��Y#z�����/��\2i�����J��a�4��Zk�F�4+9��K�3���\2
�>Z�k"@U���+�O+�h�Y�$09�Z�=���k �t|{�F�8:[0�2caʈ�AxF� �@r�38��>�����(7V�F �e���0Ȅ��#�ڗ�
�3&Z ��'S����A����B�e�s��"�iv)���)�����Ӆ9K�T��qp1(̈�6@�%)AYk�&�:Y��"���<v0UB�9�9�5NrƢW�)�s�3%-� #��Jr��i�f���l��
�j��L3�Y-$�$�[gs#D���nI�R0�O1.�j���q� �,�d�B��)g��)R[U���,@��݂�+MUm���0c�4��j���,��cs���qX%��ײ	�8�b�-�h�М˞`S;BY�C8r+���R��k��һ�t�[ɵ��Ͽ���\̬Pʰ��c��2�9�n��r��XF(�)�	f�e�IM��J�]	���R��}~����;=�$�>i�a��S��
�1�e]!��qs�K��/?4��.��x��=Wz�5(�}��ۛ��+n�`���>��|���ښ��T\9�Nӥ2v�l��vNY�F�R��TX���$���ZՒ�2%��<m������F��9�w��i7��2v�C�ɻ��h�n�zO6Z�*�dU�G��?y���w�6���s��m�cD�=r��5{59���jT����Л���4JS쾩�xR���bW�k��w\Ͻ������h;T��s�ed��tm��z0�"��5B,������d�7I�j>���N� ���؅���O��"aD2�K���c6����x�&�-�q�7��%?Q"`� R���UX[��P(�����8���.$)y��1��?���h�H�/I�V�K�G��=i�iǱGm�ڞ"^�"<j{���*����Q;��k<j{��'��{����!�!�'흮bOگ���=�zx�'x}�K���=i{�xi���I{��ؓ��'������c쥏1��}���*������7�����Oo���]z��x����1�1³�g흮b�گ����D&����� n��      �      x������ � �      �   B   x�3���L�(�2��F�)�E�\�P��6�҆0�!�a0�1�"&�af�L��J@�=... z�&      �   0   x�3�� .cN���Ԥ��lN������N�$�<���l� d�      �     x��T�n1>;O1'N%"
+B�zA\zq���Q��c+,��'�<��7�0ޤ(�E*BB
��ٙo�o~|b�6[xZ
��|D�	�3�(���~q�uǰ&�a��P"����wQ�750&v(�Rb䔫��89� ���L�6Fɩ�\�z�v4��l�614�05����9]p��A�y�6Y���KR��)Kj�\)5�DF\a_j����2�.��v�#	�%.	�'���hX�	����ID�D��������	��L)�4}�x�T^gV���+�8Ѽ�*[�m�Sk}�[�j��Z�Ӓ�AY�>p���Oa��j��eX[�2ym�S~��%���[�'��Y�u�[$A�k=i������׈W�*�$f��&�ZN+x�^�ڍsɪ�_�sa��\l����H�QCU� );���%9ڶ�������M���O�������l���h���(vtt�=���A�:鍂�`��N&lfȸ�j�������?3o��h[�y�2�M��>�Cm����mݳ�~j.������=      �   5   x�35�4�4�,�H,JM��M-I�-�O�L����!LC.S3NC $�,F��� )�      7   4   x�3�TV���2ѕ��%�I�\� NNf^vjJf�	T�)�3%1z\\\ �a(      M      x������ � �      �   �   x�u���0Eg�+��k9����B�XX2"�J����ȕ�#ݣ{Ͱ{=��N�z�����01�$=��J�\�Ü��Cp+������pT��HD
��3��ƛ��0�F��f��%#���q߬�:�ꬼ�Q����O���
M|Ac��DE�      �      x�ܽK�&G����Df�`^�{�j���l��b(deU�)�I�d�+H����0�|��ٍ�i4+3�GD��=�37�7�����O�?��݋��#��~����|�}�Xf)��7x����}��_����o���o?���_���߾��On?��Ӈ�����o��������O��o~��������~���Z�{�����o��������_�~��۟��_����o���?�}��������/w�������J�6�oK�&�w���������&�o��׻>����_�y�/��S����z�����>�}��/�G���xr�7�����v������I�7��������̩���(7��O?���ݧ?������������i��O���ϯ6��^�;���_�|^.�xww�|�!����/�S����_��o�x�W�]��������~x��������\�m����vN)�����w>Ƕ���:?���~x�!�/9��CC~v��\�m���?p���_>}���y��/y������/z�G�z�G��)������ˇ����+�4�Go��ѿx�'���2�R�u������<���~���ԕ��F�f��f�AG���]�o�y���i��������aH_�=���n��߷����s������=}�\��&Ӑ������1۫����o~�黟p���^F<���6���7�q��s#w��~���λy?�˼����]��������׭\��u��a/�|i���#���/NAɷs��|�l�xP�'�&���ؿR�C��J����o[��~��������K|�[��{n-�)�f�b��>.�|h�7����1ڨ3}�����x�׾�r{_�5���k�N�_�z���ū����m�u�����q�b�$�������}Y��~{\A��ӈj���ix��?8�^�e�;o�S���^���xj
K�����M�����9,�J~���'j��~��q���������=��pA�����}����x°~����/?��g��#���MF]ޥ���W_?G=o���Ϥ2��̩�������K��q�-�����t�n�v#.�v�g���#>n~��O���m�-�^S��Ç�Y?�yW�?>8����M?������׏��>}��Z��W9��5���k1�����JT0%�m)���ϕ���׎��Qj>r�����>�SP�x4�o�Kq���������|�'~�%���w.��?�,Ń���t��2"����<jy�o��h�n�����X���S�t����׏���[���ݍ��N���׉�}�7Z��n�x��:������'x��~�Nۏ���}��������Q�����ͺ��?����S�ƞ_}��%w?~���w��w��_1���z�w��k���|��%O��&s�@�mn���1'��/w���O�����=��{��\�x�-����~�K/�M�_97/��Mf��K嶎g��cv��y����b.���|���VGzq��ḳ;���[X���ב��7�;`�������?���͞����T�C�p�>|���u����� [�����Y���Q_��##�/����U��!4{t�8�ؿ���H��\#�z���q�W_�^���g���Ϝ�Cl��0'��=��x_f{�_o����E]��2s���%~�C���^q��GF��j/3o�~I��򏧞^�z����^^�ӯ�/�M��F7�0�Go��ѿx՗��t;�מ�vrL���Ԓ��`$����v�CW织�y>s��u��q�C2x�#���}�t����}y��ۣ|mv!�%(i����t��u�x��P8�G?ֈ��z_?J���^�q[�����ш�C�\�.�u�����r��~�ׇ�d�;F�{y�K��_����G�`��쯾��n~h�k��}9}<f�p�8���)�u�7q{����櫯c�����O����� k��?�\����ݓ�/�������߈U�^���'��)`�s���kpy�N���}�9u���ʃ���6׷���r�W��qQ�8S�/T�-�ym&�|�N���y>��yU�'��8���YNe������!z��-�Kǻr��z��:�c���=|��H�f/��I��^�Ǉz>�����<����^y����S�������+W~��h��v��Iy�_O�L��Y����[J~��R{Yګ�C���}!���G٫H�
-U�@K��������R�-U�����P]�>�V�ѽ�.w˷�y��ƼT-�m��n7��k���?y������3�O�?���?����K���]�뽟.u/��k�f�M�z����X�~s��Ə~�����х����z~w�q���:�u��a�h��ʶ�� 2���l������_��ˁL�m�
 ��
���ϋ?��o�P�!��n{}�\�����R���'%��+�}R$f���o.o^�zymK�M�N�F�F}}��k�8����d+�F�{?�����d׷��|���Y�C���}�H?��{�gHvE���}~��x���d�/��y����g����GF��5_ޥ4oG�]ɾ���|h��,�d��ܖ'!��u�q��~����{cN���_2V�禝t_F�'�}��kQ�K��)*����_}[2�͇O�����z��!�H�p�>���i���c}���_[H����h�|y0֯��)�7����w?\��{���N��~?>���v��Y}m&ㅻ���<<Uz
��똝�v:v������Ë��S�0Oc��:�������[w��_13�˜�Y��S�W�|�^=���I鯾�9iV�����"��kO��M���j����/����앧x�k��Xӌ���_�~�,ؗ��)�뜝ϟ>ߍ�?��	�Z����o21����Wb?z�������[��򟫸�|��S��q����c[��{������%=u\�uL̼y��w�ߖ[���_��t3_ٴ��o�}t��	���������.�%�>G�/wcxv�W���m~��=��0^�����8��IXo��Ix��/����|Ϻ4����M�@��W'�����׮�r��x���Y߆/Pxo2+v{u2������z���fk{N��$7�"׆'��Z��mz#���w���ϒ�uX�����A��^��������Ǚ�}�}u����o4~b<u�2�[$�w\����'�0���i��wy��J��sѓ���<��.���k�c&�F</��������>�b���k������Mfb�K���O1�z���/�����ǻ߾��O����� ��x�3��^�XN�z��P�n����s����������ߧ��a}�o|i�_(�����e׀������_5C/��wg)���%��_}�g��m�ZV��Yz}kg�dz �a�uۓױ�>�������ӯ����L��_���6��������\^h2��=����B���ȯkP��4zm��������O�������P��x�{�,H�ZZ���n<��Tn��^}�Qo>~���~Ľ_���K/��3ݧ�����ȷ�k����o2���O[Я�(���y(7`�c�h���Gx�j��'�7~���ϟ�g:ʇ��5���KEP��|�_����_�l�~�{���)gYE���ߎ�9�l�<�'�t�������������v�|����������7�×r�ΰ�|�4�翋�;?����p��������s}�ܬ���Շ������wΒ��g�������������̟�� {����H�5��w|w_ώk���?�G>
��l<91%���{ůg{~��|���";?0�#�Ϋ������WWf>���)`z|�����Yq��(~�|��b��"s��;W��Ywvr<�����6�)����L�<wP����8��x��g�!�x���|>f�Ş%}��@��8[@暨,�᪘�sP�eZ����%�YxtɺV3�V_����2�Y8��<�����,�JHA��W_ҥ�9��jĲ�A*!������*��S��D�k�    {g[�s�λt�x���]�]Ϋ�%���@�nT�5ܡ�_��)���&n�\�����s�4�S%��w��ij��:zUM����F_�W�B��t[H�~;�Ńc5�r~���~x�,����.������7�g�*����s,�S<kiEsq�h�I#.p ��D��)9��pU���*ej%r�Z�O�9����!���]��A�rN�	稗��î�{�8���+�d�Υ�����M?����=|ڊϝ��>%=���-��U�-E|ca�/D�fY�|*��\X���@���,4�s�]�9��8��x�(L�m�C7(�A{	��[3����|��JZn׿Ʃ~���g�\B	�j�P�"�G?�	�-��Ω�Z`5��,H�j=��ɺ�~	�9hg���ʑ��9�_ǒ̸����_F���"_������C*E�	��T�t0��Vhf�0�O�����n'4`,vk�pX9%�VN��w|�|��,x~Z�.����!#<		�`C�Ƙ妩e�:9��TB�l,�	�t=G9��K���<���K2�Z��j��������V��o���Qd�-��V�.�T��w۶CJ���m�`v)��w�)�x��	��B�A\���f�����6�z�X�$��h�_;?~�E������g�cߖc�b�g�9�S�#�����d�vF��0�O��jY:? w}ܦِ�7���g*�Nۍ閮R]J�sʡ�6Յ��.�:�^-�.yB*���q�2��7-�]}���Y���C���	�)G����SJ~�>La�0Qh_�h���9?]�2��F�������s��{���W"�L��S�J��c|��1�%|,QW��Cˎ%�}��n��$��Z^�	�	ou��)r�|,[FQ�T8�s�w���z8�s��DpU�jS`ER
c-9*���T���</{NN WmE����bؒ���Џy�����W�C�pBNv��B�'����B����ط�7a���50+�d"�*��F�V �GV��J���c'������&5��/����^�ܣK1�1J�+�B��| +�t	Q��N^�r�vfM�(4�4R02���|�sV�q�2�(���C�Q��n9�2�	�  P=_�9�rG��K�."�eܨ�0�l�����'ak�#x��wiP@<��4������9��؍�hq),2���č���	��:*W >�Ƿ�moz�V��X�s�����N1�/�1D8�dOa�-j$DPW�#�#�%��Q�!�৬C� ���Z��iv��y�%���=��=�����=�����n�|@-������K���؁:���f���.�����@�O9�E9M%4 > ����X�#��aͧ
���6B=���kn0�. e�s�4�Kb�r�H��h�S)�������R0�o������!|��A�^��!��VgV �Ц��4�ՌV�%�Y��ؗJ�d��y*��S5N�����rlC54��< 8hp�qGv�lJD  R� ��|*���}ʣ(j����s��.�>hL�O �9�r@Oijr�m|����xh��D��,S�H	�C�R��E�T�ގXJw���e�x�Ӓ@��/+6d�͇�Ũ�=�b�|����d�p�P[ѓ�?�� �wI=�߾E��ZF*5B�n����@ٞ�V��] �\N�k�3�X���U� !��}�Fe��#�EHs\L�&���z�(����h���WfpL�)�K���/ ��N�#˪����@0�͒.*J�Gs�E�SAW%��/A`�U\�i��B�	�@��۰Q\�� ����qd Rm�Oy�*`�as�W��G�k�%��x@����_�`�"w����0 6��Y����="��%�\�L��0d	ٚ�]�is��nQ[�X��8�`��Uy)�7]��4�P�l�Jyٴ�/��ij�G�2�,��!���^օ%��Q�&��݈��=jZ[!�a��LfŘ�:�I�3�.�\�i�:�u4���r��Z�.�2	94�2��bH�91�x�d$����h�c��~��	@���+y���2ŉ��4=�!��BYH���ǽ� 0.B�Y��`3��oV���)���2y�t�(2�{��)���a��b�6���c�E�̅1u��p�/�.WQ�qYzdo�V�
g�PzW�:	���anO;��L����8 ������&f��h��gQdw�4��I�j�M0!L]=�"2*!��0��0gΘ��5-#g����p���.�*��|D[f+�<WUt�랲������.�YV����S��J�;$�C�� ~���(�09]�Lr՗�([w*��.�� *CD�p?IA/!MY�{��A�նK��]�;P��<)��!��6l���j��Vmr��,ɑ�`��M�
:O�
����,�����I1 l�.�ĭv��tlð�+�2�Wa�Oq9�T������h�!p�D1D�\�f�*3���Ԉ��*��{a�P�Fi���q�U�� �9�� с<��j Mz���1�H=W�_4	��(�<�\�.�	���,�}���b@��qo��;��!b��zf~hqR�I�!��[ `�<����O�pz�	�%G���`��� �7���%���������w��@�WLF���� 	���A	����= ܦ�hB�98�s�����V�~�x�|OP�K�����g-Yd.�����ڔ��#M:w��l3챁=��Մ7���?<��<�m6
B�04��L�:��,�������՝��.Kc�dwh!6���vJ��O!ލų�5��nS,0`���3BY�#ރ\���)�S���ᏰPa�Oi��i
i���;��fSGCI!y%��>�Ldܓ�[fӓ�=Y��f����������߮qlG5�+�/�6�n�;B�=P�5�i��^��(þ&.�`oY��p�x�����ˡNt�ԕ���Òj	H)7��)OA#���O�'�����_����	��bM�Sz�iO�����Ҹ(u∻�,V	N�)���iE(�߄��y.� ��)�QL���9S\��9��-�<|��y�o�	�uM-^v<K]<��9d�ìҝ���{-(�X:����^PF��8�E~`a,���$���"�d��%����%��LֿP^�$R���5�Ґ݆���>L7��Xv��$�Ž��C�����	|,@&NQ=��9��0F�y<g �Ҕ4Et*�Q�439�;I0v3R���G�
s�k�v�!��p��N�珡б��i��c3@s쿛6.�Bbd5ի�¥���Q�!~����U�`����Xe�޼�9pQM�k�d?ssHƺ&|`n�;v����C`�`�Q�-��,x��:=Nڌ!$YN��35��V2/��ه��P�i�s�0�s�N+���jm�� ��%`�P}�$q�D�9a��{R�A���qt-&�UQP�A��֩FN�D���_L@�'+2�b��a �����;��a�< z8�nd[�����H�w�c���<#J�ڰ>U���"X܈�k�o�����k��셊
O����t0e�js��G�50b�ǡ�(��Jv)��N�fXV��p���c�K����h���Z��ZT��@4B{�]U�7�ڶD!�,<0I�è�ڿX��"��Qʒ|9mkM>>��U&��E5����u��ȁ?YDWu�|!�X2z0v`�	��`�r�\���^�1���A��@���#��e��b*MKv��r����z(���f�-._�5��a�\��;Π��dA��G0P�#+v���k������d�0�v6j����C�\�4`�G����0��ͮeثN���	��c{�c
�X	Y� Vj�Ā�8�djU,J�C�X�c��Ť0�ծ�ٟ!ʔ������(\�(,޹*�s2�!��X�n\�b"�c�[�ڢu��k�O��+�J�-    �h�\s>�+�Ât	����#N��~��~ě�2�4�9�.'�'I��6
��m�����!��5�\�
�N�|��I��ӈn+[sdo= ehJn�a��F��V��0+�����(��f��P����v[Y`MϠ> iƤ�nW��� %�kYo�0�p,��2��+���&%��*b����l,���ÔUS�m5���u*�(9��`6��< z�S��>U�J-�>�����Z{�gr�L�|)���rJ�跎K�HΩ�� �~�KK��eR��Pgl��If��^��?j���✚Q���c�:%W�Wm�E�A�Vk�F����67ׯa���g1�&���ӌ�b���5+as��T<����&&��r�NV�A�n7���SM	���-�dfh�~]/���b��=h 4���Tѳ���<Hl8�fӊ!�˲WͲS��	X��kX.�R��O
����b̌`�M2*����a��0ι9W�&W*��n�$�/�R��sV�P{mtj��\��~���$����3FCN��P#�=�4䈚�ءR� @�Z�T �5)���؍�q�C��+�����Y	�i�p	p�
a�52��A�!�ǐ��0��@B�6�@��%^�S��]�t�v�����<e�6r��PG��P/��^Y�,L�p:��C����unN]��{�2������J �u�fhyT�p��ԺD�UAM���[����V V����m�b×�zF,Jc�	�rܦ�V<�dۓ�3�l�L�F���[\������MN/�=V��\X����&�{H �gA�b�DG�-�ܵ%�T��V`q�3Cua�5�6�qwMa�5�k��l�fL� v��a�O֓P�۹T���.ڃ��jYѓ7�w��'�Ȏd�B��[�	�n(e�	�I�C�<�K�-��4=fq�X�Y8��[�1j/���yŴ�`7鱖�w.1cŊN=.�դn0K���65nP�)oNE$>�YW�<��+."�A�n�7G"+ũ�Uݜ�69VV�[~�*6q�B6pta����P&��,�êްl��mZ�U@s��<�i���Ì�����p�����Tp��sC&��#�4�cw����B�H�c�f.�� Y"�pc�Q����N�.����9i���y�j�be^��s�����$>cO�!m׽�0��CɁ�0�d6��6�)��ډ'���VɎ5BM�F��#"E����
"�]�L�icO��H���i���Q����R��9m<H,'���]�yS#��LGF����7��K!��P9���Ȓg��Ar@�-(��.V�d�1��;�/�1`��֘-�lO��Ű�(�兕8�EO$�|*�I�Y��R��uS�y�mUAޡ§�QUŚy[�;v���t�������Cs,NK ����~���':W��"Tau, \,��Ps:�2;+˝^"΢��aC���-ep�|������`���5(W��"�AԼr���<�� נ���C+a�Z[�6�-d���e�ǆ�&Z�X��,��I���@��i#Q}Qݞ��ꑵ��le��2<��6Rx�H@�O�b��� ���Z��JM���C�f��^� ��htN3�P�:��p�lA ?�lp�n��AS�@8��C���Cޠ|f�̟K4�D��5�%����x�t}2R&-�9Y[dO��!Jl$R&�)8.@r��.&.�vjh��GUB�Ȳq�;�= 9<p��1=�$���RU�95��G˾ve�@1*PD�+��%�U������7 P,��%�]a"�HރoU.沿N�^ �n�6B,*m�J���ryzLkQp	84��"�3bz�=݅P1[l��A�F���ǅJ�d��
5s/9�7`$*W�M/�ڦ^,���D��eӹ�%٫�gTX��j�g��@0E����-hC�L1��2�C��h���A�,vl�q�C�󋱉��I���ǃM\�&�~YG���4#�ENCS� �s2"�k���v�)e;G�ۼy�V���ѱ�gZ���3�^�`K�G!S�q��b���+;Qa��\���	�sX��9~�zHa��e-�9�h�!�Ԧ�q-}��`t�<\���L�r����밹��m.)H�!M9�`/��&z�e���y�.��M�=��gD�g�:�s�-�Y�]B.ks�dsK�x���-2��ꟛ3��_U�^�4���3�M���o$)�6 �2�(/̱�2ϡo���qw�{��г	��������3�	�=�g��6d0uP,�9����v6��|���E���{V,;.�e�	�a�ojp۫"|}���;h&�0�� ��%{��8Ekv�-���P?���sC��*���^�)Tm3�Tt�9�\d{lu��ȂH�>�>䭭64�aG�J��E��қͨʱ���{G8�"F5�ˆ
����������0;�aR���a��Ao 8;�!\C6 -�)��wq�j�Ф���6� �}hmW"�Āp��L�9�Ӂ{ӛ{8_&s��"A�09�R��nf���uH�X��H�{	�&
w���J!m�K�;3[�N�&�hՀ���Ug���|0�1ê�u1�t�I�J7�r^:�L���E%�e\TI�]��mѺw�/u�A�}8�c�1�J.�j^��H�=�X��$��69;�0�;�6ay�[��9��e�-�́��
7�&:`)� %���^�k�-%�'9�kuG�4ǌHW���k�>ߩ��"�!b��Y���&�1Bn���#�� 3%ܽ��2w�Ң:���)�D���sH�)lt�2�ΚѺ`ʎ0�� ��4y��m1���fn�љ���V�r	�ew��0J��O�ND}t���e3�W���+���)лYF�!��~���2֠h�p������H�&�pam��e��j�f�iB�G��4\v)�m�hLFI��-o�.��*lX���3�t����H?[u�[�M>�G�Pw�b���.:Y!�AΜ&������M��Z�$����Hy��f��b��}'�)@ջ,���?K���Ó��y1�����&/6�F`��UX �DV��`"�XJ�0��Ɍ	+ZӍ�~M
��Ҧf ������j�tz�su
DU	�jL�I�0�X�]�����HG�p���R������A��$����hW�9�A-�$	�ӳkD�.��&���J�˗��S�'�F��G���W+�,���)��,��X=��,� S�_�"�h�y�Y �p��plp�;wX��V�В��`J�B(�J�$�ʱW���#�_�技=��
���YqP\a��c{�C��v��lU0=�5��0�V@�>�@L�S�ve��S�=��"�,bJ�x��'=�=\�l�>Ԇ��9�qA]�wm�?$�D�W� ���b���-�G�Y	�(�`+�<��ke���5���È)�8G�)㾬��j0�c��]!��|��L�WD됍�)��U-�낹h昸�o�G+�����3�,�u���mb2���:�GP���?!������R�C�tI�R�M�A!\ӊ�E��yE&M����G�m���jNri��&S��:b!M:0s�­�O����N>������P2����8��Ϣ�&�Y�c�&��Ld:�E�06���v'{��GNa�j��å�/!C���)S+d�L��H��GT��j����#i� [�y�)���0T*���)���:�}c�y�C�9f#&��4�b�X�\��9x60p N��ð��Ҽ�
�y�UK���
jH�Th�<E�\��SY!kz�4IҖ�CA�X�ir�b>�r�jT���ֆ�a��u����h7�`�i#~D즤��&X�K�\ܖ�,qA�T7w�Bx�:�0��os\e�.EK�G�l�8>���mXؚ7G1Y�+�T�>5D4!��t5X��*3_��;�G�twx��-m����F�~����e����q���r�2�9�c�}òKJ�ƶ�I>��m�����$}����1��n����1ϲ��@    5���E�K��7�s[](krԫ�E��O���_��c��4��k�y�fMy^���x�`?XeCKќ"@�������U$�w�)��e�'�xP�ԀY��ǜ|�qgÐG�~vm�>�ί�z���61�%�L	x���v2ZK��k�J��5%�)-]D�
�8��E�8�$;����M�������J���p��l�*x�jh��.lD�h��6�l������͙�j@�'k�a�],Ad�2gue���}���SFX����`P�f6����Z$I��)�^C`��t��äk�w�)c/ʹT�/��&O��������`k�v�w*�e�D�宊���H��۵OW��mv�ƣ��@�T2�e��*eŠ1�u�O���U����"�~�������`	�����\c,��L�e��nN}��=8�F>(J��χ뎂���iV�;�S3�v�>Y+�vWX��F{�*�a3�Vp��6Ds��z�T�MEmq���p\���H�H�$��d�;�-v�vbZ[���Tt3?��Sv&<4��\>�4P��@�.�j1L������BI�d�h���wOI�TnA���.a���i�a����L��3���2����l�0�S��24�bJ�8�*�b(�Xt��ƶ q��:x��>d��q;�?�X�!us4f��伅3�����z_�C�S"�I�0�lX0�|�bgnZ�(S����X�~��,M(��A:[��t5L���F�����>=�מ�Qea��w5�e��Yl�����ԁ�"\rM�TF)�:3T�<)]>l@I����	vfE\����0��اSaS�k�-&ֳ"�0��� �($9��[e�cpm[��WU1���F��̕jb�ܴ(��3�KS(Cq8p���ƾ���զ.��]��l�K��+�n�gP8�Ė�o��H<U%AY��a�a����V��{
���%v)f�s�B�s�����>X�k���8�;�>���a��Ey7;@t:��c�c44�u�A���Ѣ,@�++b�`)�ߛS�ջ_�#�@k��LU�%�~����"!�\��\,J��Yj��I 6;j�N�S��D�L�b����+~�O�a8�t��lk#U���5�3$�&e�H1I������9�h��u�صF���0�{�Qˈ��� ���=�q�)醁gw(k�*7� ȟ�ԓ��V�;��sb���=L��Ұh=�.l���ˢĪ}dՏ�u:�a��`�k�.�<��n�	֤���/���
U�mD�bD��w���r��(�.0�8d^;�$�$�c�`�`h$��ڝ�AbܨQ�J�s������G-AsG�.rˉXb��H�uz�N�;9�u��.�*���1f 0���W�#�FU$�P�%C��~ʕ�J�8��`0I7>�0�{9(�3�_U�i����P�벢��+�ôG��d��n�K��0I�qf|���i�u4]�Y�K�s�T������u���d�Gs���TH����aJҶ
�W�vR =�2MfFmE"�30�G|�)�&MѕOޅq�����}J,j�/�BB��JL_����*0-�U�٨�KЃ��sF�0d�����;#<>;���!,��̐͝����JE%W��7rO��H����'��"�7�6:$R"[�� �xR
�f�A6	���Xo��T�I���۶��i_i�����Q��i�����܎�2qK|~X:��� S;�/��i��d޷��	24��V/p�PV�H������{m������~��ԃcٔ`�����M!����6�=أ��y#4�E��2ʫ�%��j�"��]�>E���"��%xh�+�*�zU� ��!��&��:�:S��;5��FÅo=��.�J�(7��v9��ـ&Z#��քQj�v��E�0$�RcN)&�0����o�v6���.Ak1ك�w�w���k���&�^t��
�L�#8��|��K�2�(&��f��2���9�3�����	P+eay���t��b<�n"����:Uv,��ݣk��R�l�`

�ݺKg`�D!M�}U�픫����LD������r��_@���77E`T��9�e�9E�D"��_0	�)�`@吽	��Z�IFJ�
〡UV�'8'����S�A&1a����%0�P<kl����·�Cm��⸢�/��2��~p<���V����>�;<s����8���.Z��C>�`х��*�&"���%����(B���Q���E�g�ρ�r{��ndA��m��N:�f��WF�����o!)��+�b��O��_s��1C;6��۩h���^�!i��(���vl1l���y�����#��)�e*Q&JI�H3H�Y�y�L{�V
��@(���b6t9�m��h��b;�ĻB��g��|�l�c�oX�S-�<(�\�Ŝ��n �-�:�@���"m�@
��=�z�2C\]�w�ͶoV�V�z�ލ������sg��B���/��W�R�|Q~S�]�]�d�{=ܗ��Aq~�aD� G�#vF��M�¼MX<q7P+��a�jj+іNybՌvM��^�.'+�MG�EQ�����.�43��I����gP�Cq��,��m��
}�0u��^�8�Pf�'U�oYO��^:�򜼤��z� ������&��ώ�Gb��h�鞻Y2�qp_�]�z���^_�'�$�n\�0�a�a�u��9=6''ě���mצ�#�xpY�a$E:�Ŕ����JA6&wh�2	;a����DK��IQ��hr�x��B!Yԗl����=��y�ik��h��
C��mD>�>Y��/�Ӯ��!3_�����TѴ>skRm ]̫2x�z������~�ܭ���eoF�B��P��]��C�׊^HV��DT�I���:�S�H�,`�~ �_ƚ�;I)��9 �م�l7;׆8��"X�)C�M��
<:�V��v:�a���q�;9��t8�j��r��.cE� �Z�i�6�%s�RF�p�DC�f��IpD1��?i7�����B)���S��\F�Z������Ȇg>9t�T��n"���u�+�|��:$�ȔN k�t�T֬_m�Ďenww�=!�qx���ӟ^d�i
VX�ޗE9��K��<`$�&c�~�S�)�&Q@�Ș�c�۲���#Wlͭ�'NBVq��$Z�aAs2�n4��dwŅ�E�|S(��?�a���&����^݋���Q�5�H�l��8Ⱥg�C�ecA��G�7l�Oq[��!>�Ĝ�ʒ�,�2��:�K`�Ӛ��B?V6H`h��}���#����f-�؜���8�Di�y�˂,{bP�0�" ^��a1�A� ��D�9�x��}gS�����ʣ���1�!��.u DU�QȌu���Ҡ�]ʸ�rװ����KCw	/�4��x��8�o��p�q�yn��(�����g��gE%�*b�3��ƪ�f���[��!������f���'�&?-[g��ͳ�\��s���x�,-:B�P�t�)��L���@^��Mk��:�qoedu�n!ݷ�U��a4��x�� �,%1ڌF��9��%6Q������Y�Y��e��,�1u��@=�:*��6Y/�|���kV;��M�,i).%"�����Z��Ax�0>N�^�*��6^f%`���j�M<�o�ٵ��fG��H�����~1����$�����4C��/n��?N�#+��LGGڐյ4M~T2l�,=	}A2HM�Гn6_0[#�E��Z�o��R��P�0�I
fZ:� �ٍ�Ip�v	��OHJ�v�]Ɔ��v=���"��B��ʩ'y[4P"�])W�
��K3
�*�v��N4�B��l"]Ki�J&[q/y
Ucj"��KVL��CՋ t+�
�ě'f7��d�)Q1w��"�9"� ��r�xD�+�QI"Ze�Y�TBY�.b�ڜ2$���q�&��4�C�:a-A2��~�r�Gܬ�c�W}�o�:ǳ���    &K�a��������n�G�ou�fy0����ԍ^X�%��E��|5��'���qf&�7�8���bs���di [��+�v<\�T��U55�9�i�O�<�ZK�ʫ=6��d,-�z������5R��U��P����"(�b"�H� ��9:�,QY;�$�#�6�a΋��-/d�خ)�`Ϙ��"Iz��Q0�=��q�!��3�{"Btm�H��d�a�
Hb����g�q�ѱ9�b~L{"�)�L)���0�=q��v�йA��g�	���.a�A�E�d�@�_�kPҸ�=����6��)�DG�+��l<lN���Wf2��6�o��L��B�ͼ�ڑ�P�Rr6�͆0�!?���5ރs�n���r֪���	��-X�P�J���[ٮ���m��H'ʝ����T8�/���L�>�4�D�C�̸&���=2����Y��ԅv�_�x�
��a@����Z��S���a�Թ�$����.TӃ=�v*��4{������K�8�<��i�	Kx���R��I�z��s�+�x�������B��(k~i1�<��4\�* �)?�g�jC��J�rH��RD��#u��� A�6 �&+I0a�TXl���nC �,�M��K����o����e^�rRpf\κ��腆����C�m��Ûf��.�:Ǭp�e{�`�xm�*�W �l�
��ͧv�_�m��[�N����ϫ���B�沏Gs7��,����Q.x� 8�D^)ېC��f��"���ch��4�030l� ~����C���IQ�9ȁ7Y���Z���R~e^�X�xaՐ���)2��M5����f�e�r7������$���50��G�`E��n�z���ęK���k|E ��#�ĵrCN�.iw�.�U��!�zAG���-�`���R��Vww��0�\S6b#1����)�֋�̳�/��dCfbm`��K�2���=Uޔ���Hߒ;�#-@�gI6T��#N}c��p5N�I�Օ���y(kaVL����a��\�^�����հh�/��"J^g2l/2�x�j>�Y2��#a�zl�
��9gg��i.��%�������7�v�a���X'\Wl�Ȣ�־�h�0�n`P�?�mA�6A�Ɛ� 1;������p�n�_�w�m�D7j�AWpI9E�L2���Z��H	��4��̋����5�qA�3���0Xe@d��p _C���D9<��.��=�>��͍՛ۥ{kỖM���2��D���C���fP�d��٧�>ƶ��hs{h�*�bʧz΋ѡm&[��I����7ZFls!�#[�� �r0ˈi @�ֆr�<
�[���ZR�Ƚ���0I�
ED��
��X@ب\��:v�,:�t��a,36��iEV}���M)w�%���9����/p���2xt�V�m��KW5�+���|Iʕ��}s=�`hp]�7Y�,�Qۅ(\��UVtɍ?⌵I��{KĒ��xnn����f�.}��2�R4�3cW.��<�A�mB�|�^I'n�}}�rX0����B"V�:�ۂG�!hF�ʹ�0���a�*�Z�[m�s����FF�?�D�b�(V�'*&�����v����8�x�i����U�"x
���7���a�ř�ׁ���5���V���F1ƜV�].��fJm�J�J����f�*+ԋ�8�($D�;-�!���rM1��WWH�49,��.����:����� ��V�f�%bT`�Մ�0��:��I���ؗ_>b<̒BPHݣ�u�Hu�� L@c-��5���hY�UV��On�l��8��LP��(����vf�����q�6}���7�68��q����ث����5�A�";�9�YiȻ3��;�@#?Ɯ<tƌ1{$����-۩�x�*�A�JC�T�eo�a0�h}:dȺ%��ȧ˲1]��u�	��Z�E�)�o����1�×��~x*}Vj��l#�������4�����N�1=��sU�����ꠗg���Jr��:�j�GD������vp�,��Z�οP���_�kJ��[����0B�;����֝���cn�&��.���qd>]�d]��ad麥�Y�i�SČ�)�F��;��-N�)�>m�lE�W�{�Z��9]�pٔ������\��{��)QG:��h�q�i��`(�kV�1�6F���E��������u�����|�V�H�TF�|D��%A�@(9���������$
���ۀh�z��YS޼6Q����X�EX҂� ��<l��gX�� ����#�=�c&�p6�2�u���X����l�o,�醽�ǡvd:9D�
f�qz^��iU�08tI��5ծJ��eD双���A���Լ��9U"��e#�r���a{���;�{`�h��jO��~3��L�+��2�!���9>��M��#t�hP�`��P��Ž"Nk'C?�0{���0���GX�}��"w�	,6n�ʞ���𳻤%�����W��J�E���ɂ��5�E�xը$R�G#,R.s[m�5)�X'w:�8*�YM9�$�	I��	`��cCa�F��(�����������r�e�m���v+���r�^�&�G��V]O۰�<�LCC��*8TT����$mӁ�	}s`����^����.g��	��O�(�м��$�0�C�@�#�0�P`M6k�����B�56���#��f�8`#�C&Av0�s�I�Y�q�6� T�2�39We�^ �m��-Cm���������qӢ	�)�N�B�MzA�J�8�G4:��C�����.aG��>i�&*���l�go*�~5k;�R,��W��`,������f"3%�4�%���Z���D�d��O+7-x��C�=�*�w�Unʪ�����!��&�̕�!���f�� ��G���ۦ�K��������J;����ig?�L#:H'-d����2#�`�=nԝ�1��*��&������F�k?<9�C�<g��]�Ftw99��ݮ9+$��h[�8*�{�JjcBvQ���.�b'*1P���>m���,���k$��B%�����%��;��o�Y��\�Z>4ݡF`!+T����㲽 ���p++ƃ=����MɆCsmN�7�u�M��Ē�H��դY���X)�4�c� K��[��t�W��&6�~�b%�5������O	���~�l߬�s<t�{&���C����2Oۼ[����:| � ���K���-"h r?�gnD�i����cGp}�|�Z�g
pZ�Â��KvtPYKsXέ�%��I^T��� SV]H�%h�ǂ5�
bn����]�T�6�h�N���1:�a�S��L��O���6XMź�*Y��(RX�~Y��K�O_{_�CD����Ӡ�`�H� p��������$�4�ig��G��+��i�y6��3���DE�� ��4��f�� ��n��PE8����h9}�'74�[k���]?B�x0 {�ɘ!���A{�k�X.`��ש�Ǣ��er�L��خid��̧��k��6�y���l
 TO{�-�.K�C^쀢�H�1#q �t���6��1Zq|!��Q�}��p
���D��<�!p=qϾ]��
�-�u�--�y&DpYa�Ċ���Z'�<lL�8�4��ޱMr[W�.ح�@wY��t�&����z����@���Xx��p��H�c�4��aK(��a���F�Knk���Lg
��v���ӂ�T����~h��6s����IX�`F4�i5�XT�C�V���8�ڸ˽m5[XW�&�9߬��U'�����ifsQ�]���`��NE���J����p������ ��"�⬨�#���KMzuu[�V����Dk[p�2��Ȓ��!jL�e�(�tW�Q0��D!?٭$�����Q"	j����}�P��n@��<�Ll�Ѣ- 3�u���t�n��=LL'�9f�:s\������U�����C6z�U%W�¯Z�}S��    `�q��@>��a�5��N�Ñ����g�gw��Q�0��*[�����BB4ӱ|��ơQÏ���!�fϮݽ�W���Fw?�;�jX�sЍ#bZֆ8X�F�&���0���Ӧ&���6q�9�M4�<�N�ķ�a�?l(�V��Yl��c��"}�(v�T�2d�}���,M�wyN�I�j̃�i���A�� �pxhD�&:d$��*�yK���B�j� :ئ#��0o���<��+��ʦ�G��Au����`�v#r��-�}E��Ļe8���x1����^�����8۱vx�bA�'�-U�B%zS��cq$BE46�|�h0D�L~JQ����bx�S~�� R)2H�XڶD�"�̛����e8}7�� �uEM���Y=$:��P��5�`��N�1%ҧ�vp����π�	�y ����I-��H��h"��#ա�f�/Kˇh�������
���c��[���I��W���ٳɇ��]�+�c����ebzdl޾!bO��\zej�%�c�W��y<���2��������D��*�
`�ՐƮ�i2�(�ؾY���b�+��Xg���v�}s�+���_Ѯ	褐��X�b��>���p�%�WEns��4,�-wUZ#�	0G�]�lXl��._#�\�:�>��n�+(u��w5`8�ދ�FC�B�9�3�o��p���K���M#h!#�,�xnC|� .���-/ �C��=DۉaF���Ʀ0*E���LY���¢l.K�����l��(��E��`��=D��ܭsݰ�*�c��M���pn��<^�52ء��[�uH@��s�������8V���qk�(=$�['� �O~���G�dEfM��3kKX�����%�$����x�J�hĩ�{xy�)¢�ⱒ]揽֦4�5�Vw���n�����iL�UE %EP��T&�E�5�)�|s�W�>X�/�j�ƏU�B�f��Y�ձ�Rw�J9�%@̸��~8�����4�CdR�ȸ��"T,�KLǇ��҃\#�Nv��h����cȇ�󑲖�Ś6�BX�<�t��fڪ�A�B�����)��d�)���w��̴����Kw$���6��0�izc��%x�������Ў,h�<�Oz���q�u�N4?hF���V,D��Ф�%���Ƙ��*˰Z��KL�if'wc?����mRvx.��m�$6��n��f-X~�Y�� �
a��k<���n�*���U�$������V�s�h$�8�.R��u�d�	n5�����a�&��:t����p����s0�������3�^�w��� ���&'\��ʳsƦ��T�'jN]<r��]`Ilaw�K(4��[�V���)�=���^�`�Vz&&]׊0S)C\)Eil�c�p����/<9��NW�B�}�|�U��}��LG�b2)�i��5<���@4^{]��+������-���T���M���n�ԕcI��\����(4�ܨ��@.��i�g��e�L"�`�I��qܬ�&NsIl^�<�[PB*�[[������%�Ӵ�v�L��e��&B������E*Mc��!+i��?#clb��4P��-�E/k/�[&��-�	�*�&N�v@ײe�%D�pc�����w��A�<|��I�yY>h��֪]kǕeI\��)f�s�O���fWG�y��.璵��-'	KAW\��l�� (R�v+�_g�S<��$Y�l�n�vW~�%X�4Xb��h�C�Y�����j��<E�C������$�U���XJa���qݛ�� NG�$���[�*�J�!&_d��< B���KH�b��*�k�Lf�!�y�À螢=+�&!8ty����Q$4FƤuA� `7���if�7/o�J�]a6Ahe�$ϗ9�i`#�:���q9�S�ɚIyjV�������^�e��"�Ud�cBS��<l5P;[�A����0�r����ֆ�� vu3D�m�f7-' �w�L/F��΁��G�M��B���-<�����(��^-�����l0�����$�v��C&50�	r��ѫž:�V�nRk��� �F�D�
��������E���yG��nhE`��lV$���04ϫ�m��1�B��:�hrA�܏`K�J�ufa�)������`)�/���{ؔ-@I�N�cfFYTzH��q��.��l2�rRM8H���k�?�d�[�a�����Ţ�c5n�S�Z�d��p����= '�$�P�Ƒ8傘�2W�,�n�S��Y��9����(�8,0�^��2�_�yV�{��������M� ���oMʨ �|�UL퍐-Ä��,ڎJ�h�lA̪g~���ۋz�W�a�\}�#���Jn��$M^'�����ph�������'st|զ��s�f��� _��=�J� �6,Ģ�(>��������D�>h�rYC�(�IWd�,��!��B:�?���Xc��Ir0՜;��/�p��h��dħ�
���r��5��L��j�&9�)��$`j� n��f��]������GD;�R��,�%�&G/�*+�7���EZ��(���� 9����-�Ҵ޼گ��L�X|��iB�'zv�l\imF*�t꠶�7��L�!d�_�c��XG1�pM��iI��%�C3�3*��pReZ�-�E4F
���k����B�FRF�ILɹ���$O3��&#�Eͮ���) pXI��&9�8n�\�]����i���[H,5)d7FZ�4�ȏ�+����17��_D�X��%�_+�����$K�;��������H��#thUV�A��Ft��ؤ�A�Nt�L�CT��MQ�,�;����lF�]�8�cq�B�4S�<��nS&^1��=������|ݱ-�w�*��&2m8g�A����RakXԯe����sn/��>c��¿�O!Mn�QxT�A�S=�ǤD��b���Ncw����<����z^�����4��q;0�� �Y��7�+�]�=T�7��O��7�0��5P��c����Y���<�5��O�?�H�\�Q�9�,]��n噊@���B�w���K�h_h?�v�-���#[օ7�������y%s�u�	�F�U���\-h0��2;ߴrJ�K犢��(#GOz���!�I�Y'����Q��� v8��,w�]W?���"&u�5�%���8S��.���Â�Ԅ}s�%[��.��(Դw�.,]8-n�thFg%(>�i�hJz{�G(�q�����n�Jr�B�y����N�o�öb���І��`���a[-���4q��&샄!B�H,��QT���]D�*�o;Lb�:@�B���J��`��꾭c��?]?�Xb��Q!��� �d��#�D�)���q�:��l��m���u��,\wzz�$V�����bT����%A���ʞdo\J�m�q�13�IRrv��hUA��{�V�F��J�i��GD~;�-��	��.���m&���`
N�`��m��f�ۓe��~�п���_m���۪�$Y1�{sla�3yh}x�+&̚V�-�(VR����%J�wrN�B��Jpa�;���\�$Ygu���CmK���&����b1����7�����n�	(�t��K�5#�ȑ�*q�#�خ�Bu�n�� zHۂp�Ve`:���u�o�&�Ɣ�8x��Qڏ掝I�8��j*d���4��e�FiS���E��,DظCS�;�d$q�}a~ 8�超�d�������04�D�z�4Pύ�8�ɏWDe���+�Å��X4X��Z�{�� .6�jx�U{�*�J`�U0��k��j�n< P�c,q�n5�9�DYlJ��)q�+��������1O��`M(:�T�i����t�����*��T�T���-�U+]	��B'9�*�fƶ����L��\�u ��a�}2p�(��ܺ�b�`�\�4�U�>2���7
��Znq���vd�7M�a�����*:e��̉Ǜ�<.QC�cŞ6I�����D�G�p�@��"8!�c���栝�4m�O=c�8�e�a���    =��5��6����.v-ɀ�(ɠ]�r���fXg_E)���"�]]���1	�2
��O<��11]�$*D&�tu�%\z�����J�I�x����f&�r�Z�0�����?��ux�aIVr��"(t�p���wq�D��jra�on��vZ>�}@;�5���(�<�Vk���VL;j���}�ѷ��$��0x�@�s���)� ��b�2�O�s���]Fm̪_�}����S]�'Gu�I�cc�l�`�qBU��q1�y9+4�E� Xo2G��1��-��\�K��A˻}#�W?#:Ǹv��=N@0�z<�nŲ8<p�lp3�	B�F+�2�C:A�L�s��'v�u:L*QMJ�N�F��u @t��H����l�R���
<i�0�FNu-�n�B''��hYЙҗնz�NG�0ި�`�f!��h��Y]� �3=�vY1�ǽz��
�/@��w�Ɠm���,�چpʿo:C�l�h�S;��r�C7���Q8V|��U0�$ns���L⚉��7�+F)��A����"W+?��h��%���_h|��ww���>6gf�����f9��݃�pwh�f���)v&��c�\�*g�LlR1��ͪ��rV�ơ /��D���CS� ���kj�0�*�nV�=�Sd�X�ZҪ�?�7�����������jBXsx2@6-�|79�i�d���r��&{�{���+.�c�x�� Lt�J��ol�t���Ƭ)Z�#d�Ŀc�vG�&�W�pl��^Y.n��3�p�/3��p����{﵄L�&e�]7ϣ1�WYllt��(�zF�F0�es5P��k�o�;ұ�p�~�ómm��8���A ��6�:Ң�`cǺ���Z �N+f�]5�\u��);�bкQ�����mV��M������I��^��)�oMc(f�TXL�'W>�g�tR�.M@��$uM@.:��;�B?9��0 }��<{6¡i�L��)���ϻ�{���U�<�3\�6��B�� q�o�8#+9xB�c��-��{�lg(@����	^R�.(c
�Ki�4����&��G��.�NUC6�;7�%�P_��&�����R������P���
w�e=LJ-���x1���8��F���[��vdܧ�B�S�d2Q�0�� ��H¡Jl�[�-����I��g�7�ys��1Vt������lw��F�+?	�w���%�p�O�U�ƩF����	�B7Y�Z�3�i� ��6�4��ܺ�ܣ%,+�H����e�����dK��=s�H����.�eJ�P�S,ϙQ�:�m7 �u�BIL}����8n`t�|xL,p�G��*��D�T�ې����P��9���&Z��h��C@��������u�����B�hX�0�26�Z�
Y��f��<��U�K���Q�_t�&��@�dpi���t��M���yP�Y}�w���d;��Ѻ�~yj �}s9hR1��[�u�&rx�P}ʬ���ۢ(U��kQ5��͓��n���¹'Y̨.�6�bR��տ)����&FL����OB��	�����校H��T�B�4��X�uP�ۋbF�/Ɔ�W���X`}��00]��Wor�f�cC�K�BY��ξ`��_|�ǈ���1�I$Ao�q�o!%�D�h�R�O�F��!#�o��Ft�:��^cӉö\�ex��X���$�6m�t�4F����8�"�RWf�*#h�H��{�1�S���yU�[m���0M��Zr�`��5�ž�=68��O���*ڀ�d�r�E�C�����<W���� 7�3S�;s7���!>�Y�֮Rm�~4	G[�i]�Ph���D�s�[P��sx���V����6�&#�L������l"v�9����I�>�k*Y��[��u��%:�T�T#�;Ö4���m�ā!s�P4Ŵ#��^I��]v�#�]ݮ�csj�&�0:����%��,%a���}R����U����pO���Om)�=�m��i�8(�m.0B�KR��q�(92�a��iji�_։Sҫ�鹩|�N�������]�,���[|#:�]�rNgy[$��<�����I��9���(7_yr��V삍6*ಁ�jD�X�#�
�=����[�f�Z�$p�]b��3���*���RE춟�0 Ɨ�2e�j�e;����� ��7#r�6�a���	�" .x
MӒ�Os<�|IaLب5�PG�s��O����(ߛ7gbv=�:,Qaٴ�wlN�w^�9�b�w/E�]v���'g0��fV���5P�DF�XnH��v�6 P��nY��ZI�4[Q|�)��v��n��h��2�
¤MiʹJ�vi��'�5��V���� �´۹��D��sS:�+�y0ϴ	X��@7HGAuD���/��0ߡ�pWYD4f�b�9VO��R%�݉�Q���@�I�TQ�|[f֒I�]�v�
��.�|��!No���@[�k����\N@;6W��m�8"�1�^��'�L�>E�.tb�D�ޒ]�ۍ�֎D��i���Ț90�8��vNu<<Chf�5�}I�n�`����f�n/����;�)�@�Ѯ����	Ň�0��m1��q�MD�b��
Tn�n��B�"�tq�����
+�ظG(��i[��:N]ɖ���p��q�3� |��({����.�]!�݈���p���B�,�X�]�&پ�6�q��n+G|��L���SP�P� �J�-zt3�&7AY`5�=C���Ax�?��g��<�l��	ɡ�R���4����Nw��T>n̹b*XZ�)Ւ&@�k|$�������/��][
S�A�f9G*c��a����ֈxQk7�ڛv�� �O��Q\�3���Đ@ΛY��ؠ����J��2���v�X�ފT�"�,���|3�Pm
ιF�j�p�19"�P��> �T�hNO�����|93Yƚ�.�������c�^�sӷ�$�r�E�=x�J�fӎs�f	�푯��*-\�l>`�I���'��ζ�9A�IMM�y�&ة� �}h��&,Q�:Tl4��<��V����o��q<��*���WKE����sY��1�d�tashl�u�D�ͤ��-�\)�)�P�|O��Et(e!Ѕ�׊�l��Ï�)�o��ရ�U~���o߬����ř8��Z�X��,�-j����L����{���	X�����ZyH~�T
0��LP7���'��_�6S���X�Dc�b��R�g�:��t�.����F�C�c]��$�#8�ǆ�-L6�*a�hÜ����"��&��,����3�udUd��C���;ӎ%
�"�7�=�5E���#��v[�W�V�l�Ռty�]�����,��."��0�t�d2�nq(*������,�q%y b��za��hu})3�|07��t�X�0�2-�;�ՑT���@�Lb�Y �Y8ß�RT����v4��#]P���8hT]�*Nd*����7�ⱛ�,C�b�����D��e���>~��o��>�δY�v���QQ�y��;��i<�")�2hd����/:�ܬ����3R��)�K�+M�e_��D�L���F5�-A����X����6--D�DHq�;�y�3[o�?%����~�,����w����t��W�p��4Bΐ�;�.��٢���9Ԝ�ɜ���Ra���A�Д�`�hX?Hx�fua/�=LV��RO�˭�X�.t?�4�eX
��V�\��0�qצ�lߵ��B5���N����;�I��2ʼ�%8
Ӈ[�J�
�����K�:�m���;۾����ӑ*)۷|f�߄Gz�ߛܕ��y�k���k����n��:�(oʰ-�>Sc�GϖĻ�^o�a�N�����F��} �Y���m�L�yKZ�/��m��h\��g~6 
�,�D��LO�������H�C/�5�,�=����,^%�D�VX�3U�E����j:8�V��V%'�cH
�u��yҋ�~�Jg��w�u�;g�*ͱ"Ƴ    L�B���=�m�(��.���� �E	Im�?���<���fqYQ��i���e��3ԖU�2㚂÷�rP̮����8��5���AQK��N���+�Yh���

Fަ8�H����)�8�wS��].�z��[T&�2�	�ԬP<8�`��hۦ&�ȵn�hcu����G4�0l�?�9�Y��O��a�l�Q�|�� �t����6.���+��r�V�N�C�W��֎>wu�����yD	���w��\������Y�z���ŧdp>�����̲M�l�u��3�T�̓}d����	%�p~�Ki�	r��S�U܀�Ķ���N��M1��:M�Q�^լ�K�ߘvS�������EPi�"�<i!R8�V̴>�i揪45Kc���G5�}�����Ţ��-لDu���2�N+�������ܐ��.Z3�K��~�8�ٷ�r���f�2�jҧ%� <b�m��s�x�M@oZ��4��̿���j�[u1�,���0Rܺ8E�̨���̚4�Z��O�u�Sf�'�������R�N��Bo9P��H����C��Fַ{����-ٮ�H$��G/1���%ni^"/��|�43,T��X��ݩ7��$
����;MB�I��w������u�d{��3ၛ;���<t��fΘ&ۿ�H�t�o@٘���kd�PF�%4��<��.�妬js�Q�oTg���V��'L�+�M�S��x�Ob��i��cn>VG�]U[¤�0��'{=���o�Պ�����~R�LlZ�,�k�#I�}�#���� R���D�� ���K�r����TGj��
�yh�����#il��'��۱�6�}��H�5}a�Q*Q_V�2W]���E�ʿ����9���I�y�d(3|����q�',��C�.�׀�=�;�X��!�w�~��O��w���O]8������Cd/;:f���8����yή�"Y3}�Y�Hg~�GO��+T��|p����}�3i�ʴ1�i�\�ґo��.VD��k�~M7����SO���+�����Ry���nYc�$d��%�,�^vl��L����=��}n��bvů�,{`�-!<�I�)�Z�la[ɺ:T9�����Yän�06.ڽ�͒<�.�x��"X�q�̤c���c�)�\�I�>���膔I���5�ML��|,P�!:�H�&?��CI�L�q��ikւhx���d�^C%�[H�BmF xfCQ�z.�K`��R�p��	�R~��n?������p���N�*V	5�D��m�Z<Qw�:��E������-j��!5���xL��Z)��ŧd*v�(O�|�Ң��d��ߖ?�6�_�0���GՌAvly��ˤ�ܙvLUqjڣ�b�/ґ��f�tjK	��|]��M\K��}-��7)YE���z(2Mq�;�{q{p��x�c�q7v�:�[���\����o�X$I��b�&*:x>ξ�M��a媉:��y�]�jg���|V������0��rF7SM�0_=|\S6o��܅�9�'D�׍&�W$5X!��gb�95�c5��5�|
���Od���߉e���4Lf�W ��������R8�N�{�R@.�m7��o�:Er��C�Z�g�� <j�DZŰGǰ�o���k��.˩T�`m�c����G4b0�M<Z�{�-H�,�ۗd�hh�O�(�㊢�63_C�s���
�螦����z֪�?&�����0����{�^��s��wqRB4U���I���Fg+��
�����nS��U/��@*_�	��Ԥ�V�k����/��C0h��2�Q3��B�-�7��`O����A=a���TGgID���ɠs
U�7��d�͇	
��pF�-Y5�z~`�a6�Aȫ�yw�lxxI� �~�>+Z�q�	^J�c�Mz�����ꦼ��P��@�L��J8�D[�7�jiX>�T<EP�8�4$��m���F���6�<Je�E����q��؁<�ɉ���굮W�c�?��u�E���Xo?�c۫.(x�%G�	�~{i�E�{�8%��<��x~���N�J�Y8��AMj[8����D<�(��ǳ����y�,j�㤇�1�'�_�Ifو�O�^�ӫ��>E��%�DWZ���~�1��'����,���£2�oy�+�����gh�б��eOC|�P$TM �$���X���y����,�$���.}���i��F��^�!?������i	ۦlu����c�e)L��21��1�kwf�<���?]�.�du��[0s�o\d�̔
?c�F���:��?fp�CG�.aN���C�4�_Nq��L#��#"ʀ9�Ӫ*�	�S���}Z��[y�]ɞ�]n�I�Ӻ�,A�U�K�p��� !<m�A��FHi�k�?�T��{�'��d�^)��e�v�3?,+��zU��)��+���:���),���;P�Vc�w�yڧև��*��Sm[ͭ�,Pq�fyk�$u��8Z�g�����*Qd��=�Pv��ٔ�z6�y�$C�j���c3��n%� 4��o-ډo�L�J}?�L�o��X%�T�Sch��\;��v�chdt#9K��:[h�2;w��	hs�]ٶ.���l��W[�"�C�bP�H��3K��1y��E炵B&"Y����y�ʐj7��D���h߅&�����w֛2Yr�gsW_�,8�@�e4����!�f�ar���h{/NB��'Or�����iGV`e`��鈆��r��\���[_�������k�5q�
rd���K��nqFl����ޕ������#Ū�)~�#k`��|4�8�M��v�p
}���1���Iq�� �2�����L5�����P�е��@��q' �N���f�v!.�{��CM	���PH0���QCw���Qo�	/�t|W�,8d�!BC,��;� q��tL.G��e���Cx0�
�k�o!%�%K��Ǘ���|a,�\�I��%��G=r�R�(Z,���y����&��Mq꧜:c:�i��ELw0�z��mK�@kP�R�ɐ��	��.�w�8�	�Ye�����0{L��vM��{����W�1�L��u� +�
���ǲ�ż����u>��!�0/#Z�B�YR���-�b��ѓ3�h�ftr�ȿ�e1ݨ���m�~�)���+/{L`GLk���:EX�[t�:V���GZ�HG�J3?�NHv�弭��^�2�h1�BK�<ԯ�[�Zz�U:��ej�������|d��![��
��@�L"q̑zy��ݶ7�&��cW��<?9c�D@@��p���Me���)���o��awL��Pw='�)�"Cm�y�tU�.��c)1Y(C�x�7��e���@ɁP�a )qי�?~hG��S,4�S�w,d� �a�B<������]a�{��Uɑy�FZ&j	ō@�����7�ZՖ���hv0�˳�8��%�������fD�+�w ���.qc�$ �D.��-��M�7L�Ԕ�uUy��m��c�b�P���� I��B5�	�t$��<�'��r��ͥ��:�1G�k�x{��rt�BS�V��6� S<?�+�U���Zd|^5��݆�����>����Hm7��YKreJ�q��k=G��ʔ��B��P��W3ֈ����2��h�)#�(�ܴ@� �-/MicZ#�[��W��G~�9{�H���|Oq	bHQ�z�.˭�	� ��'�a.^=n�-n�Xr�Zm�h����gY��T	�B�ǎש���;�D��xd�>��P��s���ؠd�H�O��8O$��{\Vq�韚ܔ*Y" G9Օ�I��Û=����9��\��Na����r����[�9H��Hs�ꌗ�'���f�ӿ2�ݦ���
�4��癶KO\���4���m$�	/�^ڧ��V�S�-��8^��-�婆 �eM_����G�E��2$P�g��Pr< 	\�P���kr6&�T�"j#�*\��+���ɳ��<RA"�"A�<�e�N)ˬB�ÿ7�G��2�f�6�=�7P    ^�n�v�9i�%�*����!"��S:������װ�r\N��1DF���R��:8��ozJS�H�.�� 5P���Y>y5@3Բ��d�q^AīǼu����<}r�L�f����>��P]����Ge����Á��|`u|m���͢�s�p���Ű��f*s�!��>jY%D�6�fl6N�#��|��`>��v;���yBE�dq9��T��ǔ�y7Dr[h��dw��)��q���)*�9�#�B�{t���]�K��S0���UU3��o���xo�˔��
S���s�L0��)n�Rc&Zk0�-�N�R��9ӣ�S�.u�,����e:Î:�3@���`����]����,ӓ��8h)M@��Z5�̌:�FV��C1��Bg�+���܆�u��xp��~W���g>��!���F,z��ؽDUi��j ����+9��Rď���$��כ2�Ěꆙed�D�����/���w3�g�S�ţ����e��m�����Έ>����~���װ��ym�V6u���t���y�_��qC�A�P.M�s,�ٛ�I��!*o{h�L�-���������n�j�è�x#����yY^:4��Om�j�[�D��g�,gS8歞��C�
�E��2���j��Z�����Ҏ}<�Xك#U3zq�ͫj�l���R���O���
ڲ.���4'g��
�[j�iU2��ZB٥\u��.Wc���(Gn*� 6n�;���]���[9��oB����7��_.*5�GrQoM�W<�Q>�R<�Z$C�)�Θ�4�X�o~���E#�!I���zr�8-�Q-�za,�0hǕ[�8wJ��i᫏��`z�ˎ���tW�N?c�m�i��e���M��8{X�������dEu��j�;���O`è~S�+�|i�^�� �8�G��
���-�E�8��_s��r�]�ݙo�X˷�s����ZwH&�k!�r,Q�긚��_ۧ&G�$H����Zqs۪�;�;���K{�ɲiۢ�Q:��z�p˯D����e�w��1:��M[�� ���� 콶v�G98�X ���TP@�f�|�e�m0ͧ�Z3"���3]��������l���5C��b���klc���ڃW��	��s�>>��.g��:	&�G���� 1� I���[i��Tx����G�6e���9\�h.c
x3�T�W�z�TL�|F<���
F�,'�vq��{��I�A��KM=�#s�*�m1�������in	u�#R��/�6񀜯MU�����l�@�W?E���=��?2-�>��c���x�K��T��;V�����!Wa�8�1O�n���_ 'eX	��G�����.y}K�h��i��5\�Ȱ�$�Ky�7��cG��v`Z���qf�8��Y�����-��񶲾��Y
��0p��$:_FQ�p9TO�g}b.� U�j16t�a�<�Ol�脌Mv����e�o�'�|<Òz�ǥv�M�i���)na�w��L�<��:?L<t|>Je������,Q�e ch��
W�����4���>c��Q^����l�땱��@�_�k��ik� �;���25��c���T��xn���
���r����Щ��̂4��}+_�����0�2���9�7p�8?Z`E��-�C���,!a�r��t�n � D�vXĶ�W6�]�����f{�0�b��5��i�� �m7μA�Ps~�O�	iw�A��I���H��4a�+ ���U�x�\��!��S��mI�_#�s�P8E�o�/��^�V���.���d�ʮ�g&�y�Cɫ-_&��[E��.Q~�7���!'��L-����w���
?k}�y)�^�c���~{������Yˑ��,=~�Pe���T��T��p`�lS�,��ud�?U�~�m������QH|��8�(t8�fhңsI#�go��A�j?!����Ѭ�'�eo�R�͊7����Pށ��*N�<zؖ7��3��5��;9=�~Gp�I�t�XwS��������3@�Œ�T�<ee��8��^��2U��&�>$�y�}��;�4!.d[�p��)8\����w�o���o�
q���kK�4C6��*b�S=�$u6.�[�z`>�bi�����aL�z���.�m�T�� n�0����bc�����|��.�IH�.�9�zހu�'U	�p69�\�v9�%yU}�)��f�7��!��b��`�&��p��P(V�BxgV�~WF~+,�vL�0�sb���
�1��*� �`Ë���q��9�T]p�Lat�ȊB���G�0VƓLݧ�kh�v�=�H%naQ���KV�j�4KƋ#��������o����́�\;����@�'�%�����a�� �j���T�e�L����ͳ='U|��M��N�y�a���8� z~�8���{o�.о*�r�8�ӧ@��V�L�"�)��ǧ����
��bf�kK
�[�qL�Ƈf*5N�2GR���1�
���Ω���֩��L#��ǧ�����ǭ0b^uG�]A��Ѹچǯ�.�1C8�6B"����\v����!۾���7ﶱ��ӟ6��]k,�0{'���J�Ι��0M���J�H����a�9%�Ԙ��+�E��(>iͻ1!�`BWŐ�t���!�H��&7)�����oB�n^�Ҡ:�p�&@��u��� ݢ�GŘj�3��s�2��ahf�c�`� P�c�үGzEP�]`��#,{�R��n�YL?�&i9�_�C��9���j�(S�Z��9�	��R9S!�O���j^�>�F�G빞j�W�@�������<�>ֿt�5>�>L}X�K���]~O| ���Z�_��g��Lp�Ό��y�Q�N2���z�ai�)B�PT� �V��	�Y�.�1e��n��wK'FM5?�O$�8bdI��G��{�"3(��'��}�#"Z��>�+u�2�zM�w��-�ɤB�3�EK ��d��l�-�w5@&��j�6.��Yh"��ҫ�d�	�T�"�`�fQ�?i*�����N�B�g@�O�;�t�e6�Pl�#��>NxԄ��{<�u��A(��T��:�B`��`�|���hm�ccS:�J�AW��dw?s��D�� =O�ٚ���.3���_��J�O7�t�h�:�N�:��5��Ӷj�0�X��4pS���9q$��f�+�h�pE�S��5�Ls-�r���N.[P3��=-E��↎�^"��KVq�=~�Õp��>7UU���s�4�B���r�UƊem��0��A�p���<��*��46�8���V�L��6��z�3㿣 ��&;�7���0��2��0���nlF�1�G�	mr�K`�
�7�E���4Ǫ�9f�m���q�WՒ�@�G�qA7���~��������I3S��aK��P[���s��?ܹ��'"`Rw��2�$p�>Yw�?X�[�D� t�>�7���W����V���8��p��T2c�5�3���v �_�z��#��V�J�N��y|�p��ɰ?Sf��I�q*CJ~��)�,��d�A��/�����N�ž���I�IM�����vZ��m=N�8� R;b���{��Z>w�� ����\�m���! ;R�#�u��"B}�m���n]���X�(Y�ta��)�:z\��p7����;�˲��Ħ@r�C�ǈO�o9dY�����NAq7�Q8������z�>Ȧ���ZnX`6n�8�c��8�a]y�DMbs��Օ��j���߹�j�cz��	U�d�2�%I�W�(�n��լ3-��Kak��Ą�x���v<����� f����+��;��,ɱ�t�?��J
�.lb��r�Mlfuh$�z9��S/T��pJ�6p}Q34&[��ſ�����t/��������.�;��V�[��9�t��������|�60T����n�C<]=��av���9eD���IlY6�共p�o��z��kH
X��9�|    2�zb�TֈT��[j�a�Lu~ƵzD��H�.O�����8;_T'��$9>�$�RxM_-�]wm7����`��#U��w���@��"��»���e�L�u�nI�o_y��rx;�wnAw�d~/��ֳ#iңuL��'x�z�A��0Ј�k�s.�L�c[(w���c���3[i�fz�ۆ(��2�L�H��|������7�M�Z�}f���|�="z�=��|�j��l��� .�gƸ��r�MB��R���Q{De�1u�)��YMt�k5L���h�5.D��S>�Ot9�:�Z����ݷ�?ude~�hsl�f�+��u�"sx�j޺���EG�汩��|�c^U�@����.e:�`�N-n����&�/�������)Ào-��=&S�[~�2�����a�e�²=I	��q���sXG�2t��T�)(�x��m�=S�Ӈ�싙l�2r�9���ժВ�8~����!c���.abc룟�ߢ��?�.��vs��R8�8�n���X�dS���Y�	s����wW@���F�
N����U���S
�X�"��9���ز�Oyu���'�����]�U� ?h��#;��ކj��vj��Uؐ��Z���1�S�����_�t�'ڀ�h��)�t���^����A�ć���O2nD�d�­������V�ڻ�Z}9G�
�/��Z5:HX�!�w*���Wk������h�%k��A���"]A�$dARӉ�����?X�8e]Od
�~���V�a���踻I��D�bk�.�k/6|����/
���k��'L���r2�����T���&���[���q�Q�����5���ȍ{��|�V�;�%^� ��}\NX�� /N6�ޑ���0Δ6��aRGO��*)};8�goM��m�p�
l�|d릕e��7���B��3�QF��O4���S#�}�up���G%��_�����	���V�dޑP�z���G�5�°�p� @Xq�o��c��G&�ɬ<�)E!��zl 5`Lv��zoF��T��
����$!�BQ� Є��Hl����#�1��i�&�H�4?�.!��^��L����C��:z ��$�x󦯦�p4q�s���ߴ�4�+n�3w��Z�П&���6xy�V_v�=�0��	������>f��a<��J���6:ݢ�Y*�$kɼΖ2/Fd>��Ye��DQ�4e@�)��2)C�L}t䐸e�	�]��cR9f5S�!�F%� %�z��n�|;a���q���cRP>�E����\d֑	�Z.��P�3��>	1�����l��俢���.�|{%�"�B�9c	�k%NyX���A�/(g�����%�N$��f���U3�]5��̿n��m'���uL���(��<�z��)��00���L�f��aA����L��--�r����h�+.�SS��j֗t�װjK:2�Y@��V��D�f5�`�>�A�h���_ta�hǡGfÎ-��i�_�)��1�v��p{�r��+��.��=M�ʴ>�;��fOf^E`4ltҏ�,�Թ�+�uzMr��K�#a�C�Ø�5f�O��nK��+�\1��!��Ѩ^��3�T.�����&��:����Fv'�?��y>��N#aíѼly͓����h��\�w�OTc]ּ��vfZ��*� Sd��PG�d���� Q
�5�=�5��C����F������m�~����>�af��?��!t�15��g�m�`w�%�E��-{n��*�|>�E��Ug���i�j�e4�E�0L�3�e
�ݚ�T�$�,����3x�Ӄ1�f��
���	�H����S��[g{��Ƕg�߀݃){KB0���!�)}S�b���:f-�903*��l>���^@�K.��=:D������r΂�[�-����4
⼥_T��qH�ٽC��,S'��Un�|�+��.Ǩ)6ؾ��A3���\x+_HsǴ��c�on�<��/e�ӑ�����~mg�uh��i�2�O����Q�p �_Jg��2g�m�fm�|˶d���]���;�PF	����_����g���I$e��X�=\8��7��pu��=m5��I�}�65H�K��6���^���g�S�E��D:^q�;������U���ٓ��v����8BF�[=1�-J56%��P���9l�4��N��~PN��e3���5�lw,1�D!�3���y�u���#�p�;�ܴD��r������ZJl`2t%��gӷ�M@=Bt�Q5�e�ɵ�K�2l���x-��Od��]����{^	��֢��0�S-)�lA�P;�tZ�����g�x�U ū���N��Ñ���)	�|��0�H��2l�Y�E���ڬ���|��Z�~��8c�j&�Y��1�3�N��n�:��DOdjĉ����O���'����Y�0��h�u1�_��;��_��_)�j���v�QN����<Yw��!��%�as��\���e��dE՝I0�.�E�M����#�>�R,��f��S'���W-F��ZAd�_�Ny¿���5�r��"7���l!zs0Q��|���,���l`�E��2cg0������Q�Z��LvBh�@0fF��N�g�[��%+�3h��w|�``���묛�̥Ӝ��Z������	�Y�tqp��I�i"ћ����S��{3W�A[D��?���G%��Ȁ�YRˁ�EmI�
����ű\��l�%�A�ʎ�D̪��
$����,H;����a��i�E>~�BL3�r��2�g�� ����_b@�9�>���a=��Z�'�캻������cE�Vy�n�<�T�0�t��V��8�4|���+�)�o+%-oH���I��@W�����d�4��)�yB�w?��C{���k�$�Rj����E�zh\YC����k$s��^�C;|�#
����h��\ڱ�;�I��!����/�2�vT+(��|���
�9T���m2�%!���
q�J�`�eGn�|�[�&�}��¶,�f9D=M�E����t3=[w�ۭ2/��5ok \]6Fw�m56b�j&|(�<6nZ���$���E˓5��k��-2�vane|,��.8	��V�S �4k����	Gvܣ��%5)+�����Q�'R�0��at�p�5��z讏M���R��@m�'���0�2YG���� 򾯨�a�&��mU�,-�$�R���8�i�֦-^��6��i��oHB�ic�)YY8vg�q�q����!�$�@���[�L�e��1��W�v	�"p$��|f�v�Y-D5J�|gt5@�|r��Bw>��Aw��p�̖��WJ��s�pb��p�kS�8׫{Q7	���2OzCs�GS�>6�@��+��HKM�ox�?�b!.m���#;�J�Z�����K�8@����R�&��y��6>�*yt*�O<�k=б����#W���,�Y,��<�~v�8��(�FG�D�l��pJM??0Fv3�NO���������!���.}�]Q�(����Ս�\�9n��R�U����n	)��8
C�2P8f$Њ0l�z<�����ҥ�lūz�7QbFͼ
��2B�d*V��l6��K���
��y��f�2$����J��g�T����fg1sb��~���ac0�� v'�\6a�6�W=�0��9�֝n�=O䈾
'݋���N2��Av��,�[ȡ��!�4f���K�غU��!�OəF	$�
�i�D���?6��lw�Px��1�,vg��2�n��+��w�NJ�9։�D3���7E�S����½Ë!���yX�r:�QcL��C)�h�AN�߄�gREw��b�����R� qr�r�;Y��m/k�Z4~c�_��&�]=>�P�t��?=�$:&~�����:t�;Dd���,��τ+Vل�䶫t�1�Gc�-�j�9Z��x�ao'�i��_Spa��|s������i��֯N[w�f����0z�㊟�s���n��0ND?㖠�8v�JH9K�� �� �n�����6+l�1�Bə�M_$�    jȴ�)�&*���K)�}.����LC|��
��|]Q_uı'頔�e����:�q�M�eG$�׶L4{�R�g=�To5�h>$��yG7�/���O�n����Tkq�X+��䓶���'m&2i.�w��k2p,�-w�ݑ06�ë�q �0�u�p�hi4e5��#����K�mr�!�ka�l��>Æ��q�!�uhV�'��-)���Z6�f�0�u�#Q��rtS?E9��.������
$�)6�o�9��V����zn?��`�����	i8jw���zʧ���D�Ĺ�j1�^�-=3���}�{A����z9�)����.]"�&eu�(./IF�A�}��A�V]mDJ�!W$K.���k$�Μn����JO4����Ƅr�E�lV�[�X�R3G�6�ϰO��:�G3�L;�ɁI�csQ�m q��M��O3u�:��Fqp��mY���� �PL���j�Zp�+�?r�·��k���p���"~o��(3w-n�qQ��o�y�M#Ǐ�Ϗ�3�0�"���h���� �o��z/��lS�Cg=�>�8�ܘa~�'pG�'
�ػZn�&�/ŧ �%�[�{�W�� fuA�C�TU3���;�T��^���kB��櫿xM�������K�A��H]���	{�j���!�2�n]��;A��?�p ��r���z���$�i�W�Tb���.;���_�{M�3�hVL��AJ�h{�ڋ��|j��q����5�wӉ_�ک��,g�J��bHR�S@�O�(���.C�����f�r��N�沕�7.�i��)�4�����g�ou�,�OpG-l����mu�ɝ�:#0]qu= �ۊ�ԏLK7뭛E�`H�T8�G��4Y��ik] �ʣۇ�MK��Trڴ22���tR����U�qR��%�G�Q����8�q0K�tvqC�ȝ;Xiv4􂰯K�d�*��D��m����U�7�� ��ʶ��k��U���n+~��!�R�D��pXӇ���K�^�{^�K���lv�4��C���|VN�'T�o���2�iJs6:�z���G/��K�`�y���Q���1ò�\�^��T l�]s<U5�U׮j�Go��9p�e����A�}m���z�W���,[nS�,���i��Y�[t�3�1A��jGF�S��F@5�����������toK匇���_D�s��2A�ˌ��R�O�)��"�����m�Вb����=}hz[��Il��iWɎ�C��r�ͳ$�L� �d������۔�&�����z�&W=�kp��ޠk6���:�U�V[Q���..:��uY�� ���"��z�&U���������Wo�ئ*!I�j8b�aT�j>�ڎQ#�Т��v�X@>AN]fX^������82㊁PDŵ�`���4�&1qc+�k:e)`��ֻ��3�����8ѥ�誙`"M�3�� {4uY����)w��k��B`��6#�o�A�Ė�'.�3��H�q�R>%���= �Dn����dH(��8��)T�[�S�'T����d|Eo�p��緽!��XԾ%Ԕ"3��)f�E}�d�,�YK�LӒ�*���c\�^"�(�d�o�p�vns��N�,��}��59v�.�Xg���T��o�;i�m�E"����iҜ<�͒YB!��i����ݾvfP�2�3M�,s_�����ٔ�/ߋݶ^�G~�&�hfrǤ>�������4	ݱ�x��[e��p�9��mS2].,)�f�����a�Ω�����&C���,�J��P%�0���!
�[�"��Ʊޕc�W[	g��N-�!N���%�f+�g�u����E=0�T�&��t��,�z��y�DQ��ޥ���M0*������V�K'B^i���'<�.w�����������0y�������
��@a�P�Sa�t�Nl:-�x�P)���8��"�g��� -/�t\s����_>�G)��i]zX'*��w����$X��w�:�O+m��8�k1o�z��2	��v�2!A���O����<'�s��#ɤ�5���Q�� S�)��۞�QcNuӇ�~�:��١�W�|Q�:�B����{s��Q'N�;�����AQ�(����W,x��sb�}�p��/�����Af�����Iii��ʾ��P�iK2����㠜�j|�+;�U[0W��KsZ�:<-,�#!_�e�$,}�b:�7�p��Z�E�����������6���,��V&0V�Q��ɷ<r6�Oq����s�YђU�Ca��4��i\��ͤ_]���Ǹ�u��RGb#qZ��'$o�xG�8e;�wm�!�ޑ	��@d�J{�������f"��N+8��G�=a�7�~�<t.G�	;WDJvŃw!�CP~g�b �(�q0�4�HPF>jp13�������*�V���f�W�޵��MY���j�I\,X2��N���]YMc�L0%��N�<w.��d��}�s(���mڜL�f"4Ar�bz� �,w8rg��@^XIo�"��S\�Suk�פ�w��Z�ɳ��.�8����]⎣$�y�M.��
7�y#+�j~}����z<��fX7��yv��Hx�gf���Kv�ތd��\V�v��q�XzC�e���(�Z1���a���@�յ|�/}��MpT ��i1�CY�6���ʘVD�K�ʳЍUQ����x�F�@����_�3����Z�����X�<~����J��9���3 }��<8˧��غ14i�v�'�%��=	�$5m�[��rW��2W��^z�$Ȱr�r8]�\2�г�	�����i������ӵ��3!������r�AHD��o���^TsH�B�o�P�������h�3�د�|��/țH��Mw�W��{�#���bH��R�(I	���l�~p>���B�]xp��)ZX`�oU������4p�$�ؔ�N�&���8��N�b�lfQ�R� �uN���?�~�[1
 ~eC�nK��5��TX�9t�瓒�(�����&9�11K�ٱ�{N��6i�0G_3$�	�'E�U	�lk�@3���*��,犗���*o7�\��-��[����N��ɿ3�_�].9�րY�sG;B�3��&�����&�B�_8vn
ȡ�����z$ �5�E��h����<����ڶ�!���!cu�[�r���B�.	��	=�t�C�j�" oq����k*��G~AΡ4#C�z��_'U���$�1^D d݁��PB��a�����m^t��52�DN�|Kꀥjq��^��A|Z�m��e�2����3?����"PJ�gP�8���b̥sl>�-K�V����bƲ �~�����B�)�PV^�)˸�-�z�S�'�P��� p����'��T2�� Ц��Rez8��L���VL�@����8|N/.�u��bM�Y�C��2jN5z�?\��S29��(`���w�	,A��o��c�T��#�0NG`�"�i �]9��8F���6/��W!�pv[
ǥt[��#��5e&l<�{M2~B�jW����o4~G���x\��|l_܆}	�I�ӈߪ5��T>�=w���B�d⍒W	z|�lh
�7��he{���w��r�.�uz4=�Y��l��\1����V2�X���IM�����ΒeAK����c5j>UR�s�X�a��X���cM��c��z�'Q�\u�<t��7���55����m =��ɫ��e�$��KD��%���h�����n�є�J� DTR�k�H���/��Y�,24 �gd� �9�m	f�+��j�r���#b�)�@JW�i
j�E8 ��aA�̥�K�zl��M�H��b�!�E�$-b Vm��f�-�1h���-�N��u@]�Ɛ�K[�VF|B9�UO���)]���4�2�r,j�W�2��d��޴�N?.��#�(k�]4d���c�,�-�3�έey,+��b���(	q;Opn�&��9G�������},��l��g���t�Poǿ�y-b4�O9t������{�5f�    �
�"��cv6�Y�<`F���ʐ�V���.�0� }e�x�ݲS�Kv�݆RWğHE߰^�1<���w��Li�9�r��5�]�Hjv��놨��E���cT�����j_\o�mL$r�bѬ�`��}��d�yE����9������x����G�%�;O�׬��P��U��H�p"M����h�(�(��{^ð��w�=S�u�$J�F�J: ��~D�r��=���`9���Q�$&�k���d2����g�ҋ�5��dQ�dȼ:��=��][x_A0B�ro�hN��<��꣋
q���9Z��\,��ۖy����(�Dp�v�	�~�7: �7)uV{���3{/x�~Q�,Pp%� �i�c��leeq�fY_m�����43[�cC��=�n9|��-�[ܼgٶ4w6�b��.���.-��:��ʹ�����ׂY�fW11�*�v�����{(�y_I��vuw`�g���;�F�Ŗr��� `���`�]�c�Dy͍q:�����i;N�N���5���	�a�$jN����T�W�YSI�c�s�tN��8"��~ͦ����v�z~`B�w͗
7є�|��vPԷ�"�� �F�aر��C������2Д�f���V�,��=]+�����3j�bIG �b��d�e!��mo%��^�Qj�7�v���[��#� A٦@����l�y[��YF��r��f�n�0���{4+7,E������n)��#��k��Y�0Y3?�F��,u�V/�-�|�#{X�<MZ�#Im�p�Q<�VKκ�#}:pU�����K�/2�뺟k$:�f�!`2����s�/Q"����R|�VIH�r8���B���F�!d�"9�ʰ�erqFu���	wG�\f�0Y�:�O�,�VČ!u�̭%$I}��%�ļ��؝Cn����y�x�̚I�qt~M0$��4��0�∷@=���f�h��ҁ�{���8]S�q'8k���Vd�?�D�-�U�IA��zG�mEl�R�ʥJXJ4��"-;w5~���wE�6����uս�'��TG%�I����:��w�屒c<�+��䓏3S"�wi�����Iq�Z��E�a���M�ύ�{1B�O������?8\T��FN9�0F�3K�OU��_w�3c���=��Wn�^5�d	hdvj~̉�W��*(���f	�Q�	m2!9_�"�fZ=�`�������[����*w�-wBL�r�Hnw�2>�^n^U�!�*�`�;]ej��( �-�yNӯj��ڼ�q(Y�W9��x��r
WOC`�Ғ���԰�d4n�qb.��o�f�f3Oq�e���٪��.QB �;�S$����
m� �#�Bm��&'�˫������L�����8�ڥ�)yS]-� ��W���	,@�.�zeV�"\Y������&��ZG|�Ⱥ(T{̹זּ� ?����%4�����%���V��0�}�6t�q
ߐ���p��Y���aT�Z[5�pՏ��(;<OTxK-�vqFc��tawb>k@���B����ɐ�7�C?��B�?�8���.�m���U��19�&���g;g�O3�i�BH��*�[��1��KuB� C^mX鲤��Y�y�A�T�8�D�d24�B�q��1c��2�[���~��cU��#�@s�p��u����G��e��-q�1T�>E��,/�E����i�%���/�2\��ο�L���m��p�oR�Zq���{x���f4SG/
�~���*|�(�O�������a<u��%�w�Mz�r�-�I5�h>k�wN=k_�	��=�%��I��S=K�6o���x��
ɑ��3d26�R��F�dQ����n��F˪+�+��ڢ��Yv�5ɮ��67����[�����S�wL g�>��=�oX:p'��Ux{ً�%Z��D�����nB[ܓ�mz]H�Y+�9�cee{��ǳ%�|�~m�fJ�qVG/t��� "͋��h�l�v�7��Œ�#LR�M��u��#��B;^�p$.�b�����4�NI �(�<�,:�6����n��.�Sn�	k��:h�u�Nf�f���0��ez98�0����+x���fy#k���q�צ��?{�eP�,�z���|��"�Ek��;��|a�\3m��g��2C	H�5�I��֖���[I��ȆG3��Of�c�eJ��"��������F��S�2�[��$��4T_<�D-d�1��fOqN�Z�ce4�㺗��(��@�X�i��b��V�d��s�u�O
~p�)ƨ�����-i����k�~ϱŤ&ի���"o5s揭R4Sߥv�nݠD>�@��� ��Yt
?��	|�I��_$t0�z���r�#դP��UN�WS^������*f�r=G�8�њ�Wm6�dK$�Pj����Oy��(8�AO�!~��F�����S��I �|����z?E�����	�W����&�鞲�~�oD�V��z��̈hB�m�NY,���L!�i��(�*-��n�LA*Fpv)k��ȑ�oJc�V��-5ͦj�e��3,���̝�>�^.�~_%�,Cd̔
p��U΄8�0����'�>��,Ltd�ӈߐ΋ͶC�;�^^_=M*��L5}�S�3���9mF䚨��t��9ؠs>�_ ��p�ª$L0����ލ�la+���,4��Ǌ}�0�J��lD@.nq�8Ѝ�,H5�F���.��$,\�:
�n��K������L���L,4J�̉*�Fq�f�E�0Ye��)�N�	�c�EV �ԫ�&���1M�s��[>3�ؘ�Ew�=w]Fӄ<�i��G����?%P���EEr�g5pO2�n�L��0�-���%��3�?�3���WX��[��`�yS�瀍�`ȁ!_5,^�@��;>�4R��5����t�Q�:Q�$s��c=J�R�[r�"XN��Z3UZ�>��L�S��bdo��)�"A�h�iΫn�E+�%��עe�[4�+S*d쑠��d3l��+�n=�w~�M��\r����f�d2d�"��fN�(�J����L̏�eӝQ�4��(��Z�j�0����ML`I�kҤ�� ��}��wK}�{q�[��b�4X����i��n!�͞��M���x:��|VZe�iv��!b��^��5A#HШ�;�w �8�����o�S籭a���,�v�j��m�+��zu�D�
�Ǆ�cM��xM�-�+�:�"�3���=������h�Q23>&+~�KX�����,ZPۄ��M�΅����X�47�2���t�]�W�lDb$��+��v)K��O/]k�%�.8�K.�$�g Q,i������RMJ�$�D�V,c4J�]Ue#�@�u�OP�d����>��}��$��2X�5�n(�V����([!5+%�Q �n��!Xݮ�z]]=�Vڙ�e%��d��n�&H��5�<������`�c�(������]P܍dI��U���k�I$5ml���+펤�C�s���q�<���Y>l+̈́]�ݕ�:�����59�i��d���}3g;��� �ɃRȲ΋���9�mv�u¾�A�r#X2	D�Cw��[��EU�,cP���Rr\,.���i���oP��@�/5�M��^���/_1[ Ꮔ������g�^�	�~��@OXo>��Fo��F�ъ��ͧ��fȺ�����(��/+Y�JK�mA�Y>�b��<LV�PR��Oy���Z�r@����XΧy5eF�2��Xf���t`�PI<c�,�N^�Ff��;�Ў���az.�D��8�c�s�����_]/�<A��[~oH_2�Z�fT$���B�BX�$��3]�:���!%.��ƫ�IR�I������P]'Op�<�[w�3�4�4�._�)*$m��/�� \~�h�Vh��2.6w21�av��c��]�lٍ��^8T��a��r����3_,�212��fT���KC�1�pw�b��;5�����X�3e��&/fO��sF�f������B5��@f    ^d��!�H���Ywn?������TZ��R'�Z{�K���n���q�oҏ�6S�ٍ!Dۢì�2���.�eÂ�W���dZY �|�A"�}z��4J��f6�H�mK[wF�l*}�0�û��}����2��"F��'���ג���^��n��	14�U��GĪ�"�qJ�2��U���.՚̨�; 
��fc�yr���.��{6E�����lٍ����m�y1ъO��̸���en�X9k�=1���⑍�ƚ���C��\GƁe�)�s5��M�����񽜩�6�%��i�-K�^��2<�(��C�/ވ��S�w'
�<������~�p�g-o����co�X�ò�����ǁ�*�Շ+*'��sp��a*�ў��/#���.DN(h���匋���5Ud���v��������cǜ�?�����ϣP�$��^�h���c�r����3� �oTkaJ���.?�>"(���6K�$������o���c� w�
k��c�JR��
�Pÿ�>7k�3�S�"���U��&C>sb�@���#SH�Tt�,٨�5/���"�˷�3mΞ���302�J$�BR=m�۾~��8��L.�l�jrn��08��V��4"3����ٰ���D�߭�&��A���ȴ��b��D�s1h�,�5�b��)D��
��l�౲K�&�RO1E�t�)}��-[�q�O�ҝx�Z�'�>%m�cdڰ<�gp���)�ӑ,�T����/ܪ���ۅ�z!���z��#\	Db|:8��"�`v*)��)E:��])lD��b��W��m
G�s�DQRX?��;.�<߼l?o-f_�,.��w3>�$�B��S��L~T1R�c+��vH\��A#�̼׍�=7���W/鈏�!u�o�:Z����|��.|~�,�>�.2Y�L�粐��'
>ʧg'�n��������p��XК�T���3u���{9R$Ja�}eٔ�t|�����x(��C��?"w|�O��i4�MFo	�1� N�}-u�8��]�wUK�0=V�4��e�f
���S��:l�s�����8�4��λ��نK�GO������j��ﳆջ��%�o�w��.فm����� �/��aS�A%��zQu.?yX2C�/�ؽ򷲐�e���@�#����X�ޡkF�$�ǧ����?i }���`c���VTk\�iTQ�УC4��;v:b��O)�������QUK�^�;	�������N�-��0�����`΅i��W��g�X��f��%�$���TVZp���+yK��O��r'ҩ�,�a[�b:�&�[e�j�ۇ}xA�5���DI_���@ۧ�XH0�>ifO���Y�@��q̶���rC`��ǬX��]�<y�Sw�t�0+��
�|S[�޼S�&�g��E�t��KAT�Φ�b#G������a��V���S�S0�Uؚ࡫j5���D��o����l4�V�OԘX��bKP �rW�����6Kw�i��A��aԣ��5|��?�E�;���J�%� n�26�~8�T&v�N|e��<T�:אci#^�$�M��m�pq��N�����w|y8����,�qX��A��eIQ00��CY�>��Z1�^��5��r�3��a�r��f��(��8ާ���P)3��d�DTe��-2�l�J���kl7���?�|�y�J���|�@Gʫ�L�p�x���[w�.�c����=V���?:w��#ϒ>�8Y-3m�)wA�����@��ʿ;�Z�M����j^��ogH&���W.�;5�iWyh6���Z�M~�a�6G��t/�N�/,|do6�q!�iջ�����h,L����+e���WƤf�h
a�b�.{�_��� ��i�x�Ey��l�����2S`2�?�8�Z<i��J�+ϛ�3|{=���6���b��]��|���:�OS��mMSOR�8�����~p.22G�Cs�`a�,�@
#�����<:��]O~S�JAM�c���a���He�6C�v�򑱡������-��R©�ˎM#���-fv<�׌ k;d/�:~f��.�
z��ZO�Tĭ�����v�\�kɖo�w��qޤioc:���r~?t?��Q2�w8�c4��/c�W��._=�t(U��r��8T���Y�%���'��,���r>�۩9kVQq���|�h�j#�h��)bF�xN�{Ap�}�X�y(A&�M�3��	��'@���9�ᇜ����R�\Ls��<9���7k,����XC�lm�\�@2��n$S�{�Q�d�T����Z��TSlr�0�C���$l�_�]�h8���Sۤ[�p���\=�[@V6ś����:
>�"�8/��$,�V��2�O�G$�(]�&�R#׫#F�i2-��z����6P�X�;���:�&}~����`����8t����P�e�T��["� ��Y�^2��}ڣdC(\����>�!�"�eb-�NQh�y�y4t�����Li�H�)e�́t�ǻ(����A�h�l|	��em��k8\ј�2�+Xp�E_a�w�����B�rI �+gh��S�^D���33<�A���U��G߯�ߩ��)�0�J6Te�V}~۔],����w��].��-��r���緺����6R� [�Ԝ�����%�[g�������ḧ��6��~�P�3J}Q;X����&D���n/�p���V�`��<s��Ӊ�6f����l{�nK6rp��8��	k*�i9SS�2Їv�'~�$q��\<�gYE��=����t�x������ct�	z��1���F��� k�%2�-�����8VFLx�Ϧ�@ǟ�TF����|[��1�l��4�=�U�����&(X�nV�{rmzp�� +ç���T�s:˿gt�%���s<D2�x�F���+�(t��Us*��Tsj��Z����~�0��ء-��L���0��oYwX���ŁL@+m)j�����Xx|)�j��d:�P�4�r��R�H��AF(�<��)��#����?��\����U_�Y(� 8������y���خp��!a ^�'�P��n�4�b;*ɈC�o�Ɂ��o�-;Y����J6�В�w�[���`�;��Q��{rj�H?拶�#�5�򙘃����_3ʧB
QP�D2v�"���}�]�l�#2�F�?�B�x����b	�A��Q�轺|S����D�Q��H�fK��C���}Ft��ޤtj�� $��i(���L%�^�*g�=f�i��ZO�d-�I�L�
�p%��;n:x�]�IEL�����z��p�:�*y�S˄�ǟb���|H�"�8W�yɛ%�"��
IL�g>��;fbA��/�c�ksj�K�b����n��4)��N"�$Hӌ-��ȌL���Vo8ƒ��L�Nm��c���6'�P����^�
�����A"O�⟨�Q���q�����u���b�����1�u���ǿޮ�<�ev'vt|5�b�{���{'pvG|KȆ�ŠlwӴ2D���P��j��+�:'`i)��m#�Mk�X�4YMK��ۂ𶘞�2�H����ΡK��6��1�X�����悾1G�n�/Q�}���x��ar�Z��r��+�˶uQ�В���P4ȥd�5j����<�:��
#2�}�-��w��R����f5�m�<A��#�����m��J�!@���M<&���2K9�&0Xx�?e�K�W�Ʊ8ޜ~�J#�B�9ݶ:J�s��9HL1\~��(u]�������x�e*�d%aΐXvc���-ƍhyj
�F��.��5ަ?�*�UyL*qqh�?"���)CB���<��[fj�UH�3!W{�Ղ���qc
+y�V~R
�U$�PZ��9������m�a��R�����`�3a��|��*��?�'kDp���5�E��N���VЛ�	mߒ5z�&�5��כ��,��q@���z|�L���f�+{ĪHI&�y?�4��y�<���}�VtCHԿ�i&    �zL��v�\���T�K����4|��֤;[����7�|�F2 �%»n���B8)����'�(+Z�g@��t׽L�]d�z	��b�7*q��ZV�`�O`���9N�a��Eũ7 �f(yN)h~D��{��N?ʾ,��1��kzep��_�eg�M~6dE�6>�պ�[}
�|���˵�r�O�ww�Z��1�P*�&�-�Җ��Dk�.��|tjK̉3�k��ڿլ+gA���#�������vHH���=��z�	j�����d����~Ж؝I�i��H�{��\Y��1�Wz�\9�2�l\�Z%�K�K��`�͇��#'�+����{/�����o�JhZ���'�l��V��|K0>��4�@xY���शVn_1O�|��CE1�*CƗ垙�L�2��wUE��>���L��tP{���2��x���������6�\~�Lz�½.fz-�M���F|�4-����P��Kd0��;Ы��ē��&�H���6<d�쮂���[��1�_;b�����ۇ��
�3J���)fig��v�z|�b�T���L�1,��j��iX���ϲ�i��f����_�qXg����?��0
G/�Ո� C�U\�R?6�D8	�::��%C�ıw����3���7��)6�|Ű�|DN�a��UH�Z����b/�E���߼VF-E?U y�}��-�8���+�e�7T�a��_�; [\������9��U���[b#����^K-7��f��$�w`�n�T�N�te��n�A!��q䠕���0��|��[�H��p|r��Y
�EZ�?X�^%�HU.��v"��pȻ�3%�|������$����=kßBUUF̺A/��Ǡ��I�*e�Q�XT�r�}�H���Pi؏ՠ��k;�K����Yg}��B�J����@t w�	��d�0+g�-[01��6Y��a�r;�Z��2Kg?���6��b����Du�-���QW�<�Ε�fь�ŝ��U��1'���i
�}�<��OSd>�,�Cpʐ�P��n��f(1�����+�ď;�s9�\t��
�q��LL�2J~��,�~���`BRG�idhp+����Ѵ�L��k�j���`��o9R͈V�A�s��8��l���O��]\��ma��5���u]��$7?��{.�zʇz�JG�
n���,2��H�D�%[����p�ĭ��b֒G���e%j�b�_� 4۸ђ��K+��#�/h���xf�%t�Xc�H��{� ��q�-�����ପ��y�E�����wH�rЮ��v����BjV��lR�@5f� -��B���V��2g�ǉ;N����Ρ�r�x^��pt�w����%���(����CX(]~�n� ��A�M#6�f�08��1LIN�e���ёV3��䯤1*�3%�
\5����Aepf�k�N��3dmr��}���8�H�=E�8G;Xi%�6op�!E�ezZ���tDMה��iy�Ѕ�~zZ�7�P�?�mG~��
XT�~�'�ǥ�9;6��!�Oa��$T�mɴ�7@;��Ķ	�  ��E�n�TݕV�9�d#�J�x4㤻�o�t�,�_%H��۲-k����z�jg,�vO�)3�b��时��*�g�f&L�_o��=���2RS��1MZ �o5���N5N�Ė��)�9�M�]��B���۲�W}{N,��a�)��e�2��3��\/2)�W�~��79�k�JR���%Y�_�ͦ��n/<�@fuo����)��Ǧ�Є�fV~-�n�[s�,1]�9�ЖK��1��/o�=�Ȅf� ��֏��I͋�6iz�����Yg�=)���n�'5W��)�>��lSU<��M.��[�e���^E��V�f�T�bX�J�����kqK6ִʇG�x��M�E������;-3|&{��rj[nspN�y�c������o�R�?8�#|�0�&�0?I�.�ge���z&�������e�B��;�����+�J���4�(���[�Vyp_Q�I�Y�GԹ�fnC����:��(ވ\�û&�t'�c���(�^��ض�;�4F��y��LU$�\�=�8����&�>�����FR8ؤ�_��*R�m�.��jМ_8��tv���r����]nE]���dpH�`��9t($�͝rC��k�X	��q��HK��x���Pn�2-^}MvBg�jd� �;a�]�6z���"��py�U?Z����o��{~�৙1R�(N�osSҧ�uw$S cq���I�=s�^`�3:�!��Z�M҃�S�x�1}ҵ�]��A���xLg���T0��4#�濺���l� �m�˫QH_pȁ-�e%�G�9��N�f�p� ���$5�\��kB-Q�S.��H�t]4�>�W���!f�ҋN��:	wű�A�d�&��BO�e.
��â�ï:�X�l�~ߩ#<n
Xx�*��-����k'�����N�C���>��8'ь�)N�Dؐ���ʜ F�8I�J�~ЩhB�쫯L�4�KX�?��Y��뾛���Řt�	થ�\���;�m�����5f������+)kڷ-� �M�υ�d	�ƈ�����Ñ@3��Rݩ�C=�-<�%�鮍���~na�=�,Ż_���z�"OZ�fQB�wp��1:s&�ȭ,YVf�Z\(���� Nx*����/ټ f|�n�� �Ki�n�dm���F]���B\�?B%Q�ᵊK3^	�^Ԙ�t�<(�ְ�����8_����9,[�;�g�=�},,�/byX��Sg�*��^=�CM�4�S�Kr������v�B;U�9j��2�ZE$!�?[M[�S�p�`x�Ճ�f���fS�R|�ξ�r/㦣��ek�w���M8�=�Н��NuMhʕH���L����R����Y�!����{ z�m�r���/@/d����v�݉G�ns(ۤ�g 1:���*`� ��}��1
�R_�n��Q�d䫔���4e:�F>�;ŀ^���[x���b^m}�nD^b����y;lZ�71���y觾� 8f�))��h�xeYѧ���RF�9T�Wgcr����o>�6��og�#�q��a��J>���u;o�D���2oL=�����g�oc��T{�Ug�DVb3C�:��˒��r��kQ�)�[g�j�d��c%m�^lw4����&�5	`�M�$���O� zXڰdɪ~h�� =�	l�1,�/MNl:�#�(K���x��_�;��b�mG.8.��� �(j$*��%�ի܊�mW�tDj���0y�0Q�n�Z�ć#�)���F]�A���ʕ���F�W'LaT�u3H�QŘ� ��)�����V��rW�֬�҂�G��W`����XA�s�xjz�G�؅ ���Z�@#�;��C���E�U&ûh��Q��$ۧ2;�ҌDyGH���HG�E�4ED6#�8�GVn�Qz%�����9(���,��̕����DG:�O�q�o�{h�_�nY?V��e�'�������..���j�? ���wo�k˒]���A=�>Ï��Jd�,A�	�w�{t��
�l�uy�}�ʌ�͘cv���oV��+�`G�?��ҌR�5�݈r[�u�+���RC��fI����(bk�j��T#�婶���7�n���莻[���ΑA�G�����?� �#޽˄(@����Wr�!��u����9�mK<@���~����C��q*�fF��_?g ��:�i��p5�_3��%W+b�9D�Se�4�b�\[��S�SH�"�K�^_�i��Ns���Apt�(w�����&��K{
�dR
d�iK10�S������l���Zj�v=�0�䔟�`+�c�]d�Sh��lդ^����<E{L��:[�Q3v�N����ǎ��������56��7ID��m����t�,SA��%ȅ"�~8����W�$�ֻ@Um�8�q�e�l�G_jV6c��jf��oFb(>;b�H�8��.���S"�,J3G���(�Jpb�y����Y�O[    n���|��Ll��s�`�9�DdZ�l�HP�/hv�S_ �x8�nѧ�߂���v�,	j.��L$�v����GG�"|�s+)٥��rD&�{	,��͓��8��4���)�}��O��!���	~�N�qm)˭��R���\��'��c���{#�Z���KE��1;H@>_5����9����B�WҔ�30��l�]���t^�g�;�V�B|,w$�oTğ�beZ�β|�ᚺ���B���1<���˝^��
G;i���,n`���j����MDrQ�,��M�f���������T{���~�|eS�_b�`�<c�X�gj�����Nӈ���X���Bm\��U%z���e����k�տ�]s���8"c0]�"�-�ն�Bp����s��ЯhݡZL�lET�{ַ�?���#�ĳ��<��a�^jR��1��#Cj���'��*��;7ֲ��m�9�l��-[��{��m�[*AHߌ2�͕���6Q��K�M���E��2w�Wx��5�&�W�40���O[���j�P��5��X�צ2��A������\��?(�C�l�O8\��UmX�8�1?�	Z+z�i!��mr��@@QLUI,�.��g��įH�n���i�3�3��03t�)3G�\��ڎ�����(��!��)|J��)��k�k��xw1�~n�6�th�1%E����2��q���uhܛL�������[x)�ZN�+��lB5ىCh��`�xfv�s4�I�����W�uL�I�4݌�ł�'_��\38�&DR*�ũ�z����.t=G���t�T,\Ɔ��Rˠc�4�Ly�;��_:sg)B֌5�NՅ�q�aeYP�/���/丏�V��i��ݞ�&`�<����Ned��眗��u|����6�e�ۿОQ���t�QiBM�\�\�&�z.M��)N�C���^)��蛛�ܨ�J��zq�%(G��4(G&��c���\����Ua�9�W�V�~RB�.�>|.)ӖŜwuYrM�7V�{�X����m��Ccn��\��b3Z��W\�<H��c��`�l��eK�>rMl!4PN79�&>��v��v����}Z��a�Wz?�I$�@���#vf�m0��&p!�#�|����޾E��xr&bv1�5��4+6�C��ew���E ,�բ+UW��-����e)_�$<�s4J���2�	�3õ7+bz�lkf�M<V�r�}����b�u������ٹR*�o��@���Pj�$�!{D�6��f��x��� vR�m�k���P�^���w;�,gW��L�x�$P��sU����#b?��Ü�.id�7�To�mL�[�ո�b9�o���K،�쐚����p�*Y:�A{��lI��y� �� ��x������M��4+�%�zM���v|{)f,Xe*��Ru& {��C�Te�]��� )}3jb@���걝5���;�q��G�+<���.f��YӲ$��ٌ�n���$]._�E��t��~��
F$����-l���p�>���`N���_��s�ԩʖ��<$A���;V�<f|@&=���?�n��Qm}����=���ט}J��{q����5��~��%�ň�v?�˯;��圯�+$d艧�]��X��U��w��i�q���*���ϵ�?�B�R�7��8������5������+�H,X�%�|Fv�<z��b�?I�yK
����G����A��m"
�g�75aO P��?�����.�k��ސ��߄�c��0us]U��"�aT���Ƚgd�g�����Z��{����W��P�ê���=M�`���C�,3aY�!s�Z��v?�5h�X=?��<̑h ����1�dC�	㋶�aXDIp-��J�:�z�u��T�������ؤ5�F_J�9jEe��ʮi�SRB��y���ʑZ�����\G������$���?�����'p|�'�h	��[��^���K?2=�t�/��.��uq��*��i���H���:�sdUn�o��n.4���.Z`X2CO�!��jU��Iץ5[ڢ�h�"��d��"���CĴ������3�EѸl���26�:���)�j��%�����zM2Ȗ��;!�W�N4,0���L�����'��x��݁�Y�
�}�}jW(|���B`�H~z[�����u�[�oGg�t�nS�Je�yX�۾�8L.�(��&wa�|�w��A\���њ���˛�Az�������v.b���q����45����C�֑�6��zq¢ZrO
�G�]�gz;�l��7���O;z8�;ĻY���a=�2�3/�2{YL�k4M�	3������cA�vy�1\�7euZJ����I\з'\�ϙM��;�s;c1w���5UOW�R-���5���)B�k����9��6���L&`�#����_;�S���ߪ���b7�c���]1���j�L�6�qi��F��2&"t1�m_=7oUY�`�q�o��M�?�7X�my7fv���W����P(�n���D^�=���O�C�*��B�Tw/F��-J�v܍r���)GO��Ӝ�[>�4��7\yY��zH�m6���/2� ԰p�e��0y��=�Tz'_��ۦ`h�(H��CE^�DȬL�ryV!�G�X�?�G�!o�p��S�_�ىQ�9���c��dƫ�XFLR@�;-�1/�{"��jùZ�����vթ���gWۤ6��82[�F𙪜�C�\��o�ti%䌔N8��w&rw�&�vz�v@5kq��N�7�X:_'���#L�M�A}�Z�����Ǘª�[�i�x�>�D�[���鈘j��G��q����KI����A��dK���_�J7�5�j�`u|1C�q!���b`S��vY}��ɖ�@�ʫEn�~��`���9f;�P,
���;��iۂ�1F��lW�(ܡ�G�XG�eU��]���[�����MD�=L�6�^�8���:b�Ǉ�nƞq���o'<D�܍�Ԓz���
�T�*{��<Қ��b��dWX�\�UX�ǲݨ�85�c����	[L}��"����&��a�C��tƠݭ���S��Lb�[�\�g�nv��@�D$���"%��I� �%ﲕbG��%ϱ5�M��ǔ����&�u�@�v\ʧ'*"�Y������2�TnoGí���mH�g, `�=�)YA�rP������Xڶ��LDb�X��i�%�B�Ь�-1Wf;h9��ǚ�I�U��m��|B9�\[�US��	��l��Ґ㷉��BՈ���W����Z0���c!O5�fX] c֥.��>�1��1����@;&�����M���ij�H����L�E��-���a��f�{�v~9��j:�L�8y"l�*�g��^X�w� :q�b�kOvl�`��x�q�f��u�To��Ou�Kb8�x�����][Wn)�q�h�Ep���KSu1�͉-��)���L`ƚ�P�S��h+��F�_""{�*�S����|�m�:���bA��e�]A��R�� ����>��Ue�����l��>����a�$�.:f��� k�|�ſ�R4�Hn����lj����8��C�I�(B�L(S�8[kK[���gf����UIb̈́ c�e�±���/6A�dǋ�*?�Dz�q�6���:�$��*�ų�1�x�����:1��y�D���֐��X/�HЏD�Xo؛�������c��l鶚;x���yu ��鰡r[�8�X^�mx[�M��ZR!ķb�A��	���9:�sZ�27�dޫS�2�Kh6}�^�n�C��6� B9'���ٷ,���Mz���tڶ��la��d5�m����bȻ�v(����=�9��O�=�
�d��ŕ�4��]$a��8,j��ۣ/�<B�}b��cX���q�|�����tm҄a�C���z���fr��#|���?u�w���>�B-��G���sv���֗��7bB0���ܩ+^�9    H~7���-�L8$�w�>,� �t��CԆK���3�ʆX"_f^��(oR@p��C�p���듖��&a*k�>6�K�i�H:T�م���)'�>�N�l� ��N8����M�D1-�2�d�4�'�j�[Q����<�R.�4�v�**0)yNP��و�?S8��������2]PS ^��{�}��K��,�ܖt�/qnnՎe����0�%~\%u�{u!^���z�}��?TD���f�Ht�c�?�CЀ�C��^�%���c+�1/;�"��A��n>w�:x��x;z")Uf/��[��fY�4<�Aw��%��t���v��#/;�iv�u#���Dfl��G�3��RuD�I�D}Y��l�ki|B�0���.�n��w�ON���Iuo�yJ��*Z���a��+]��g��:�BX1i2�l��z>@+>�uQMi~m��*6j6�Pjp���y��l�!ͮ����p[U,	\���V�-�`����H��).0䦙b�̖�O;TL��ŗ�����nE�����eh�a���%�э��u!���G~7�bjw͐�����.�=�F�Y��Zv�k��m�1)v�H�_��,� g���U�s��@���[4K:�Qul�Y3m-k���p����ѩ݁�]��h!E���@��$G��U��	���&�/��zƧM����gI�~�4���4�"�V�Y'X"���L���LH�(��!\�>�:/�A�t~�|Tk����vx����ӕ��Om��hhThz���|�d>ӐL��)�mx��*K���m��Ἇ,��v��q�[�`���E������0R�P#���j�
%��D��n�N��'��fy��R呤��(?'ȏp�� s��t�[Z�&��s��j�f�V�4��ӾTd�_L�*X<����uM�����׌�IH��c�y����/g�2���+տ����/�J%-w}��/[ޔ��P+�כ��~��g^��+!� ���v�B��bG�ɨ+H����U���g�C�n�A!͎-� �f"D� ���gd{�7�������񄞽�����[�o�	�_������kz����9e�~Sj�� ����P���c�i��T`�"�~6,l��2Vf�sЫ7��w3��FZW�}�M[w�
�*�´����Y��e&eJ/^�����é�\NM������#]i\��RQ�=jK���^�k��6&%��H���A�|����)$���=�`��?��^-B*�օp��**��6wZ�a�4xd��ʕ�Wbw��B��H���i�`�K]��
[�o�^�40_'�5���}�V����� �#�?�c]��FC2���v����TgjKS�doi�lB�mR\���ì�jfu�]/�1W�.0ة��e���r�?Gz彲yCFk� ��'YV�Х��~&� (�L ����t�2��.1#|>��$��f`��Zq�n���н휞��{�S����]Vy�%{@��׷4I���o;:��F��i{9XH씝���XgF�{���OG������H-B�k����2��mzj�
3{�::s5��B��W]BH��t�j�
(3��j1%�[x���fB}��V3�U\ҲU��#�9klU���n��f�L6a7#�}�(�~��
@o�!É%�	�K��!/��qz�M3?�Sq�d9d
�3��wv�4�b��جwKd[����Vv��ܛˑ�e�*aL��	�1�e������aVӉj�I�m9��/����*��y{�V��H{խ�\NU4[g��*w �21���s�P"�!K�������tD��I����pd������Xb��	ئ3Y�Ըm�ݴ���pь��0���ܱJ|XRc�d1��	2�Wխ��.�9�ұ8�'6��ʹ�5 `((�Q�t����p7Y�&�`d��[����o�]0gْ�hw"/�B�F)���	���U����љ|F�J#ɕ��B��ex�HA��e!���Y5�>�E�\甌��Ǯ�K׹@c�E޹���L��hN�1[�8��ȋ�00H�7�>��ց,c�| :.##mϓ�Hq�jdc6���|�?&x���N�f����aZ8 bJ��'�0u�1�G��m�S9��/��V4i�\�|[Y@#S&w����eۋ^����r�&�n�{�S��A3��^�^3
��Q�T�@N�h~,�G��>^�N��.��΢9�u3�Hj0���i����'�#����N�nZ-����>Г�_1���㦑Z��h�k�p`��C��ս��X�,±k�)����j��5d.�f���Q)NfȢh��!$j��?uڝWw٭��|�P���*��W��5�d�%�~��L�3]x#>��3��펁=5�,��\1v��ԙ�m���U�J�o{���%���[��%��&�~�U�w���$�aW�%�ק|Zʺl��*.�ſ_�&;�����9C��+�i���>������(� j:��G9uj��}��CoŢ�U>�V�ڸMSg�2q��é�%m�YK��gN�*;���@�y��~?��=�Е~�`���@���{F�̺��C�1��d�H�O����m`U�!���w���Z��f�t�(s@������T��ϋ��#���G��4=�|��7xm/�����ta����5VۣiŤ�2�!�&Y1E1u��	Rw+8�*���sGI�%��7o�ifl���ݪ?a��'�{�i�����*�{��O�t�ELZ9�C�试�H��[l�i��7,n�����\e\��E�9��F� ��:�
%d���Go���g�\�I��[E�K!X�A��cQj	������}�;��K���_���u��S����1�"M���V�я��\E/�_0�3l\�X��Օ6�L[~����SK���s��:L����cwݘ���]W�P���=mUD4�4�|���P���TW|�	�
�xW�o�/��9N�:y۳�٨��p0�t�OR��������F����~�I�R�|���P�rF�-�`���2�#4�7t5i�gT�=�(�3������ܦ�����[E\Y��H~����~��������9��󠋙 ;����B���.�`)��̑L����su$�s���1���|�O��!�ЌX�dN<i�<D�皉�t'n�
'�0�f/�4�X`ኡ�/�C�4��)�ɢ��(���4�a����ŉ=5�HaI׎�G�CqU趻DаL���aQ���?�<t�ǾjҘ�t���)���y;*<�j;j��*�O��#���0@��������D�������_@RH�s���x��Ħ�*ܓ�>��"^��!P��ӄ��$��,p7����5��Ȟ���|;aE��*�aW������w���,W�J��o�?+˪�D�j����]����71��QYm�D�ܔ�=*U�D��u�( <q�Ys�e/�_��G������s���i8���񏞛������'O��r�V��}-����3��z�)����^^�X.�¿�6�^q�ox���!�b�ֱ��p���|VT-� ���]?�&��M]����eמ=�ٞcj�|����5Nds�ԥ2{;�U��s4�� Gu���I�pC|Qɒ�<�G>����r��K{��0e�,�A(G��4�x<��AFS�����hG
�_��6�7d�9jȘy8��T\a�H�'�!a����Z[�iLu�0*c�G3i�qL#Ɩ�#�v�0���b�Ņ�kR����mm=�!%�c�Y��,j�D�1��>C$O"�l������M�ӆe4��sd��2�|Ž@��^ri�\�;S�T'��x�<fV�0���P��gPVX�����|�K�-������4Y1I;��OZ�iVM����@�>0�Q��al�8�,=Jg5ŕ��w��?~�F��M�8"�m59?|Eb]}p���q}��;%M������(yG-�}G���I�6ixl/_���Α%�O\$^    6�y�7�����`[����MF��J�-1�P�)/��Co�Һd'S���$-�
��f!p�T,�:��0ՈZyZ9ۄ�g*����A��v,�|�0� ����"{����=��Vb|�VOq��kު�2��䞪!R���߬*�'w���w�E��8՜s_B����P�*F2A�,���nR3��D|� E�QR3SPȫs���4q���r-0�ES���������� �#��	"����k��!g��p�P]N��iT� &鎑��,�VjYk�P�&c�α��uYS��q��f{2fZ.Lk(���i����vX�������Mx����}Ʊ�G,̐�b�E��pt����*�P�?c��c��w4ѦU͎w�t5/T3���{	.�����So����HMs�ݜŲ�HD�U��.�/o���ܬÌ)�:a">f8�乴]�� f<ؔKI�R`ڵYU����pV[���[�L����̸yT�-�[w��w��H2݆^��N'ܾ5w���j�b��76"Y&=��;��hź���1,ՌKk�����5��-��B۬����<�%M3+V�H��&
*u0���R\���v��|4Jd]��X�4��)L�`,�Zť�"a�ty�
�.�Sn��h����'��՗�S��'�o����-��1��2�06�b�);|��������)",���5�,<�z;�bOq]�M3�d�и ��؏S�2��̘9d*:��M�	h���H�A� �#�oX��^_��3<�z��Q?��f'Tm�Ŭ��_��E�=�A5ۈ��6�^�k�%��Ј���'C!�bDo��{�<r|���R���4�1��K����b���*z!~�?����9)�M�%�7(@9T\9�.��NE�W�w� �aU���Y2�O�?|^�@AFzS�M�=T�g��-y�T�Y�䡬Q�/J��ggq�P�v$Ь�&��z1&�m�Tm{�h��x�ѳ+n��c�:�,K��SZJ}$��jt�Ι2Jt�f'�k�W^K���~G��}��ͼ���A����@M?YPHǛs�p�Ǌ$ˈ:5)j����Wd��_�Fקٍn�G���$>Y���&��LEG�W���y��'w�L��q��c:o���%�_�e��F�/�:��c�U�9ͫe�6�s֫xT5>|X�2��&�8�X�z��F���<��zʭT�2Tx}�۴����JJ��[73��)��As���(P-�Z�4�ʥ��	����u�h=f78�Ӭ,���j�Q�e�1��^��5)�A����ʇ�m�7�Cĩ4�h���Aoۣ�4�sX|Q� e��f�^
�?��9=S��� ���9�u`U�ͺg���OE�??��x�¶g�D��;�ԨK�?΁��r��X��[����㒳h����x\��
<uۯD����e9eL��ώsx�jS*�B��_7��]��I5=�E�.H[3�N��L�x�)�3���M�F�YXYcX��eC��H��n�Bw��9~��[@{��c��w� 9�����n�^�����Fu5�%��p�BAr�;	��M�g�����c%��p��*�L��?i�:h���8���"��!#���p\辨k�]Ui���^�6ٜ�n؈��)8��)��N��9%���`� O��㖒�!�yZJ��!�E �w&צ5f8�a]
��ԑ���C:����L��ͰC\�y|��<���d�ݾ�A&�k��	�ү����l�\櫟�L��,t�ŉ�B߳��m�Yq\���{�\'��[V%��\B-�q�ߝI#6*�j�W��>Y3θ�s�D6��ZJM�u��'���Q䏸V�� �(�n�H��8�U�6�CE3������t�\1��:lZ��C(����c޺�oL����3�tX:h�%�7��cJ�D-�M�JC�8��>i����U�oq�Pw�_��Wƈ�ߖ�0H���y9�b!�`XB�6��B7��FU��s�J(4n<-�w�,������lO�<�(!bۈ�")���n"VN}�n%�5�p3s���t:�|M��q��pQ���M��K�#��o;�"g�����^��iÉ��@<�t�����EG1��!Ju� }YZ�Mq�ɑ�#��'��S�F� �V���|ي':��Lcki��2�*�խïO�<��fqG�qM�x��ze� '�X���G�r8���^��Y��f��
�$��qO
h��_
nn�O9�8x�v�&T�^��H���H��y[\~��p��FE�w��n8MBY��+EM�p���@
:?az��&lk�^Y�[i�QC�r;1�CQ���8�t� �0���3�_\�S\�s|`�>sYL��ڷ�e\F�R~}<������
�
u�5�����qϐ}u3�d�mn�b,����b���5�r�D<:�Fz���n�<����1��¥Q�K�m�A6J�k᥼�P0�� ,bf� ��L�fR��rG��W��`���Qp6�[~�5��
��*pٖ�?�:/���و�xK{�U��)�,�"½�#уQ|61����b3D�$�;ܞ�r�>�C.Uipqw�=�)������$&o%\I0����*�B�G,
�_�mĚY`��<~�Hvg��9��p��].��w~`��)�4�c�iQN���gL}K�D�ӹkQ�
�u9���[`�鰝&���a��Ǖ9?=�M�����p�A��J��g����Yb+��+����������)cCl�1�5�ջ�4�Ew��g��k�a�Ev�v�]�]��Tpr�����j f�So�n<�u�������d�s��r�@*�Ƴ��+e�KP,3��� ��/f�e���H������9�!^z�d[�5�x�,��p�lR(9�qZ	쇮8�y9�X�����n�hR�4��֘�z�&�-]�(�DJ�>���o�]����6l��J��/9P���0Rnz8�)��t�*.�����f]�v4�&��z>���4��N��hc�����o��QZ5$G-��s����B^G�a�6���W��<4��Os�?���7�C��e"��D��K\p����3bR/�hO��7��)���B�_�_�q8����Ęm�{��e�� [��s��C�>�}�u�t��d�⼞Kk�����Ii�.��!��,D�m	/5.�PR�
ukRB���&d�X�gG0:�P����� LoݲM�~0S�M��d*V6V�P�ž21��S'G���v������%�#Q��0�+N�ӥ��C�$��q�R��1���+V#�l�ϱ=)����qP�4j=x|c��:g� m�>m��	E�}�A�_�&-��}P�'� F�ѻ���`Kj�z
��erC�l�y�]�	.���G����*��ay1(���,~-YQ�<�d�Oc ����� �N1n�'���?��	8YV�\��U�.	5�9B���=���I���D6����:o�[���ড়)��ɊGK`ú2��n�Y	�Rt��e7u��S�I���c[�Zn&LaВ ���y1���8���n�_��n>İ�<泆�{�������}t/����®×����ވ�?>Y�����fXAl�Z�T1������;]-����3��m&X�����E��΀�'�H�V�&Sj_w���OM1�ᡢZj�մ%q+������g�ΔL 
⦕���w���a�%���F��`斎W`${�#���lф{��|������#a����2 up4$�~=�w*��>����g�*�a��:p=��afY�$�w��A�7���f���̯_�0�D �b�$!��W~y*��=�l��� _q0MN2%��Cv��[�Uo�r��{�N~�	���j�����٫i� ����4Mc��gs2^��;՗k����4�|�2;��1���3���wv�d"s�ҥ�3�d�7]��.!�����g1ޑ�WG�8���<%�y޷V:kй�G07t�t�_�og�:+����	����f���]��#o����pm�vE�w�#�����°��l�7�!j~	h�F/Y�,�<��~poX    o"����W����	�����=�'�q�-�:/�D�Q2P=M{�k%�䤛��,<�k���Q�^\����:,�0�%UYb�Ϲ�ذxʭy�v|t����t���������茩��f�������8m�H�r~OCxt�P�.�z��`�����9`�ꅕr9R&�B/0�
s�!KC��i4���Ӗ�|�g��g���b�a�+�N�$�Fq���`��y�8 3J�e	�#�X~U3-��w	&���X�**�O0��aΗr��ѯ��u鳷�t�8��G�s0}���Eu:{ʁkD�]R
�/�k��j�xvL,���m����Y�8�����-D3Q~���e%5�<�'k{']�p�L��,������U/?��a���+ �8S�4��񻢋M�3J�kF�ڪ���!�'�~��z�it�n�Z�����*<oT�T]��,s�ɱQ����e;'�%1(0�ui��������G��}	��#�~y&��b{-��8��lCA;f15��o��_<��k&��v=�1TA�ݐ��F���Д[}�^����lŊ}�jvm@�>�ꮴ�-*"x���G1��HA0ĳɷn9������Y�����Lx+�=^�q�gF���o�-����v{��xe��7M�S6r����I�}�q�(��s4�C�b�=��
:lS:�e<b��d*�;�H�-��2�/�`���('��؃r�xd�|n�eX���'���Ci�Ҳ��"��,�i�[o`||>��OOE`�d�U�*��J�1g���*��ICA[���]�vdi��@xp\l,X�4|�#Y��Z����:��`cRt)Q�/��2&O��R�fr=O�D����3e�+���4X����3�Io���r)}�5�(ygY�l8��5"�&Ȇ�|�1���g9�ՃZ�d�cu����[��B_�x�y�#?���؀2_cƔ��߫" �;ڔG2Ro{F	6X3��V5wjb��q���n�n3rh���=Y6��d�E��I�/5�[H����+;��ý�/a���p:nH�g�zń���c�4���H���C'߭d2����<��sb,eܢ�_��c�;Λ���`h���O�k??�|��;�Q��&tyY��Բ!��7��^h���7�X�,��*��řT|E�_���C%��WEe�k`R�uwI���u��yc��w�9F7��|��?�
oC�*�S~�7/��P6��'P?�W���[�XY��k��X��f�jz��k��S���	93(�=|�hF�.���2�E7��ܶ���:LFŜ�v�k(��.�:���]*8�[蚐�0Z�&
�%}��B-P�(�CW��:H���z��?��鐺�3�ӲS�f�6�	!�l͔׏<bS�����j���`�JC�h�͢����&?B*�8q �L$���<�v��XP��9Q�V��� ���c� N= E�9b�c����z����P-㧪���!�d����I�J�p��+�s��̗ͅ/�� FoW���W�ޘ���0�C�y��Z�,M�=������W�N�Ie�m��o.A�q-L,������&�l������0�f{�أ�a�R`����.-+o�k��8�˾�EC�v��\.#0&F8��+�0ےgN%����U!��h�R��W�Vh�IMA�&�d!q������6�//��4!���r�^��a��[���b͇9��:<�_mI0�Ř��8Y��v��v����c�Z�^Y��k�t���VWf��C+	5Y�����)��s�Iʘ%b��6�k�b��ԉ�?�o��ƈ@�E���·+&y���I��Y3�E�,���6�.9�$v�Ԡ���4��&[��\O��z�,I�����~�ש.)��[l�J��u��N�rgP��})�r\ �de�A|f�5y\�d�G� � �c�A6=&�P��f��$_#�)0@?�2�|�y`Pz+wmg��6�B���)E���R�F:��;�54��T7 �4����7Y\�p�[��wqL���/�i��{�y�)�))����X��*�^8��e���c���|��6S>�}�=��]R�o��N�l8=��f�i�� ��V�ؙ2�ݵ��y�KkHE���O�$��V��'g)O�T��Z���zn�t�9�9P6�&l�j��1yd+�\�n�I���p��|�8�>���S��l���凜y�b���}#��,�1G�tẅ́o�4K3)�I2��"p��c>��-!y)����o-�*w��A��Z<��43;� ��P��Ҟ��>�R��{Xn���(�� ����̘s�"P�JUݬ+n~QM��/����9�� d��y,�G�AN��V$����W<R�T�<.���geK��z}'=4j�\N�st`�؞W\�"G8|à
!��8k@���S�x�]��>E�1�Ӛ��gdr������4�Y�V��Ҭb �L�@^���1�ӊ��C1�1]@��I�0�16��K��fR�������T߀��C��o�����8N�}�����=��n%}÷��Ql�;��O�3��<���õ�r�g�rZx�"��5�N
y��z����������i��Bm<Ȑ�x<����� T�������{��y���%�h(��]K�4����A�TX��]r��U��c��* ���KS�9�G�7;t	��\x9���c�;�͋ ���)8\�Jvh����R�cOkQ�q�ܡ�	��Y���Sx�>�м�����YAg��D��[������[�GX؝.�uq�ܽk~�5kp�|��S4�b�K��p���W_D8�Z/�"�d��j�o1;�P���3�4���S(��f8>��NF)�{B�ݍWX��J�4ݦ��{��v��'���������{��fǨ��Fv�l45���G��s��Y2.� �+�����[㏿�2�����S������l�ʮ��Y��zE\�>��"1���2]/�0�2��~�s�L�ȑsL\	쩡̔�k�%>���7~|�)���ċ�^��'D�l[>8�g#�F6�x�Kl�ڰ<����(w^�D���Ir��jcS,?O�m�5���T~7U��؝��a	҄2�c�v�
{,��;55��b����x���^���%1�t$����^�
ٓ'�����&��w��֋�z%���[}��鑜 �b�>�#Ṛ�2h5�"�v�� ��;$�(�2����]��wjfc���(�w���J�7��::��������f����5��phG���n� I��WLb�xS^
c��Q��b��Y&No��i2_v`�{u�ʔ?�'W(��`�X�{n�qjt�oEG�o��a���mڲ��]fY�I����w�����A�I>b�Ŵ >��L���������J�o����
]GJRϮ�Ӟ��Hgc^�4�����0�c��"��<��n*��͛��	{2u�I[��\e�m��l~���
���R�!4|U��׈��P���k4º>RY/��Ó�j�w	��İI��Dxk��]�3��C�?�����@$�_h�6|�ĝ�D�o��]<�.8�sX>rgCgJ <b�s��Sy��~3�9<�]Rw��,6�"�۝����)]���Z2��M�����/��;L@H���Ԭ�,|+�!��󞀾
����	N��;�8&q6C$�'t���+x�KL=�q�/�����&o��s:6��}7?����E{�h�)�+�{�iC�A����|sT�Ob�Uw�X�|ὼ�c����[��p��@>��/Ơ'�~%bI֟D��o��{�.S	~�2�.���JJw8��j�I������zռZ۔O9���S�5�:n$׳?Λ��q�hv��C{e�~� ��/�d^�e���f���o����(;��A^�U�җ�u$G�9>>�GM0�ZĹ���� ,l�cP�Fz�/!�K����8���2�Ζ�Ռ��ũ�?�;{tg�u���> e\�0:v�)�F9*{��0Nݮ-�ow�    ��󽁊*hל�E��c�T����:�w"��}:V;�K�G/���W ��l����ť���u���������_敺��[��fVش%�����[��i���yf��[qy���ᖆ�/���
 ����jn�^T�#ǉ�˘;�z ޵�������|Ƥ�zd�.�Rg�<�RF\G)�#{�1���%[)�Ǟ�9p@��9s�Tڋ��&�v;6�֔�8�x�P&Q�
�3�ſE[tٰ��X9Y�H�$g�]x���a��fe�;)m&^�\��,��܄��{أ�4�0
w�+4R�K<��Y�L	OG�;W�݆�����:��2����}~���*�?�Os�2��
{#�]Ų�uC{Ӥ \Qy��v�2G��u�*��E��7���X��!�?ˏ�<�'�St=򎚾�~sϽ|K�j14��xs�n-�Y99dԭ۔���lIY���5����_{"�<��B�4��c�58�[� ۶�lb*�)LTE��`$�۾ {�;���E��g�-_��m��軹{��ׅ������פg�rgE��X-~�ݔ�7��|&�Ls	(�C��q��i$��^Y{�������z�H�a ��G�w݆��7|�/�Z3X��N��NT���Vk��S�xr���×L�v�?C�]�g��V)�Y�ꎣm����"wh�?`9ҩ����}]�j�s��L5�őO,��e�v��^�*F`�R�B�Z* 5�\3�N��'5�/ry�S[���8��.��&k
~�$��a�'YPo����V��ީ�5�$F��O/z�����/���Њ���4`R
zʆdHF��I��̍G6��)ff
�v�u�
֙C5�Z3h�ݝo�NGg���a�h��,��<ǈ+��k� L3��)=��	h-1�i/��9N9��y��#�����V�[����U���܍L���O�*lGX]�wt�⩈��O�����-Cmy����~�&�]e%��q��8���in3h3}��ux�RIH��9&J��l+�h��#�~8F�����hN�ЭAra6_ađq`���>/��L�@F`l�4WJśw��
��T�5�#��:YZ����mg��]��s�cpbЈ��G#�Ż�Mk�� ���n�[]��y3E��gX��*���
�ǘ�x��4	V�Nc*�m�M�ꏘE�qlBe��L[�� s��Ù8�����T�t���p�~+9Q�ˏWQq���8��~4|�S\+s�������n;�U��1)kVCG����Lcषl1�N��(�阁c*�K�� >�嗍K�ous'���{1_+�ÑE1ۮi��f�b��	�£�G��CV��XXI8zg�	�w�>�G�/�d�`oM�95Ln�eك�����k$a@C`�o���%�	���$�[��r��3��a}��֎ܶ"{N��d����;Mn����XG�~���dƈ6�c��Qd��Q����}+�~ �	>.籡A���<�]�"��Ģ��FE���2	yi��X�'4_@���+���T��_� �y�?��Kz�P�R}Vl�Zc���m�b��؋���dA&́Oק��9[�xĨ���n��K%�{ch�ũ%���>�J� ��ɯb���8,���C�P�5j���ݾO�3����)-������2��S!��8�����HP�\7V�*M>�@��C��/��}/�}�M}O��Ѹ�N�,AW�T\������#�g��\܃���6�sw���L��"���$D@�NY=��-�b-�� �I)�+/�	�ƭ�-3��k�kRV��B��XKi��].����U7�9(\��P|��V|���u��m�0����B�~���nh�h�l9��ٿ#.w2�5�!���RB�2;Pv�t~�F�ؖ�۸�>}c��~΃�-_F2p+�
0{��KA�Qmvj.5�G��e�9���u�J�p���0�����n�V!������t8i�?�.d��������߯��Ԇw�>��b����Ї~(_��O4��q��uHmm�6A�_=�jw����cG��1�����.�[��:m��]�P�fr��ɵQ�s�����1�S:��`|�2�Mb���8zyVu�*&K�+�>yΕyy�pW�Ay����߭���bn=�#>�|�oLF�l��*��Q��=�pK�
*�y%`(��ɾ��!�C����ݲV�H�W�$�*u���[C9�@@���-J\]�f��d�X`ڎ4���H����*Q�q�-�lJ4�Y��~$aj���sL��*8Bf��ȯ�*7�P��_����n���o@w��-�m�5��y����u�rSC);���4K���]|[u���f^�r�=�F��t�$�z��vh�=�D@ �]|釽6 �Ҷ��a���r�-�G��A5��PŖ�z�ugm8�� iWut*ħ�u�l��&�z"�^n���V_�A7F ��˧�(��5�S4��
s�:H�Y	�)Yz3�e��@d��"
�2l՚2���?�W�i	�Oq���Tڼ��hbh7f�>��L+�
��/���������pC�fhg�;��������=R2�	��q +�B�7��c�n 7���"��3�y�<��vX,�O��K����>�|���!y}~,I5{ڷEߑ����t�7�B]���9���9��\d}
�#�ʯ��{�h��!�A_�0	ֱ�~�l��q��c'��	@�����!��L�p0Ɛ+=�� �G�Lƥ�{��d�4f�n�O�i:�[,�`���ہ��	͹hC�����Z
�Tt�X����ܒ^VU��0�Ԉ1Q/~S�'�X���2���Oc�Q4{P�43��C��)��p�����DS�E�~t3�_���E�w)��KvH9�P#dN��|��nQ�g��4��a/��P��È*P_�����{�b9�Q��_ʯ?����׿�����������������?�������o����y~~�������?�����?������?�����������������'�������?�����?��?���������C����7������������_��?���������������_��w����������?���������?����'�y������������+�z8gl{��`��K���'�)&�!��b��_���۪BF��<�^�+|ّC���&M������|�gAc��A!�n�#����=����.���A�[n�����7u!K[����?�_�勔~ξ(Nb�!�h�?�<��_�3���{�7�������?�Ɩ)�܃+y���Kt�?ߋڙ���|��|��kOLF��?���(F�쩦�������a[�Q[G�c�BH?B�Ɗ8V�Z?tݝ�*�F���"<�6>'���s;<��$���������:;����VJ?R�K�*J���!�o��I�bl��>!��a7m�)�%�U����piVh�|l�����@�I�v����V��l���Q�QuCX�%oK1�;k!B ��"h.�ڮ�я��o�]��)�Q����#x��z���z*�[.����х_��b|��!�Y�ʮ�,'P���cD����j�>��oS��С�1�5���B$%G.x�T+�5��i�� �`��r���n.��`��A���,fLd�"���"����9�e��*I�.� |�%�=؎fʚc�`ր޻t���r*C/x�H��u4��i��,MR�U+*~,��֏سV�u��uM[���L����:zgMďŦ�2F]����*O�>?�͜��us�'�ͬ��b8���)"���,?��� [���'?-(�νV�&@�����]6PmYKz����abۆ�u�Zk���X=E`Cx��^c��,�6��s��0��B�o�����>�z�<�[�6���˙3���k <��x��8��˭�R�gpO9ד0�` �mM_���ؚ����C���J�[�zB�FOQ=q"���q�oYiY���'�q8�+�^V5�?�$��Emc����    ������ۏr]�V�-�)K���q��6�%�U[T��e�W��	k�d2'���U&"+���m�M�<��O:���"��G���i�`;��d��j�/�����oi0c�� N}�u�\1���'��a1����|���� ���*�9��"�$[��!7��r�ٞr�_=|�뗽�WF׎��f���-��9j��Is�����L���%9�����F_}�Q��3B>�1xj���	����"�Q�{ʯ[�in��	Ht9�%o�\�w���;���?A"��=
 Xy�^7t�@>�"��U�ج[�4r#\~m��1cQx`�e���
/uW�u��*A������<������z]
%��.S�,;�~s9�WH�������|&k��� Q��G�UWw!������j�|�m�P�W1�1� *�8B5�T���<����v��x9����j���N�β������_\���hk3;�n �p�W�m,��G�f_�9��`Y^�t\V��D��o�c����D�'�����f�{WV�v�|��2� ����V���'�.�ê��O�ׄ&!0��[���=DMj��L6%{T[��k꘎@�	� f��f	Z����pō'��"�� �޶xI��&B�Y� ���S�$�h+�Ak<A�H�=�=��k��o��\&�2h���fKF�\�q[iS����	�H5W��#̊��=BgG.Ǝ�����W��	���Y3V�L>BO �sifb��5�dMl��+lzc�[Lx� ��(mV0|C�3,���M���]wq�(��H���R$Ԩ=~��BZ��#���F>��ch^�f��������]7"��d[f�A= 9~JoAf�ԉX���J��],`5����q=��k�;T��T����jHS����[�]�3-��p�&SQ��Q������(��oVٛ�s��|�^Q�S�z�R��ЕB��Ü0I�����戦�(��'�����l�����]G���.��B9�Bۑ �6��hY7`���毠Q�gNm%~������0��u�n:� �@*���"����ac� �;3�ɺb�._p d�P�mJ=�i<�#,I��KL>�`���en�����0>��1�q\�}�[U�dm�PqL���LW�;Ѕ��k�ϗa ���w�c�Ȓ}��RĥI?v�+�?*-��k�$��R���7?9���HUԌƹ�'��{q�
��Qۧ5I�Y:�11Ĭ�c�9��W��{/�I{'��KX������.�����
RPC_�f���k?x��ZS����=�܎e絿�F�SL��t$�a$���(s�1��I�	�~/���W�'�C����L�t8k��lU��v8L�/�`�@q7%�:0YI0��8�����zc<��D��8�u�ᙺ7��+]�!~��n��<Ot�Uy�e�ucp�p�h7�|�����k���ƙj�.���3�6�T~���I�����9�oU.���kA/"}�jtb���7y����c�ƹ���F-+m��2��(��lu�l:�۽~/�E�6�W�j�~���_t�#M��p׊�U4C����5�WJN]z�	���]?�֤8�0/5����q�	�"3t
p�dc�����e�%�J훆���[4����'{��i�%^���GP��B+��\�Wt=h0��)!1�C�>�$)P�h�Ŝ.Uc��Π@�D:��b�r�ѳ'��	�QM59D"x��S,S����Cm�#�&W��4�����o�����ʌB��Qn��,%����R��6�7���)������c0C��۞?�m�Jۋ��Զ�?�����W�k�5�~����f���d�aB}�Ջ�h8ۧ��a�^�F�8��:�+�BP�׊I��(Y���;6lhIY4q1�+��(�B���~�8�jq��������X�Xh'�~�uvE��H Ӧ�5�ԺeCMv�"��ce��61!�q镹mQ�ѧ�퍳5���+���m8�V����ͺu	ƥ0���Jl��>�u����GR��,}�c!����;���U5���@
)��]���>�'�t�MCX�J��I�\�֋dqt���	4fK�}���B�
�ɰ�˪d\T3.*7�,�P�|�nH��1.M6ضne�^�=ԦF�M�.�]R[�����=�+2|c��p8ϐi�-[���y��(rK�p`�
t�� �*?/�`�<���$�m�Q����2/3x��xh���Huk��v+�1�0��L��Q{	e>�E�<��|��x��
v�׾�v�\��7�0�bL�bM3w�N~%��ʐW�8l#���!%��>Mc���^/�F�Lz-�-oben�;��ci_F�H�5cE�ݥ:5�99�q�zV��:���N�*]�*�q~0���2�yu����µ�4��	�
sQ$����iL���q֗ 8cʖ,��H��wl_m�Hz?��Zأ�dn��S�~��YH�z��8؂��J�|2/�ʩ)8�h[#�^Y���k
=kf�qjcq���o�N�#��dhQ0�D]�)7��a\ NI\1���_V�Z21���NE����=����-�C{����hЬ]D[�o�K�a���e��ן�Q����rrlC[:oP9��5a#�U��w�E��j1��71AZ�G�*MkT���R[\%�Q��ĴW�bj���xR�V���t> n�s��q�孏U;��V���|wU����]���3�r�%oHGV+	�h(H�l���r�����d A�䧛qm����G�B�	?�(���| ������K]y�ǁ���fLb֖	SNw���ڡ��ȼ�'Aw<����au ��#	LZ{�v H1�+-�%/�>g㶿Dg�����m�㴘I�K#w��r�ϒd�Al
�]���6�U�,�W0Y^��H�����NhKǎgǱn�O�	^��f��9w���w���A��`�-?�bo΂yE��G��e��A����>��ۯBs,���ng�����,]���2����Yˁ"HK��q��ge�j��H�C�d��舗?dkA�[	+f���.ˠh���1�+����C����~�@��F�����[zH�����o6|VB�����2ٴ�m尢�2>��p��h�o�+[3��q�����i�.�f/;,59����âfǡ��a&�1�Y?�|� ?����}��#Z�,��G�YJ<ǖ�,:֩G�^�x�M��ö�X>���NniNuMtFg%EX��W)�q�
��'�Yf�j�ꄌ�����r8)��\3��#�"�5_�(���ͨK}��um������b=T\�ȏ݅�������%f�����-��]�����NNk߱����-G��w�=�ǡX J�r��mYư�M�k-Z�	oY��@-,��?QX� .iا��GJt���m�W�d�W��f�lO2���{�;��|Ea�o�rx�$��G�N�jW�0���f���u�q�5�r��gk�#�+*�}�i�73��m9�a��6EI��m}ŵ8�&v��5:�A5Ku��3E�M	;r�� �)Q3!ė��u ����'���0T��ⵚ[-�X�N�v��&�Q�g,~����|+ip�U��������0��vF�G8��J��xtE�E��,���̮<߂����9X��𽶓�;k�|q�Ѷ�Q �QKVh� ��`�ھ)�-A8b�-KGKB<t����Kܚ	�Xp`��9s�L�_yw� ��h�__F֖�eW𩮨���2k��Y�g?�}[2��@�za��P�S��M���H=�ۄ?!�`&Y�>�f�����8wȖq��N��0l̒Fx�⢁|���f	^¢=�ٸ�f���r��Ҟ��%���b�^ϰ����iU �Uy䜫Л��[�7���e���9P��]�`�ES���չ�sp��Yc�x�.��J�sє�&K�2��*�v���|�c���V��\$U���,y�����[���oq�B3@A9�=��s���G%�ۺ�Bf]?��'BHMk1r���:h����H&�\��N]?r/|'����\���qN2���3t�� I�k������W�E�    �����dV&�gV���/�y	�g�H�֗ꤡF�FeI_(�(�y��`���qˠY&�姹=\���lN�1[߹v(9�dKU���P��)!�o���5�gi�(4�,����˰����R��a��$gl��^�T>�9
�Æ&{�nn
�&�
E�R�,��riS~ņr���O��m��.l꺲LGo_���Y�LZ�y���R�m���ڇ��s5%|60ιB�9	ؒ��V��|��}�P���[/�OE�Qa`�,�� �!��kt�aMxo��ag7�S�Ma��tJ�Hސ�6f��Ddha�JF]V,'�o�V�/T��f��tp�yL��det�,�l���SM���bXA�&����m�)۝�[
��rw��:�.�FIJ�8�Gq���s�>}&���\%wq4�HV�XIgb�[��luz�rNk�G�{zH�o��Պ�� ��LˊV-��v�Ƈ� �פ��q�b /�#R����f`6\W�Oa.�"�f�r5��-=����q~�K���Uk��a��U]֤��tH;+e�"րa<X����f���8���S�	��G�S�GH�$�U�Ьn�v���m߶n�"�ǍϏ�l*ʥ�]x2������'R8գ�E�F��,Ͼ�2��
�(��fu�Ē��� �xe�C%-y9ȒI����J��9N�I���"죁$f ���\jl����XSz�-A��_�Wh~ˉ�K�1�+�%��su����2�� |�'jfp.s��ۡ���"��8��}���RDT�E@+!f�/sy4s:՗Kgk��������<Tw(�g�$^61�8�Sn�2�xn.����,�ZL��M�����\��+��{�[{\���Eˣ��Y��Uk����f�x�OT�6��Yy�W� ��O�3<tsp����lNZ��}��l2w���p�%�@U��m��@�5�jY�1�s��/im��B�:�G	X�n���v~ (�.�R.�l����!��zzS::H!��z|x��0�DeuA�a�������l$�k��-6^�A5̊�!�p���_S�G��[���z��o�-�d�7��� 7�[��;��v�=:+�M��
�	ޖ���bAR�Œk�2��KJ(��7.��%c�ݩ�[@����41��|K�~?wȺ�f��\�w��@li{l��uJ���Օ`�E�_Y�wW�X{<\xݪ�u�Z5��p�cgp�]?�	�pd��|�.Nxe�\ʩR�ٖ!+�Cr蠸��LH��d}��F]��V�>�st����|�H�W�4��,
~���Ƣ�G)M7u?�}2�H#F�"�hS�OpY��I����k��9�����zmΗ��T�*�I�z��n�6��P�h���?��t2 $�gp6�����-�g��Ļ`�B�����}�-���[7�;{qѺ]���T�ldc��b�y뻖^���еo[���)$E�o�&]Y���C{�ۧ�D�oH&�߰rSW�I\�rE�:{��þ��;���Z=K���`���~��ҦQ-䬚��h"�ՊcY:��u�܂�)�Y��7�/d.(�-cs]�c»�ƙ|}K�����w^�ɵ
 ��T� 茼H{��o	#$0��ZN���y�br���-��M�H�<!r��?9!+q��!��e��_��t�l	�c��h��oN�)2��b��d%��$;"�Gqax��4��Ł�K��\fk�OL��������zÕ;��	�9Da7�����oj��Ď��},�����tGj������0u�-S8p�[��̰�,���&Vv3�[$�)D����l�L�G�V^"]B[���ۡx��W�!%�*=�����s��]���&�4��H����2N�p\����,�tī����gT{d[R:�̉�ˮF<������r}��8���K�5L˟�x��7����u��4�Z	Tx��T&�[o�:Ūh�e���#�|�L&[9M�y�3�b���>7��0�f����h��+)xu���=.}���y�4�Im�*����o$|4?�~R˝�]w�x��]+�8�g ��q4GϜ#1�r��1g$����HA]Ϙ�Ɏt2҇�0W����|=��͸��3����g����|\�gj�������.���&U2�@�;U�|�yx-��L�4��`_��xK 8�vE��D���[������)��Y��ՠls���d����V*"~����G�uY.�B��'��x�$�غ�[Q*��Ȥ "	��t��K3��kH�X5�z�\TO�#Q?8�䒷��8��ߦ���6/��!9~�[1ˤ)	�@u`��}�-�Bщ�ߔ͞�'[�#Dŵ �2�A��]#�M�|�(�f�)hM��Q|t���Q<���;S�}���:xn�z�kU��}K����.Im{�8�ᠠz*�m�gN�����؟8#%o���L��ȆdqaL]�鱦E��+�Ceܴg�X��OZ�t?hӹ�#�4����I�8wqBE����zߤ�9�lTI�VS�ð��\A.YҮ$k�,ۜ��*(�â��ג>�!̞LIF�,}��Cދ���b��ĝs�I�Z�����% �.���D��) ��c���ּurGa�P��*o�8�����oUq�+�H1x��Yڊ3e['�p��_�)�,=4�t'x�Me���5�/��[&g��Y-�d��^�"L����������y�i����͸��X-3#�~
���$�Ҟe}J-<9���«Oه�8�������� �6����S�t,/)��A-�ʇA&G>ӵ�܉�3�E����oA�pnS��&��=�v&� M3�Cw�s����Gs��=��c��F�bU=)��^���;%�NI���,7|�v������~�s����dV�h��:+� �Ɉ[�	b��i�i��� u����Ў2��ׁ�!�����U�ko=!:�y��4�����C�;6��H�稄Fr����#2s$�&kU�0"yʍ!�*�hpm|X����-����8jغ1�����-V�ڡ�l��w�°�X�44� �f�"�R�*`�L�T�-�ê�[[�R��Tpna�0)�^s��J�6�&]��^����n��_Oʫ��X҅*.���;0�c��B��l����R�E<aM��X�S��0m[��0t���;����<���[��'A�\lU���K�IN)��L��
4}��q�5��==�l �v\Y1��'�'�Y�����5�fc��q��{�1�d�ե\<M�ߦ�*p٬%Y"R>{��!6̧�ctk��y�P�^D��d!*>7\v�+�=B�}����tmf��%��mI���������m�B_�a�Z� ��ݟ���lZm�-�L��"�9~#p�C�{n^�*�^�~f�pk�V[����1N�$%9�.?�5_��@:e
�"�j�nӕ6y&;_���VG*{;V�i[�G�IN�r�j���:�lPm�i�N�8������0�%-�$}t��Z����Z�m��֝hF_�eA��(�K�9��a0Y�I�R��[��A�]�M��8��wA9��@�o�|��d���Ňܺ�L�ʴ�N����C^T`����Ĳ3���1UeP�q$��!T���M5qvS�������8���Ļ���~D����_���Jr	�2������*.���Zi���򈌼n���Ŵ��9����D�A�Ko���1�g����)�1�C�"�&�\M%��5����p�qը4�ɐ�i �ؤ����}����i<"�4ͯ�A��~V��~�ۣ�r�R�W��lF��O�Ȫ�A�%��8@u-�B�M1	�r.�w�GeI�,at��#�x��� �<�l=G�t���$c�\(��(�r(�r)���}�S�Nq�g���r6q��3��4�?��*��6�}j�ذ'I���q�f\��GF�;���/8|��.=M��Hg4��s&��^��a~W�Zv�f�0s�U�Sc�A#ǂ�}�1��u,
���	�r���'    �rU̇[���3�o$���t�DPz����ڥ�y�'Wo��wB�W�$5D��)�gok�#��y*�<�&Or頳�-����a�|���d	����̧㳥+��uN�6�ƫ�TXս�M ��S]P�ήr#��ڷn$�
��
c=�\�e���+�:�XbN/wD ��t�T��t�����4 ��k�Ȏ�<���ٴ��y$n^�r���V�!���&�2���:��oì$eo��R���dp�=9C�k�e����H$||L�̙'�[y]÷���4�J8��a�3��1�2KàU���zscZ�ދ�������/�{���h��`z]���N�3v�+x6��3Έ+��"ga
�t?��!�����..�)b�~΄�e��ĝ���
uCtF����3H@D�8t,��ܓ�h@z؏'`�(��_��G�At�x˧�L�O���{d	 �Q��za,Q/��χ��@ p�s�+�ȼ/N������T%V��%�&�5|=�Zg��*����o�"���G����2u�N�A��&�rL�b7\��Ț����\Ǝcm�:�~���@�;)�25�
��"#�����~�C皀eݨ�b���6�'b5�5EPS���a]>���qv�N,H6�}Bl⳦~ZL����(��ُ-:5��a��$	κK��6������F��
�S��0y��VU�S��S|���맾�.��f����%PMFu��XG��_�o�c(<���+�)�k��SU7�lƌ������]���2�?����g��]9[}�Ҽ��3q��/-�ǁ��8�����Nj+��Ъ&�G^{�;��3����BZqk �;���3���M(+^tw�S�F�(u��4�&�7}�N\�{�-�.f�����3bA̖�f�b�>u��ٲN�M1 ` �yTY��˼�0uLL�^?��GVd���
���U5�)l����\���i�b'�i����=��p�%5Ol�1R�����'��0H"��dO�WEm����a&��|�>{[V���|L�H>�)SZ�R��-�����)�IJ���o��k��n������kO+՘�W����ȡ@[��]����V��m�J�|���)V�(����YfL�Hq@XO�mB�E���8������\���p����%���Cz�eF���`�������G�yJ�eO����Yeq�+y��Y>�E����[v�!��)�i�	3t*r7L)��!�ˏfWp��n
h3s������/λ�����mtI:bc�$�H��2�~�L{��Y��p
C];~�D}�~��Sk����\�P��2dٱ��R�ޔ3e{������Z�ٺ�{/w���]\��aZ�\�ؕd��W?�:d��z�p�)�)������H4�v�t���n��xdG�:G�76���N_2B�v�M�*sd[����lf�լ?bTD�����6�U���8h_4�g���������ZژN��L�aa�:����3�z�U2y��|���As�p�|���%�؏���Q 2�}��_�f���e;$5ߨQp2���ڕ�r��Ų�����4�W�9X��T�,FI
>�k�6su�Cp�ٝg�X�1�X\O����X��C��;{�g<}^=��Q�ػ\=8�;��HL�6+�l�-����B7嗸�Ҳ��0<�@UT �D�؄���&\k[e�?9���A���g]�?�1�ޯ>���v�߫Z;����X�=�W�3`����~Cl��GR�R�0n�[Y�L/�o2��ws�(��<-f��q+"�A�_�����U2���+?�����I�1was��
��Ĭ��v;����0�e<�O�$ \Җ�"7fB�i���U!R�h|�K�{�:E�Z��u BN�0�sO�ܤW��1R��-$�Z���i�Fz��%���F���j�ѷ����u�/����e^WX3~��N/���k|�,������s�s!5ݰ0��xG�X�MsJ����S��=M)��]�g����a73���5��K��E����{GF��)!�
��C�+[���c�}�h�i���O���t̚�%gU�B���BH�-�Lۡ��%�f��Yy-����6!CDZZծj���E��l�5n�r���GR��d(yh!if$I��s��I�������"v�0
}��P�6�΂�P��Z�3��rK�R�
q��������v���6b�' �qֲ��o=s7� ���OW�2-BS�Gi����ͯi�f<c��-pg��GB���1���zޏ81%���w�J��O>�Z��Ӥ�Q(����ha���<\��(h��7tz�8q��-���/�/rw��M^�]��oȦM!�[��57��#YJR�,9X��A�l`,ԐL	y�TB#�tPs8h��n}�S͠d�|Q��?��d3ǘGQ��2�U��.t�Vg����Yf1kzd�P|���6 ��nq��Y���?��т��j+�B#j�:�v��8���*r��;���n5�Ф���8�q$��)R���&���ҏǔ�>GWf�oڐ9w�7K��^�R���Q�)������5a@:���r�f^S�j�)�C	rG����iC��NCT�m�$P�����K倩�]���4~6������LԑQ��W���1�o	��{�Gʞz�_�l�&Zt�we���[�%H�V{R�۪�1�P�����Y��G��xd��0��gm7���1U}u��Ԙ�4�]]�
VQ˾����&���ug�����z�I�Dv�R���C�DF״�D���]�\�f �hi${�E3Gq�O� �K;Q�U_As�&v?4�@�D( 5�Mi"j�(�M��8���g�u=�z�b�>�.��8>�M�G���->	�js�����"凶�Kqωs��1�\�נ��a�f����|
Ը>؏c��̛�H��>2��K0�̚��fd=č�E_��zʧn����4�l%g�O`9�g���� ���6*w�$�P�i3ܗ����J4�A���#d|C*�.��t�ϭRp����;�I�+�&M슍h�Q2E�����zX��粲D�ϟ}_�u5;�T^��L��#C+vBӁ<g�t�?�Z%hU������Y%�g�M�a��3��]��g���hu�6��]��?�co�������UG�ݱ�9zQ
G_ĕ��d�|��jփ7����(Y�3VI��!E7�bJ��~glG�#1G�a��J�����s#�U�xk��(�u5����N[��"�GqЖJ߻�3���`=.R��X�=�V�]@5F]F �@2�~��
��<͙��0,fx$Q����:���QӾ!)�	40��[B3:#v���w���T�08#@�IY+������c�>1��"Ť�-�r�@c���ǎ;s��"{�a��آ���dw��cז&�Sg�a���3TҐ���jO~�����PA��рIy[���]�|��3�݆Y�Ȝ$Y5_vL�*پF$UN+�+{�Ң9��0��ǣ�� �D���2��Nt�tm�T�1=�{r^�^�����(B��Z�؂����������P�?Y�q��։k2�~��)����#�����q�['vdX�p��Ag�t��9�wǘ�բ�&����I�:)B\��G�Z΂�|��u��T��pʑ3fj��B�-F������,��fH�K��T��I%]g?h:���j���D�tr�}^W�M��_���R(8ٲQ� ���UO��_3ޒ��enF�E�x�����M��s�G;!��"w�^F7��n��8�?ʿϒ�T^i2�)7��<��Q^9eը}��v+y�G���R��Ƙ�|��2m�����S`��������ssI�\4�	Voh����X^�� ��g��#K�_]&�[���i�x�Ŗ�vk��ъ+.M%���eGV)�䂊�i[lB<���ie��@�[\�st0�l��E�m�{��attJ����&^O�sF�HPd`e�h5v�#�ul
t�˚��J:������c�QqrW���8:��    <�4�s��v���H���q�9�y��.��Ay�~�$��X4�@SGa��ťl��G���� Y];�汿Ҍ�&�n��v���[D�Y�u���a������E��'��Ʀ�p�s[���oLߊ@���W��kJ�Z51����-H�ԁ��?6i|��+h.%�ܵ#o{�Δ�{!eTlP�u82�@oS�f%�=���(�g�P�l���j���3���m�CS��#��T��E?��,�� �aIdp�4CQ���	��p����jd^���9_ˎ�����<h:�tԒ���"��a�A�K,��-�w<�"[*#���!?ꅣ��M�yʇ�B$��xx����Nfa��3}�����j�0����J�x�k��>Lw1�82V'l�ӥ���&\�>�1g8�4�r�{D��5uu��tSp���K����n�$W5��E��al����D�t�?H@�
s�8SN��1k��|&H�l�A5����C�~8�J�eק=ҭ,�^��UW�˧5���P��!�ax��h��,h��\�Օ$-r���y�O.���4f*l��P������O��H`Xb2g?�m���M4����6�7^𛯤#��k0�;�P֟��a�ug3������N����%4`�ma�c=�U5��-#/`ɦy�)ƭ�"�k�7�܈ �q<��p������V��� �D5��G�j-�cq:��5n���np�������L��]��+ϟ��|R�Tt���)�W�%'h0a+�
���A*��h7������gl�	m��qD=M �_;�[�@T��(l}�7�����V�ӷ0�b��c�XW"	2#�l�[� �k�E�OK�X-�D�f�Țz�̾�7���٫D��L12}>U3��hʹ,�ː'O�����f�����O;��`�/KVO��c$-�u1\��=�f�^�ioU��H,��Q�ƔH<�2�O�@���U�4`��8	K��qM������M�1�{DFx��d��& p��*Vq���D��z���eM~qV� ���d��9�`����@�&��T!�*�G.t�N���)|��{�;M�UR��P�e���s2��M'���|o;2m�G�o�$J�f��g8�۲}��Ow)"���&�#�2q�zz����Z��M�OD�ăI���wG0Bh���gOH�_.���YCZ�=�	��������=�(6��[�=͇�<��m���A"�ud�&pOm�7&���±|ým ��t ��N��rT�N��AO��
�b�;�`K�[ۥ�(�����-M2ΐ[RɆ�͔�nJ)QR7�!	]�/�_u�Z�b�H�o���p
����C�,�8�Y��>���e[����n-�F9ɰe��#��G�p��-�;.��l崻c\��,4������\�z7��ZOL;��-!(�7�����x�����w'�d��,��uc�W�Y�+Sa�1��Ø�Ѿ?8�!�V��nQp�vAFd��U�s�N8�<�R��f�#E��x�]�N�_�܁��#@߬@��e�e5�$k�렞�����B���v}�En���M�z!�N,A7G!�r����aP|�m��Xߪs̲%7K�ѳ��f�0��p��jb���u��>VI���X-������Ͼp��f{��.�15D�¼����,_A�R��8�c�UBh�Oċ9�����-���_�� ��;$M.<�*�C��qL%�2Z_�aB�'6����2iɲz��lFSI�1>�.!���R02�݌��	1eUxSPvw�������iPfU��g�,��&u4�k���f@�"���J~'r��r�IC|;MɌ)S�����6�ԕCu�H=kS>j��_RC��0kYCqf"yX;����Hs'r��3��M79���T�3���G��k�by�LW#�Py����_�ĥ]��ݽ����虃=�&G]Pjm��#kS/����d &�[Ӹǲ�S.����������C_�����5�|��	�^�`��b��N�%S��Hъ�e2Ǭ����T��	إԍ���{��e&��"P�����eѰM����TJz#j��}���b��4i���.Y�K���� S����i���i��?���ݍ���	�t�p�A
���LE�S�qg�e����_�#�6��#�O�), �R�&����_Y%�����؆���,�+k����a����w�C�	/�ʩ�2�Z1�ݰ}`K�YhFM���=��ͣG�z��F�r7^:nt�)e� �;�P��x��!�Iݤ"Sx\�=7� �-IxW�lw�H��c��E�cJ4B(��Me-Z1�q$�ᓽ�n�e?ج['���^��ދq`�����5"4�d�|��t�v1�	��
�G��������`��$r}t�(Ȭ�+���Jk>��%g�4�� ��_k�	�4�	�OT@�M[��X�� N���)��ܯ��ULQ����v�R#��Ԥ*ՃYl����R(�x:�BCKDڸ@�Ū���PÂ�/q��Vhe�R��Q!��*�W�� 鉔=P�ǳ��	�@�i�mh��e�r�� ~	}}]l�Ti��Y��ٞ��Д�?���V�{�t��l�SK���~�t��#�B��8/ٌ}��]i����[��3OU�0Q�p�oQ����=/[��B�4���/��ul���$^���~��Oٶf�Ҽ�	�������7w��f���w��˘dj�����5i7�ԟ�?F����@(Ю���ޥf�n���H���/��<�v�~��	%��1��Q�	~j�_����]�W�M,C���3�u;���Xe�U�z� \/]�\�Jw ��G9[BwIۧ��5����ǤN�5F�rS78>�_�[&5��p]@�~D~�#����D-���$M0��/�
H�5�k��7G��ܬuQ��u]Ub��3y���-���Q�4�/=y��n�P�fԬ~l+9���������P<�풵���Fw�H�m>]f�:�@yٛ�)��ΐ_!^�Z`Li&ҝ�E ї�w-��o�#�-v�P�)82A�ǵt�Es: �mt44e 44��O��L��6�����8�%��ބ;#�(& ��G�]Y�]�Q9�$>9lV��r15Ũi8�#8��}������ׅ�X�G5�U�Z����<��Rw�rZm)W:��iO��c�@@��̢qD��Q��07����	��|�;�t�.�L�b,�%�-���kx��r�8 ��(;l����x��nH4B��n�k�3#ͼ��'�SY|'��!@3Mżq��pgi�m+ey2��9%�w�^��j-8q�������Յk�ta됏%�n,<"��tV�����Izi\���
]�=��b�tU��]��L�л�rM��<�}^y��V��t2�u�أ��N�H�^Gjw�SZ���,���{U�Vsp2���Y7�%i��e-��Y*��1�Jr�:�t�� (S�����Hk�gq�+x<��Ĕ���H�*4i43.ۢ�!uSVPk܄#5���38��_ѻ���J����茬ܫR��Y�Io�|�Sx,4lt0����W�Zn�e��?$*"{ 9q��&+�p@���_����X�f׺����v��h�o�|�K�[�CT���`I�k�A௞x[��o�2��6��îLͫ?�ї�gw|�A�g��D�i���w�-ԛ���j1QM�1��T�.�NZc�4&���N_�GgK7��g :�O�(Ѭ�*u���tX��`�d��8B�nI�>�����;z�Q֣�%#|d=��O����u���fq��j���|VJe��(�th��fh9y�╯�c.լ��Z� ��y��B&�~T�I�qͻ��n��������a���<�������bf�E��c��� ���;!�����VVofc�	�f��U�Ub9,8a�Ak�����jReM1X�:)~qZo�߶*r�@U��%-��T�ߥh�ʭ��������u��^1a�G$>�w�6t��(��[P�>(^��4*��'�%;�;wkͶʳ��H-|���ۺ�I�Ӆ]ۧ�SsO��X�f`���    ��%�;���(��!�rL:��"��ȧ5���8�0@��8���<��e��S�u@�MO�{��\�S|S��ĥ��&�jՅw�7�	�T��d��61}��r`#�߂jnV��:E�V�jق�*B���`����cbr�,�Bk͡L������ڲT�FGv��ce��H�Sn�WCĶl"i�Sn|W����fZ�y]I�8� .�����NOY2XC�7��ml�ʖ����������6?������3ukdRhK���G���dڱ�"����1z��~�5My��F����G��t�jȍ�?���Ʉ�w��+�M��ؖ�MpK&�J �����z���I`�#��6B�dﰉ)��������l�7�ڭ�q�ʣ�sbn`�?`Jv���y��nN�����ǚ���YEMq޽��J$.���b��ݻ�UX�'>z��K��'d�tI�^��B8��8��f��;���������q����-��1�i��s���g��#�����m�]�-k�ʭS߉2��Å&�ݞ��{v��MqN��@ө5U��ФZݖ��H���K15�%;���J5t;�� ՙu��U��<<�F4v[�G��\q�d���H�;�����I]�e�a��r"�(�x������f�&��	��7j�8�-%<���J*�|�}���-4u}X�a�jTQ���Ŝo�j��HM�S��!8!�,�ܫ�tRF������A��2�~���6g)��NuS��F#*�5P��xH�Yn�M�N��ё����� �eK�-4���]#�my�cC�w(�'X ?mV����c�g���p������yu/ɘr��b��1OG�+g�u�%ꂥ�ܜf�e�Ul���֎���9^��f�2�nk�=������PE׎��S���b�0��T�����|�O(��#3p���+J0�eW5�q�v.w�b�%�y������u�N�"ȄY(M�����I�2��~��ٶ �;�8��?��-���U�V��3̜�>�����~ӃRٳܗ�����DB����>Y�<��
��<S�Ypf��(h%A$!�r�-%�Y&��(�����
�(L�fKJ��"R��GF��&�i��g�q��>���q���ns���)�-���a��a�+��=Pq�wv�)7��浪j�m�®k�6E�\;�����8�	W�]@�<��5b���f_
���U��m�*��|�Zn����nk�� ���yY�S�0C�ϯ��&�_��-�(�O�D�214]��'�eR�E<"^Q��qT�+���I�ʦKc�3��	��s,�������E,�Tj�s�\�=�I����Tm�r�d=p5� ���%Ķ�q��b��-���bX�|��6c��m}�'oyd��#2���P;WO,
X�g�jВAyp'�FU�dZ���(�ӈ�^=AK���z]�s�&�E��e��A��HkR����v2;� //��rEYK��>��];�E�����ٶ��"��w�\�#���.J�e�c'�lK��Ν���~~�,`!_��0���������53�����c�˵{\j7T�����B+'��CB*��B'P��S�=]���H����'_���`�N4����C-!'r�B�����JȩSa����D>��s�Í��E�A�ݭy�~���� �=fŎ�ԖԐ'\&���ƅ����զS�v،�@��X��]'���4�̀:�:7��M;��\2S�YN�F�6{F�'�g�R:�x�4�ȑ��$��+p,�{a�u7iz\���@_����-1;y�e�B�l�#���}���2CL�`�=�a5�F~WH&ӛ��!����|�m]w���o�d˂�j:.+L�
ꐄ��m�Cߝ�d���Zk�����p>) ��.�|��R_��4U����?=�� ������A�u�?��8�5�(�4��鷾����*���:i6�U��/Uk��|d+ܖ��▸Ɓ���z��i5�	Vۉn�`C��zqGRŮ��"���k٭C
�90�,_��]C�f+�a��?���U܋��@-��q	eb�"��%�on��I̈�ʔi^�.�ڼ�h���g�|���`�f����#���0�R�nq�,z��q0:������J����9��K>�T@Jwd0z�$�����U>U7���4��G�DSx? @�ٜ
	ۿ���O%c�����zj2=R�7ٞ��;�Ŋ�/���(E��7�����<���?���:b��O����V��MB��1.k�J.��������/�w�W�1jiU&��2�ci��7 �Qf������v�,ٌx��j�K�?�/f�lmw\��w�i�(�DV�U�i��.���r�ĞǭGm^�

��nyu����O�����_�5�W�|�%���e���!JBz��ŅL&r��?���N���K��P�5�\�����/ȏ����Du<��v��,�~��7�@��T�[RE���(��G"I�<�t0̖�����Aj��~@<	c�i���[ӗHY�N��e:�w�lY(�.ȻvQu����v�w@��=b�䲃� ���yH\�0*���Oj�0��w�O�ai<9��H©�\�V�@�z�D��%G��]Rc����]RvG�s����+�zIf�Z� G���
��p�&�p|�*&F��E�C�6p
萂6Tյ��[��n��`�UF�o�kn�'H[g�g�/�晷Z2I���j��_�_t��r�����(�́e��䉱IPt"�W	�B�!���������*��nG21u�Ӟ�(|nq]�g�$L[��w.c����Q&4�/%�h@XzTSrD ��|$Y/�����U ��[���2zq�e��!���>���A�EOW�R�Mf�Յ�^����)p���C�&}UD:n?&�* d[�cv���0��Q+e,��XsВJ���W�:��F�����WO��Xjކ�!m[�ٮ�p��Mm/�M�L 9��9WӾ�!�*2ӏ��L�Z��Vih�V���0�@r���ʎ�J��j�]0΢��
�0��͝��0Lp�Hl| u�Q�x�Ý5ܼ��(�� �˰�9��6G;䘝b ��VY��(�u@D���wTd�v�h���24�����{����3Ը=��
=\C��A���G߾����U#+�q~[���/:"G�.c�n��&�5��8�WxhĲ�4�ƪO��A=��*���x��;�H��(u�Ԟe0-_����y-�&��,�I)W	=2�5#�PK"��ٲ%���8x7�e��X���.��f�%���W�b�Z����OD�F�Oe;�8�4��R�7M9��L=#�"��ҩ�+��M�Y��T�����y��4��=0x�V��D=l2 �X�ɤ+&��$�ռwڑ�+F�S,s/����H�THV�e �����jM�I�z|��\��Ӫ8)�эi�'���ʧ�����-Y&5���;J1uAbM�E-�����̦�P<���2S]�Y��:��w#:sy4c�x7뗙�
��r��A�{�hYE&����g:�F�k�C�x ��^f$�?�w:J�⼅�2�D2h��F������}���*fL3�I�Ua�FMV1����6���~����ٮ�����2�B�b���d��0���8ܲ�7z/ޒ�Z�_�(��8]N��yU����Ӯ�rw	߆�p�k�T���H>�A&v���9UVL�B�{eq%��y�W�d��2��l|anV��'U��H3E��tf,�l2we�)�u�Z��U�5'+^Z�
FEr[߾*����2N�2��p�ÕS�hP�k봛k��T⣜!�ҥm卶���L'wrv����s/���K�QZ�0��)Y]��H�sF��=7PV��Q��R��U=llVsȀ$/�C7�E�6Ow �R<��Ol�S�-!M�ym�X���(�n��D�"Po���wWt�u�����9N�6�)2�
����&��g��c���S25;��o�e�	�ɇ�ꛎ�    #���}�vD�[^(��?�y01�y�eA���񑑫�l�0�mo��@�*W50?��b�{��Ӱ��IA���6FX�;��u�'�v���T�����)�U��>l���6��4F��oz���k�R!�q(p��3	�i�"	/��;��3S���)w��<�I�zk��'W�CZ�}��!�&ޟ�&d5-挞E����(zL,(qd�B��9]��w�k��1^a�_��x�T���*��(�s�1 �󆺂�l�v�WB���e8��$5eW�Pʧ�����	9;��l��-���xʓ�N�o�FB��zU�) '~\�C���A/��%4��U�*V���7y�a�Q��3�Av��Mv��,B�fg����T�hέT��+VLj�7���~1{QH�&����^_�����_���2V�`o�r��5E�7 �Ԅ9< �)��eʠ\�^:�'��A[���v�bjz�:��0눔��e�U]y�t���eH+tڏ���a�Ė�ĞM�-��B��{7%�,��~�H�P�׌M��\�[�{[��L�6B�����
���C!#$�kHD�O�C\9M ����b\:F��W?H��5'�؛�D�l;��Ew"�o��Yk��s1Y �U\*G�	/�T��a��Y=��ƥ�Q�Hk�O�hS'������G_	$V�\]r���b�GN�i�_NsǨZ��YzE(_ s���+ ��7˒�j�'Wh��;�I�N�1�cYA9:�OZy��e�<��nD,�6ȟ�}�H����3#o��;r�1GKz��3oO�0��披�@xy��B/Y�&� *�ޖ#�)�/\;�K�b@�~��6ZAv���L�[3\����i�SJ��;C�i8�o�iu�m��hY��������@�K�'m��0�`��_2��0?�o�L��o�'��D��/:������}�%���(%�M�NT�7��  4]��xO�{�T>����[~Ff^yٚ�Xʔ���S_�F�lFC_�m�i
�aV�\�S?�n�-P��5�����j{��1�7�'^޲��Y�6M�f�~��8/�H_�D5�x��Ҏ�0]�Ⱥ�bN�σd���w{,��z�T3�G��;}�c�M�R����ҩzLx�S�ӺO��렸*���C`e��i���B�*�|�?�6����*�LCgXw{�Z]G��s����.$��rr�R�#���"��T�{�V'fʜ@r����q�*v��ޜ�Rx�����"��Y�Ay�7U�`cҦ�jOp��3�|f9��	��"����ꚋ'~��@�=�#��Q �N̰�y�%�x%��h�&�Ta�<�pY6���1���Ț>�1�'�t\d������f%�8�=�D<a�3��V�>�q:��L4jE����0u�Z5W�$���|y�z-�'�|�<��\�l"2��N�qsm}��g�2�6l*`S�C���:F%ե�5k�>��/ߞ�w0!k��ջ_u��� �L�:�d4Q�g��щ���A��,�+���,-��f�)�LDVȢC��yXD(q�Ä�g��I�W�͔j/F���^�Y����0Ŧ�֔�sL`Uߌr4��Amf}�ԘF���,��:��S����^�5��~-Ew)�W�M�+5�\�I����;��������r$�j�*W�Y!��h3vk�u/>`����>�b:�GE�8�E�w��ؐ�+c$� x`�i����89ܖ4J��)w#t3�Wͣ����] 8�~�e�Ʊ�ї?�����TP��J��Xb����C/��8�`��X�?:���K�,H�ೖ�i(���[�1�F�b���C:���N��t�1#Οi�*�߭�w��ƨ��m�w�S%����gL�d.�A�o;���_����=:!ZH�.]`z�PS��������:>y��!�l����k~tqD���$��zi���q鎠�r�j�6�q�t`��Z*1��6c�(��r�,�{�5�[,��p���'��%���
�a۰��hb�(�*��.w�͉#�2��L
��Kv"�C�BC
�8e���"�X�˸�rg,�
�e&�2�ȉ����3�Z	��.�Ǐ����V�\���F��ݨ��
��;�a���HhS�]o��z����Ui�����#��$ �a)�ՙt����A^���}�Z��oъ����	������k�M� ����
j�%~N���|�3M��v�r�Px	�{d	;�U��rӆd*,�>5K��.0b�
�-u������'����U�U���V��WbI#4�ii���o��@��,��x'
LqRW!~������^,��v��T��d+Z����]� $��v���r�6�Ͽ�$0�ߦ��9��Q@Ӧ��-!! !|�pٕcC��/C�g�}�^��z1`�>c�䈞?�
l�V)��j�u-����ޫ���Gb��L�p��ǘt}ѫ�R��^�u���,�p�����l+�.3l��.����u����[s���w�`�A%�`+w�0̎\	[&e�yLݟ�{��<���x+�ʫ��3��;����N�Q4Ā]��Ö#i��ff�4�G|d��t�{͆���!H�@�T���kr��2���.H��$��g�ݯ�tjf���G�_&,�>���m_���t!��bk���Ƥ�:�Ǒ�+��gZ���C�9{ʧ��`���*֐"0g�H̀R�����\�`�hH;�P�VWe@D朊�{dp^�C�ѩ�s3�%��=�$���֮Q_�#/Βc4�H�~jIO�Y6�)^$���<�k��M�_?�:�������7r���k_���ƓS����!�%>�x�iU0GqZ~؋3L�_>�4��K�"f�6ua��qɆQ�c~�P�3G6���� n�enxS�u��Urq��)�<(�"��جs�B�r3��X�b0�h�a�u�{yL;�6S�	)w���p�tթ���ս�����hLW�q6p�x� ˮ�@y3�}�fu��k����-W����~�k�:l$F�#�c�Y��(�2&�պ�PsSw�����qBݙ	��/򡰦�$��a��g7
�sX��&`�M|P��8��0	C�	&�v�/��I�=�l���M�KG�0�"�L2s���v�P�^��k�͕��O� �����6��s>ũ~��w�%*�6������&�q��mx���:w$���j�h��h��Gi��4&t�g�ة
0����&µT����j64){��<��uI�z�%|��-i�1��L-���6@j0���_A�\��Twf�>q��jL��/GǦa�(w�tI\̒;s��+�1������S����&��
b��*����&i7�Ȣ�����V�a��%H�u�Ģ���}�����B�KHs��2�^��݆��\j�u�a���Z[�T�oO��L7�h��Hu��nR�H��̝�C7�HN�e�b��OP��}���T�l�4���<,GlHi*�b�8�uP��[���m	��6��#��j�.Lȑ�~Ɔ/�e��X&�8��]��ܘ��d�k�nB�p��M�ϖ����O�BTC����s����UUV~5kW).r�oo�Œ�|�mC���9"h��#S\�]�D�}��* E$��o��Ū�%6~e�>�j����N3�KA�(�ɭ(˺Q��q��W҇.]ɬ*��R��)����Z��4�o��Q���d�ұ�}bH��̅>���|��fP���0�pd@�Q5J����D֤&#Ȏ)�g���9�kڢn�k�i@�yS�̇DzwQ��� ~!m�N��9�]<�m?��PP��2n�TÚ=m�����q��N���f0��w�f,���,PtL�t����c݂�E۩g�GT#[Y��7���'f=Qm�%'o�KW|�4���i'�B�� Ch7nq=%�p�m��@�ڄ��J�9ƅ�]���0z���#�b),�薦k�^��>�Mv,�*ↆK�zqb��Y�%��4�^S    @�ᄫ�%
�π)܉!�F�:Y��0$�Qr��e?���cq�c���C]�*�A�V��<�iW攟cҗ)��jf��BM�;?�]�fTT�����G1`4�)��Hq�}}��U�
�$i�LM?�UU��-�&d���
L��[�K8��ŚTsbW|.{.�`�[:��O�i��Ӑ����Jܧ��M=j�׶3����U�x�V0�ˁӣp�	b��d�&+�n?��$�R�#(e�ݔ��}� �fQ�Sx�1��l69RB�Y��B�\!X���L�˒M��he��c�I�G{���! �Q��3)h���b�U�M��g^��̹˿;�Q�N�L�9�)��΋(���|˭�T�r��XY��m���Ǐ�m��܍�� p��4��{���5ĝO�y�|5 (j��ž���r��j[~�hJ�,��%��̎�������΄��K�a���b�4d[T�{��r��O�Jࢲ�Q�.��5{���iB$���E㔹2u�ۉa��lN8e�-y �\�g׃I��QL����D�Y��!�[f��k���b���7s�jv�gpJ��i����s��N|i,�oX.`��j�$���L�4�̀��3b^L	���	��*>_8S�&�Ⱦ�Aa_s\l2��Gx}Y�,A�y�Z�j�SM�y��r�2(����� 3/�׮��v(�惢K��(��M�?v������c��ь�2�S�O�\���dn�f� �n�fa��^�PA�_��d�c5"��1�4�v*��v{��g���-G�Z3����I~��X��"B�j���j�[:rA�C��G`�:��@���\p�d���z����
gǡ�!��4׏J�8q��Rw9ٍXnX}kY@~�i��tZn�G�&��&&����d%4��z�{`��(@�L��J��O3���_�4��5�'���2ti4~�maf������VHL������B��(��ˇ������Y$�b:ͳ�%c��:�[�����Je�-��e5��m��D2{��l_Ŕq���XM����`�:/��+���uW(�X���y0�~tȤ���+���Q��q��k��J�D�l��;�:�S�&45`p;	�d �Mdm��#=��%;�ۙƠJ�A��������=�oK�G�6G�&˩���i����,�)�������ʳ!�\_<r�-�, �[i�����h�d�v$.��хl�������,�)���⚴ߟѤ�%�#���*�{|Ę f?K� Z���)�;�%j�j�1�iA#�I��$�=��\�q��(���8��TcW.��R5�eJ�����/z�`�б�x�����O�F\����y*�_
��e�Xo� ��f�`;��Q���d'Z�zj�`bF�1���5���Z��#BzY���t��x��\�����dIӉt�p�
���M�u�>�6�K�p��z��Y��%.�����:��+���XcV!Z2�Q����e/E�L>%Mo�����а#Y>!��&���Ul8!���0���ZE����gܷ-&�[�L�h����04z7�@���A�u�[\�P3��''��'.��&���h�4H��#Z����c�{��C��h�rW�k���)����c��L�P�UR�~��\���X����P���-Y�t�yG���(��e��\&ĕ���94���$|�j�Fqŭbg�FM��<)3�iFq�ݐ�a1/���!4h��#��@TI��Pm2��Xh�V��m�5W�a�"���v�O�3����t�
Ai�����'�:!�A����oh)"g���q9���j_R"�=%����\���ԏܯ��Ԑt��Q���n����[�i?����𞬖D�]�]#�)@.�J�b�b�j���#�$j�_�Z�OH$Ԭ��'1�rT�5R#w7�įI��V�z��l���B^�o����:�����#��,
��|�e�ĕ�'o�"R��lݔ�h�<�s������s=�0�*w���&�c�d�'��/���	<qL��B�}�8S~�������
�>��cJ�CW[m�p�.�uI*�|6k�4��6�j���#&Ȃ�o��*�2L���q'Itx��0���>�ĀEC"܆�1��KtKh�͔��&]��"����v+�0cB��\:���Ǚ�ݎ���񓄳��,X�
�l���E�g3�,}6:�jR0ްmaJ�&���DI~⏶���J�)�U�����q��y�B� �uZ�oP`��M��ۼ1ܺMJ�=��iL��:��m��4��B	4����n�;�'��k�8"����.�������M��b��h�3����?*�� ���,�z��b*�P��yubS�Ԉ�~��oa�9̔U�Q��8�d��7�n<D�u�����O�nF�J������A"���,�O�.�F��h<�V�A��a��l(��"��B��)ӣ�b:����;�S;S�9`ַᐙ�����~]6s����5�ͯ�e�jh��A�l�H��s8��>�y\=�k���������Ns=un�jq�?��D�3n�3��PR>G[�m�~]_�*�m�#�j�b��+�Ҽ>�	Q��h��(wϭ�~���yd��2ӬM�J�[��8��
�����%8Jȭ��%MG�bY��yL	>+���,7�A�MY��UjƵ��dd/��j�8��k�8N(d�΄'3�?>-t1#�l��a#6���6�~�v9�ކS�<�?�_C�7��0��6�����"������1���'�J ��9n�<�iw�3[v�i��A/a��&��NC7��Ƌ�4R5�<��� �(�ޖMN�~e��p���YR��߮�A2����!����%�Gp�y��k���C���=�(1�\+ݗ���� ,s8q���R��4��L��BQ}�'�$��!Zާ��U�B���8{7���f�v����R�����,aǐ�#��Ĩljt�g8mJ��'f`�q�����R�$�h`�
�w��W�2���Քx�fM�) +�iJI�Hhs	Q�V���Ĳ!�ך�z�%!\�f[xy���{ߩ��Xz��7\��w���f3X:l{�J���$BƧ��v	A�ؽ{����P&�F���f��z�)۾��{����ǲ�D�S��hDvv9l����E���~e�0���,��J*���QE����'��CL�OZ�I4O��i^���w�g��m�cK�c��d��{'@�1�Y嗶�j��|&�|�ݜ�ʜ��+��u܀賸��(�	�
A��0!P���ŹP�-;'�
�ŜM_�71?������]�,��⇺�>ɔ�?˛��䅈�jw�	Ǒ��J��rS�ɚ>�jXa�D3�fF�u��V���]��$[6P*���ZE�E/q��!{8����;�����rJS�)��T���j���4g��M)�d4%��b�J��yT�\6�
o��?���C~�R]F�����A���b�+0{�?ŕ�&G9�Z�{��n��Es�HH��L(��P��q��E '��v9����"�"z햣�nN�P�V����%'�Nŉ5Z�^�#���AWTE�g�c=uc6�w�	Y5�������J�O$�=e!�;1����A��]gUM���-߼����K�.��	�r�=����GjB9,�r�X�����eõ��ɋ��(�b���L7e�2��ŝ݇�M��w����Uy�s鱯�(�h��t<�b��]��v�9�%�����ES7x�w�w�T�$	��4���t�0K�3�]I�G7������Qp��`��;��H�ȴD��v1�
�j�K������ے�&J��h���7�>b�P��T0�J �E�8G��� VAzK�7o���MW��ŕ#��?�Ί���Г���qP1���_��G�TģW R}-W�!���+e��Uu+JK����E�Y�l��=�Jv�N���i�d��#��v�˽�R2��f%���1�D�c��vKl6���!y%���4��Ҝ�����>�U8峭౜4hPN��F��5�m    l,�R�n7�L��B�+V��Pb� \�	���s-{0�[��9�	u�k��O�*H�42zp��_r��?���%���E���戚yn��Ƅ�Gt3煛J�=��[t_:t2w�	S[�&���f���z'w���|��B�9�@�%H�Ώ鲣65t'
O��y},$d��ﾎ�Y|S�p

��U/~b�&@��P�y�gl��Q�w	���i]N�X�鐦�gR]�"�U�l��b�m.�̋�`p��O!	��ꭕӞ_q��[�������؂��QA�د�	F��b�x!��;�%�b8;�[��\y����G��?����Q��S�$
����I��:����]����_��^���X�j�*��s�Ô���T+ 

�2ֶ搛�dЬ���4�6!��l�� pƵ�A��Bjq(�S���kd��7MDU�dC
N���o�nh[$��8�S ����
p�|ʝ��v��
���s���`s'k�z%�e�H5�_�7U�~�h>3zQ^Z%�;�m��fߏ����B=�Cl�n�!�a�>�e3�1MW9����x'�e��I*�A�+>�+|slP}7H�|	2�)���cX�;w�ڡg����L��ɸ�g �ODP����G���ir�P.�u�V�v��	:%�o1��	�$�K��\.�p��)0�L5�m��E�S�[���������T03�<��~?:˖Fsv���q��v�U~v{�}��/=���7 -��(o:�Q��L�-�d��j��X�$�T��q���6K����,��� }�沱*K�	��Χ�G(���
�;�M��U��.N��8���bW,�{��Dh�F:\shfC^P��� ��>..h^����|n��&�8�Fܲ�O�0��u<���%�1��VsM!N��-� _wdE��r��S�w[{���9c�����M�� �,�M��J�����-+���6�FC��_Dxg$c�0�^�h�RB/<G���IS]�p9xF���K��ǃ�;ұ�����^6�ـy,ՒK�����ZCѽ�,_]��r�ɪ-�cODU��'2�<�i��5�����d�2�q�%}1$�|��i,��SR��YM�>�7a��&��.å�~M�hY��'���t�(�w��s�=Y�%hr
�b&���N���Gw�%�G��g��<�nl֭��v�u0����.4���,>^��-˃_y�*�J�aCÕ��fKZg~v8�o�x,�Lo�ٌg�n�-��?R��M�*�h	ɔ9V�ۍ�G�V�>�|by��ٖ���h��u)jV\�gz�6�*ux��h�r���� MSdb�����}p��5�e{�%�L�Kܙ��k0q��KI}�l?���/6�}`w�R��� Y/��y�G
�i4��!�i_%?x�
לSd�&"]"�'�؎CE}*gߎ�d@J��$u$l7�"���a@�G�'���z灂ŧ|v�?&�8<VR��,Wxg7~JqG�ŔVw~���� �5�{\��L�G,��x\CM��%y��嗝��1F�v]O}�2,Q8�TM���!Y?�[W�G˥�}l�֫�X�c�BՌd��Aˡ
���z�T�L�$����l)]�蒠"��y�m �!=Lfj�(�v�3��	7Dc��K�qP2�����TYf�əm����0D�Q���pC�pbCΎJl.ė��Ҹ��G� y�W�f�{�*fZ��h�o,q��]Q����=���İ+���=,�^Gq�$��+E���vq�R%�Fl[C�<�i����:���J�K�h�d��hrO+7-`�j��S��No�j	Fs�,YD^���8�XE�ӥ�Dް��eF�*0\�)�`:�>��n�!Q>�s&8�]NN�9x�6F59��^���Ȍ�`l�O�i���˲�O�(`���/���ŀ���'��gFSB���q�	w��zg��W@����YE��Ϧ��\�R5h5�$jȈ0�~�YT� �,S��	(��4��F�����8�;�,�'��Ҫ��r��ş�2�}$g�/i$��N���c�����Ƚ���~wdq��"D�d>��P��x�`%�ʑ��WG�>�V�T���	�x�G�H�3��Kv���g��������Sf�5W�dB(�ڻh�˨"�!K���z�Ƥ4- j+Dpy�}���_ �kӋ�nM0rf��j���ӫ8��8�
�-�ğ�Q��Ɔɂ�k.�1�ӊ�j^2Ή�8���A��Sh]S��4��oxiM��92����iG��\��;GT����`D�4<ۨ��F�ew��Պ7}�0 y�;��11���®ow�	�0�X��ȌzN�9�� ��R�2�Гh��b�{B6�;�y�eI�8�6���G�GSeiRWJ�d*��IMp9��Hh�?GE`Y��ū���[^W�-I��Q'��"#[ p�9�=|�2Wus��[�y2�'����4I&�Z�#-����(N~p���S\z��rJ���e����� �[m)����P �n3DS���K&��E��sr��WK����L�"�h�,����2���Q?�����+!�ԅj���8��0T�W�K���x6}������Bl�؛�rǧnۃcKӶ�`�UI�	��f�j<������Ky���q�*�t6�m���57�WX���Y���C���{�M���LҪw��ڱS�u2�m4Y�ҠД�צ�4!g�n����r�F�z����3�I��)����2V)��L��h�O�1{#�7d�I.&-gg�l�v���47������L�2�!nB�K��/�~[v5�4�˶L��rN԰���m�V�#^4�T���ND���Ǐ.�?g�p��#���5pa��(��|��4���jKt��ׯtm�?2��UL�U4�a�zOb��=�9M���Q�`������c3s���}�E�O�\�T��S�ZS@��)�,� �u,�]�en&�ҟpu=������۠�7)�\W�q���h�pLCׁ�C��C�ħr�/�k��6�򉸲1,��Mu2n���ĥ�{�S�.���PX`�ʡ��F��ؓ�3m��!"e3�bg*�/��en�lܣ"�c���|��Cً��j�w�|ݐ�a������vg�r �7u'M1+�Dۄ
#�|g�̶b�vX��vD����CIZ�g��G�d��#�W��->����-c�L%�\o��q��� �Ô5f����P��ߝ>����I�<w������~���ݵd����3#l�W7�ep�5vL�Dm0D�#
����ݛ�����i�d�O.��C\�.N3��ϓ��:Y��c+"�X�fvaJ)Ϳ�����c���{��ClG�K<)��oٽ[�a� lh��%��?Xf\��:�MQs�C��~�CO�Y���^L�v�<Z�b�)�4-z�"����4[�
i�a��k���� ���c#C�O��&Y��i�Rѥ�|C�����v�xY��8����y��c�|~d�(��v	�c�ma�U3Ͳ&U�:�X�R��7lST���"Q�k&Mu�r���v� �#G��lG���2�x��`�Y��,<v�0�X�}f�U�q�0�;	j��ђ�0a^A���<i�jҏ�?�8�F�Y�g�v%��#��`r'�=�\���0�=*�1^�7~���ê��	s�YVK�X�#/3u�$��u��*>�9AQ:0���%����.ޚz"����zykk;-�?�Y6��������-i�XF�2�P���6I�7(�v���z���.��8�cRմǫ 1�X]�����c �V�e2� [> ���z��SMl�����gQ�-"j��~}����r�|�S~��\��L�ʛ�6�gJG�+�S-w���p,&���ZY�!�r��iHlB)��ɋ��(Qdr��H�B������]:�ɢ?Z^%O�GL��!�I׻1o8E�(�\���x�h��ȼ&��Ξ.��iG��[�d�A�?TĩF���&�xI��#����fu(��i��"{%ͮ{���a�������H����{h��扜    I�WC橗o��Ym�eQ$��a&~2�z��,��R��XZ�i�aQ5������"�R�ԠRrr���y�a��qy��Q��vM7m���$��?o�H_�;M�93�x:K���_�D2�]	C�iutg�HV@�s|���1������]���)&�M=�P]�	v�-���f����p���)$������P��`���Mj�;���+T�C��7��!T��c��Y<Y{9��dAqJM!�M�sƼ,8)8�"�|��5�8�&�Ă��S�R.�l>gyt<��E(�c%�_�T��w�h��ݑn��G1�bﵻ�����+�Z�Y��e�X�}\�X�-iM��J+Sx�B��7���)+D�=���u^�T��~�0�#j�$D��e����m^%u>�!�6��.\�M�4�>����u�lDB��֋qX$n����*���V��K����e�('�%ư����[�j�)̐��_f��0"�.�$��褢�% we�WcL>�@�"�U����؎�+��x�0iIp���V�n����<�}�rSm*6$��1O]������Y7lI�Ζj�j���z<����ה��U���H���^w����!ݼ��Y��J7�IV��%ԓ`*宷P-�֕�j��v��t+r�\��»�#F�K1�8.Az۟��r 9��כ��6K?	�$�"��0�	�x�*J�oee	>z	<���#��2��+�HF?Te��m�h�_0-�����n�H`���.Y`�TJTEXw����W��Zu�73�V6¶?�i�����5�ѭ��tN/\?2�
��%�L>�  �x>wնYy�[�&�\����`}�(�w��Cû쏰��M�%�G{.�"s��a�<�k�2���{)nR��>;M�h:�-1T�WT��	���)�fdi7�������E�n��@��N����{d�Z1'Py������v`��Ū�߭[�Q�4��wőP_�)��f,1%&R,����"^=L	����;5�q�F&˼��
ٮef/!j��?����������;�S��kVb�Ζ���Qc� ��8������H��2zc�*;�����^��{��ܑb/��D�Sw��ʠ(��y��vITf7�G��1kO2)�e�rW�ye9��ƪ->(�sq��Õ�ڍ�EC껌Q�f��ݼ�E��;�������r	���9���OcPԭ֨Jb�ߑ%��L�EIh�d	���=�
i! ����B�W%���
��ef��|C�ܴC�+��GO�#��K?lk�l��YZ��Xf��ݓ�]�L��Y��#J��κB��n�Xv����׶㏂��܏�
�2�H5��^�u�I0mP��/��B�z,���N�r�Z��,���#�l�?nΞRe|Cڊ?���5��jI�p]��k�R��1�G�Ou7�8�L�u?8���	�6�kX���yK�hC}}/���Y\v��YT�h�iN�m�䧏��0m��*�vP(>|�5RU�!"�l�mE��6۹��*]dwX���~�Ք����/�����GI<��%��2��6A{@8�򊥠����32��J3r;�����$��1�F4=��<�pEw�� ���B�����0����l��-]����÷	3�=
�8�fY���ٶ��).��2pw�C0)��K,�&e����� �R��ڼ�X�Љ��F�� $�4�t�-0ąCb�5�q6G�����Y�W���H���	����B7�~��V��e{����u��5���ތ�3ۙ��v��B��#���'S=��no����԰]�Zd��y�(ڷb,Ѥ��Uäg+(G%H�T���B�)Hk�eqW.�WZX�70�|��R�|�c7�
I(���-��;�s��0�+��5�	3�?��-qFl�E�.D8�`���]맸��ڝă�I�?ޘ�Y>}|,�0���+먮d�'�-/���{�����>��%
Ŋ��D6<�	��@�M���T�l�}w�p
\5�����LԸnN�(2}�35����C��<�E�f���s�.�)�u��f?��B��R��_0MH����|���P�r��
ʰ#â�������S�|��SD搤)��\�+��Pu��5�~�d��b�>���	�Ah���K5+����,��;`��D��%�teL�	P��?/�e(�]�S��N�����g�d~���%Ӆ߭�M�J���`��f}��x�7���J��j�1�[���f���,�Ȕ>ҳ�����>�8�#�e����P�%[�;*3�����gO�67K����׿bV�j���oŅJ��(���I+P�b*s��^T�w���0�ѓ1���#�W�f��k�@�E0�!(�P�v\+d/@ز˟��؝H+�p(�k�)F˨���9������2�cD�F�fO1wp�r��H���F�9������*]-e�&M~�۠u�):.�	�$��B���W��E0�y�����H4X�c��ei2G$��b񪦟�����t��b^U v[���Vpjb:@��hR"�C����Μ�]�X�����&����gd��Lch��g��e}9J�裷�-��Z2���f0�|�c�G&�ͨ�:�9U�����D� <b�]�Bۂ��=�KqK�P��u�8�l��e��&G��~��k�DtY-�?���_뭩��9�,��:{�`F�P����_��P݇��{!P��au�􃿁_�
j��}���^�	�6)��k6v�<��b�1�Y�Cf�!NHf�R���'m��,]Q~dHǙ�[��.m���k��A�g��&�������G\-&����������#�\'��%+�p�Y��!��k��+�`�������G�C�+JB�)w����(�P�K����C��7^�6L���7��Jvؾ���_�Cx����aFJRY��I��:�֜����r(�r�� #��wB9^3�ɼ8z��F��A�22+��X��u�6`lh2�k˂�X��:�?�)����$��R� {��I�`��_^Jq���:�7��.È��4$u++ؓL����n3m���l�Pb�n��qo�������F;�mY�tJ����MtS�,|$U�P�<��ĔI!�lt�4�T��.�xo���&�ȶ)�5�0�eh����r���F�,����ׅ�H�P4d�^[7�*@����^�t@Su�D��*a��d/��/�a����(�-f�v�]Ed��3vD.)�vz��r�uK��f�C�P��jD���#d��u�9��p��C ,}k�(:K�>�5���\����A�G�k�z�e��!�#�cE�
�{ײ����6L�6������_'����P
�k%���H�Ϝb���	%��i���s�sc�Gc�^���Qs��T��)��Yml
غ�L��6�i��<(jF�c��V��Ҽ�t�u��#��S]7����* ��E������m�S5��
.�^\�H���Mdv"|�����h��nH���/ _����x	��K�>�|��Ih �yB�ѕN�D�1��s5+�^ķ���؉���}����Q�}6�_���A�朿���@���n.
k�����k�y�u�>λ���[4�"��d�>���k����Z�	�vV�PN� E&Oe�Z�U�te�;p�_b\R�Θ�����-r7G�}��Aj>\���dC��n}}E�K ��fPu<�����B�����M��Z"�%<(L��L���#ۺٚQ��.��l:��W||��>��HP����8G/Q1�>l�zr��������w����~�|����@0�.U��?��$IrI~%����?�⺁Q҇��Όp'[��6�fZ���X�0��d�	Ս,���[5٥7�ƫ�t5z�JV��}�a����~��bwȑz��X�7�3h+ؒ��+���\���@�u���fgp�@�HS�ug+� q!^��S��cx�] ~t{hp)�?]��u�`�6lb�����?�DƖ�ԫ"��#��t�=mzӥg@    R8J�i51�L{�35p��Τ�uS'�u�l���;����c�Y�����!�B�k��`�@V�^�l	Rs6YD*��d?���lG�[9��Xva�^�4#.tPm��6A�,�������Fg^�϶/n��s��� 0W�Q~4��&�1��BJwei^>�
n<|
j<�~E@�Mޝ��c�lV�$
J]Ɍ��ޞV�Ķ�eL��g��6j���,��+y��JN�?���oa�U�cK����5vS,)-�o�ɑ%����M:�-ǯ�̡�c�-��KOM�!UA)�	�-���'�-9޹J��I�w7�&��Ry+��d������k��N�$v�,̫�jK3X)��K�������=�%�}���U*4��z���H�.��F�bΐ/�$�卅j���]*E���G���zST���L���2E�;��C��.;i��=��!�X8��QhZ�¥��D���u��!�S�_@"��c��7�Ғ B�t\C��.�e�aN�3�n����kִf�g��9���
�pl�h�����{Vn>�UM��3�dv�0�2���' �ʞC�;6�է!��*��]�M�����:m"q��)�K%�<��H�[I���"M۷]ܽ#��98?r�� �%�F�G���sk�n�u2�Z�=m��cPC�;��A�O�)�;�2a֋�3�����r�_��G f� ]���*�k�w�:�\���#&�v�l��Y�����_9�m�V��P��2iTi��$�{8��ϔdL��_�;�V%�F|��љ�n�&� G=,]pP��]�t����+��(��ֲFk�iq�bo��6�&l�+ �^�W◖_�{v�;�nV�Ǣm^+|����@��E�۞G�	l�Ѣ��.4\��neo1g��[VjkW��v*>���e�;Ѓ���.v</�W�?V�D;�E%ۍ�K7^MQzS��5+�����	��>�
 >�F<R�Cu��Y���,q��rk�)w�j ,�����p�*��/����Z���F�����#>���&��j���h%�A�:*N$�8�� >���`Vk�^A,£�g ��{��2��v�������㨸�����)��_���r'�5���18�Y���C$�>�����e������+�ɟ�V����P&##��&���s�lc���"2�~3�\��L\�Ѥ��Z���U\Ku|��a!�($�~T����. �]� Tn�{�	�z˘���Ąf�m��,jű,�R<|z�Q��ߋ9��^!�RJ�1]��)�&[��M����n�eM$�h)��L��fi���>P���ۆ�� cd��r M�D���[��M+�+m�Ni�w�.	����4�}�ƒ�%,VԞ�s�	!*/S(lʎs-�ĳyh���9�Y��&�J�y��F6��жt�V{c.'�F��L��k�HY,��fƳ�(}zd��K�)�'�U7s��,��X����VLNE�"M!�G��4�X�O6�F�Ɍ�꞉�(l*N6y���61*�(��_ـW�1$�"άWQ�l��Gf��̫̹��N#�߮x<��nL 7�lLj8����V��,5�V5�{�P�&����D��xʿ��N����ml�~��l1�m�+]�S�����B5)>�J�/ö]���Ϟr�Q`���2�\$�~���
��+��O	,�mڌ���h{YJ�譚r>����-)6�7j�A����;$���}7���LS���Yn
H�o��%0G�����*W�Y4�����<��P�e&4C��NOuO8S���&z�i���A�3߫9��}6o�w�D��v�v-����e�At6�@��d�`���\2U�N|�խ�����i�Y����v�y�17L�w�H�@
���uQN�K�ߡr*s�c;���R%C �oI�4�[I. Ķ���ç��O���Q�V5���,{����#���\
-(g���-A���X�2m� fw��a����a�qt�q:�X
��ُ�F�w��/	$��$I�#�g��Q�(Y)r�{��O�)t`��n�)��9�������ؠJy�,�J"X��&%Pg������r�U{Tr���I��O��5�A�,ӊ�i�8֤y�����a$�cW ��T�Μ +è���9q�L	:��e��f/��f�.����&�%3"{���m�);�GE�l�+��KX��(L!�j�s8X$�8�<J0w��D=��J}�d��n'e5�����aw��&���hNSA���Lj�	���l�Ȓ�0�*1)�� Y
����5�b��v�Z�D\�$(�&�������x%��f�����1��o�`���G�o��Ō��W©�!�B�~�rt�Cz���+>'�׌i��	��\���ĕ�ܻ��&���9[��,��*��t��oW�ga`�o�nr��o���Y%����ʮ��{�r�XՈ��#P����bjb�m*.��L_���n
�z�=U0���	F�nY �c��e
kI�5'�p�˄��G:�-<�M8�6%� ��W�1�[��0�fw�<��^6��+!PvnI��ө���� �{�{�gj	6���%����� 3�H~LEo�����\�(f����B�:�^����mi�`�!�gFU�we�]�g.)aK4�`O�8y���{��-W�@�eڅ��YU�2�f_�536T�ےB��Jf�N�@M���qf�����(M=]�̘�:G�����c�KU��`ʂ�.�dۥa���Z����t��0�w��"[�|�z8B1�w/���w�r��"��e�%]L�Ҥ-;䨨&Ť��.C�EUn�ZM��l�Px�j��<�r�,s�hN�1�?B]^�sx1���?�&OG�i6���IF��eJ�����1PWm���M����7�
E=M	 �it���������7�{�?�-�#����zQ-�r��՜]§�bLb��vYY���D�-�S�~��Yθ[�A�|���L1�5�'�+(j�	�i;ۘ��D�2_���&����{�^:&p�k��6",ڐ��A3/�3�2Iސ���ĳ(���T�*v�wi�_�"P�����<�t����('DX
�Ѯ��*F=�M�4��49��	�#��掞 �3q� �ɗ��.�9��g�'�4lf�q��Q����,��)VZ1�|c֭J�_�ߣ����MBg=�Gk�1����a���u�pN���=��G������I{�F�*��.��j�6�	��d���7��8��t���x�����z�@�1��'w�x����k��4��A,{L�h\n�Y���G�]��H�~�X9,L)nE�П�8w�2��h�y�a�cB� �4"��w��4~����KGv�P٘�*~�~y�
h8�N�'	+���rM]��?���>:�[�7nqĝ.I�j���C��*u��&�|j�+P+&��pa�������������x~�;U�3��d~�5lu��O���TX0e�����kVc��(wgD��e��CY=����L�Y7b>����`d"���̑�Vá����$-�5s�Hs"�3P ;m�Y��DKq}�Sn>Ǘ�5��О<��EW듩��z�j��dX59ʿ��g�R�*X�H�ݲ�Yh+y��x�{촕�O��-��f0&vx����^�e����py�,~��|8�J���qK,Xp�X��Ks;DM�����^\nj��m�"
���D��-�>W�X��� ��lr��O>�48��U��w^H杈�C�ޑb��uw�1���k[��2�"���IEdǧ,�2���BM����+�kk��Id{�n����r�/�p3 �&ي�>G�muW&���k{���G���"��
!@�~�`R����x� ��=���">2�PEv�r7�򊀬Mr���Ǎ�OD��?M&��<yE��k�O�q�0��%�^38��p�sG5^ɐ#�-�]������07�w�ƺ��,�MvE�1m�39���3�x�Ev�m,6{
1��N|����T�E~C&! i2e�ZSaH�;�nY_u? 2)�~쮠��V    ��qʔ�	�������ဝ���P7��<�3�|��mf�G�a��B��rK�B&1���2M])?6] 4����O���?6k��}��L�T�<����l�J��»�5�{b��8���mg�,#'�>L���,�?��I�'����T&RiQb͋��V3K�Y��������IFF��{\ݤRSL��	;B�Da�\����.���±=�?���F'�|e��WQ���uwؠ@�q���ŗ�i����ww�̶~=j5׼t���zЛk��Ya
��r����I!vݾ_
&U�ů1
;�DU8�]n���Ʉij�]��#�E���a�!�8������e�0Jt���"ģ8$���������l�c�����)��^+O�����~G⧺��˰�qޤd��ᦌ ��t�p��$���g6�MEH�ܥ�jC�.�	�1D ��5RDkUߧ��� )lH*�J)�֜*�+!oc��*���֐~��K����e'���3�����r��?Aǹ����9�F���}8�+g�<:x�cM]� lt���}��7Q/+�bH*Яc)_������A��������ǡ�&�!�����k�niL~�����a=2��Uo���r�o�Μ\!�j}up�m���ߺʰ�q�0�VޑXoۃhem!�b�ar��ޡGߚq�w�n8-�6N�9ư��tB��&�N
"�ݷ�W���o(�l��O7��?q����E��^�Q%V��y}�?!	���4�������
.�z7��A�@�<>{��op�'�H��`��=�qf�_�������Av(77�F㿬5}�<�a�؍蛧,7��/
ȷ�!�.�˘��:N9�q��>[`���ev�dZՋ]���H�!s�s��T}�-��yxHz��)�s(��
eq3�Dx"h^Q=��8��
闾�&�v�[�#�\#xY�){���#�|D�ԫ��|��^��\1E��3A�j�]M�*�c�x����zrjy�G�1di���T.�K�C����Vﾊ&�;��NWdj�1K�)ZS��yɥVK����+�;4}F�蕮�=l#C����v�9u��V�U�3�`j�ײDbU�9\eЖO�T����Q�R[�E<�,U�)�������v�)`���&:���[�>2�f[`K��j�{\��%���O�fi���Ԏ�ھ��d�0\�J+���pwP���*}�*�8B<m[����Yn�����#&�ox���i�M����R"CӾ��h���<I��k�$Z����I�Y���n��g�Qʎ<^{.��Zڻ� J���]��{#�Qݶ0���e�T�縼4�.�a���v�;��=oz�������~,|̅�l�3����fdt�� ���BK����C�J�j%�R���$�ϊ� ��!�=i"����x�qK���"�(���NE�� ��{��ݩ�X��ʇQ"���2����^�s�1}�x{�pAѠ�r�t!�HߘlҰ�*u�L�=R ��r��is��,�C������X!֧S�)c�:uO�׀[S���1�Q_N�G*S����B&~�E���g�:�[�Ek��ڰ�>i����^��#����[a>�9�:�Gq�S� �o�	����m-���M�Ink����/��T1��_>��)��*tٱ�VG44�S9h���AB+w�M��r��S��<i��XƠ��H7�m@�G�zH�%]�s|T�f�e@D��J~/B�)C��Ų!�2�I�Y��(���~��y��!s�M�S"�_�G8u���˨2_22zq5HZ��"ޮ����~�A$��y�FoY*��  �iM�,��lY�\.��fQ[�xe�2��P?'��c-�wJ
H��L&6�'�$��K�� a�т�O	�ݺd��CЎ��ץ���22�5:�,HJ(M��>��Lu�*w|5Ycֲ�Bɟxٕ��b/ʬ�P#�G��L�k ����nX�:o���2V��������d8�P�l�u8��;�G*]�#�9kf��������o����DX������M(����t7�q�v~j��Ï���i�6�DW2�����Q2�9�f-�L�������{.⮟�j8�Sol8��e��v���a`�k���2Ѯ}3f��\��^?��Y��J�X�V>�ª�h�6����8+������:�����b���7����;5ق��	�Wſz\�E�zy�AO��s���4�H�b����P��([��+�Y���d�ёv�@oΥrX#�#6��_��ݺ�����|���be.�5�`A���uh�}h�ˀ59ҍ�&������I��A��Il04p�!��Y��е��a���+�Vܗ`] G<�9��91�j��S<�&5�֕.s��cR���;0�6�-	Νf�s|b���BN��+"=ZƳ����o�y�5�Y�Y��m������𧡇�~jr*M_O#��z��.��cu�9-��4m�Ydl�����ȝ��}A�N���_C>��K�ӯ����M�.��~����������j� +���a|N�/�{w$,��Ó�m��e9��e����d��q�є:�m۟�^��N��آ�'�9��-��U�)����kf����̹M�U9�li��l&�Ĉ���&�;lX�SŨ-ͯ/+}<��&m�?�1@�1)���W;9j�*fŪ����s}��_�OŊid�)���<��!Y�Y��M��Z�A�z�*��� ��x1�;�/�7}Q��Xh���rS���SM��-�޿��*��T�ǅ�D���!
6�󀓩jq�ڒ��x���� �;����l)�/\y@ݱd"5�Nsܷ}�t��tE��a�s�a��m!h�J&+��C��eN����	\��l�)(���2g���6��U�u���U�*N�
�l�={��'�\��ڎM���dq&��]�}�n�P\��=K���������j&0�0�뭄Zw�����|��f
�ʗ�8�z����X4Y��!�?K�ڍ^�G��e�Z��h�γ�h��ŉ��1��3V�V�@}$�jo��0g�4�����˼U�����5�Pr�i^YQ�	',�
�Q�z�-<���8*�d�U��+�q���Y�8R�^X�n�pX�Z�@����&_l_�2S���Z6	�!�[\pф�n�`Z�t���A�E1Ŗ�������mYTd'�o���}��M>v^;���i;�D!C�m7�f��j�Sm�[���I�qh���9��hՑ��ǖ䳫�9|�ѦJ|��s��XoЩ�î ���W��h�*oؿ�Aw9��]'����¿ь���@�j7���~���w�{-?Jh"֒r��*�&�j���݊*0�ӌ@�lY��nd�7��2�5D����i�p�� 1u��l�����&m��3!7���.�9�uD�E�2M6�)��Φ�;�a�O6�R���Q�h�g����h�����h����WOJ�սj�����O4�k^�p�\M
4}7!9�#dydy��E㇛��i�U�V�Ɠ���mQV����%G3�������X���r��O��GZ󵹫>=�w����`��F�m{�
s�*���Ca�^��ܹF����Z������H�
#�Gd�J�&�o��(��8�?�}��E�ʪ�/i��g�2��<=�'4W�c���G ��O�6�crQ)J�ԡOZq@�q�Ӧ�����Tï�O�kp�//O��b������0��D�����T��4�F���)��AL�4�R��7�� ���M���v���y��Nb�!�>��B,!���d$S:�-3х;����+�VxG@�f��L��O�S��_����~NA͇�E���j&�T�-�:��J��R��yw3p�Wf�A�`�������m95ҵ��R���Ʈ��"�GOY�"� 0a��@�%_��6�j#�M�X����a� l 8ҙL~7��%���o��C?�����W��Z^��Ga��e%xݑ;|�����%���#�?��K����B�ve�Ti��hM0����    ��o���+��Ix�-��Y�%����B�Px}���"nA�M���rJ��e�o�>wq�����ÅI͞M�^V��_�~8�_�H�� :�1P��1��|)ۚ�$���/z��5�?�K�GC�(yuM��*'3�/��B���c���l�)��(_�I~��g�E�v`����H`���b�W�!m2�+b�|D�ܡ��*9�;���`P�[j�׹cHl����F��-��|��(�h
�X��$O�D|�ղ�u1������q��+[>|�5<�VL	N��z��Λ�h�gdk��=�b�H�і T;�V�&���HL-�}Z�a�k�Y��X�YX2�X�����8
'Ҟ�y]gFT�T�.a�4$q��Mo�F1�`1�Kϖ�6�w��L�8l��n��V�|*Q�e��Zqeg� ����S�������fk��13�Kw��!U�JxӎY*���^�[M�?PM��+u[ �g��K?�u�6��
ex�0�V���/a���f�͒���] ���	�+�O�-�n����G��"���ձE�z\��S�n�z�Df#�eT���▍*6�f�
�%���6d��K(*8܉����}^��}�Y*]o:������5��7�P&/�Ǒ��W�$eL�a�.:����#g@����B?�iI!�[c�.;uܜ��tT9J�J/�75��d�����zDj��y�4�x=�]�şo�!l|�%I��Au'�.6��ZE넮#�!�t�� :F�	0����$n|52?[�Q�6�L;�J؇G�m�����Ϭ�ddI}H+�k���hV~��:��o�B��]3$]���_A@�=^k�_VSh:�v�Ҭ\���x-�޸o�<a`m�A���Id��X�����\G��LRvm���U�;�_���$���2B>���_�����%{d��ߥ���m�k�L�=:t���T����Ox�ʘ��3��L�b`�8$$��rz�<��j��hM�Ni��Ym����x�_���Vq֡;������es����r5�]VT�$foY�9yo�xu���/��p�\�i��;z�>>,�\{}�@k��i �v����@�?e��p��(v�g��%�+��9�:	":��;d~�Y�t��5���$]�Lj�Os��;�`���<T�ߕ[�V˚�[�Dq��gP���1��F �$ײ�B�Z�ZZ1����V+P�"���+�_W�ԔO�}ɒ#�eaUq9[�E[��|��mC����ge$�h������21���㓐�p{�h_`���fH`F�PU���(�k�G�\<�d9��z��:0�&���`lt�~�i@65��i��?:��Ӛ��]D��0�M\2Q��9^�a6k��[LJ�Vt�Lm	�%hЉh����Z؜��������G���Z��Y��0��m=h���<S�wd"q��v��Tq|N���	�ebU�15-	�厅/U�-��,L���*���6[v�]͖�r��>7�m;��C�ր�Fɦ�Ry+eO�l��&��=��@�|�*��a�-U�Z3�P-��)	8�J�{�8�tf���qǔѲ�*=8&YP�-uL�H�����F����wM"bdp����m����"�UV�*�B�;G�NV�o��R�O���'����1ͼ�wu�>w�S���v�h�@?�V�-3 ��oe���~*a�fx�O���N�6s���c#�p��#�����ZW�l�ֹ&)�0��焈B6�a,��e�{.�B_�fc�n�@ٺYv��CUj�44�Y~$"l�n�EF(��.���ՄqA6�,,C��hs���6YKR�z���7�jP��]�v͚�۬Z�z�k�֧�wZ�pz���6i�i�x���� bv� ��(��&�����p�:��P>)�;zQk�5畕��xS<�&Lh0�[���4�,�;V �W]$�1��N�p�M�3u��#U�J��5����g9Ci(vO���uA/�r9x
�$p�h��3`���T��k�������������;�|vX�V|Rǰ<�a/�m;y��7!e �9q�c
ܺ ���Is�lžL ��3��	>������Rw�v��VX�
�^D�<�N��u��e�7-/�����g��a��'��"�vJ<�Ę���-���̂E���|�G�Kj�dUl��Vv��
�8��=�?A�[��m�𱳅*�lnn]����]���U��#�fΎ4R/�(˔�+��wnY2�����&$�,�Y�� X��o����k������!��u W:d�8�jwd���}��#��J�2\�s~9��O��[�Ϯuo��7搩��~E�$<���^���x�c��ȣ��T��q$�'ӡ����@��^�����L˗���x�B/N��I4���WV�;�{���9*��R�`3l�hx�ml^Bd�νj����|l�;��v��Y�\e�����sC`�A���g{s[��2,L���~�VS6�-�W������6�s��+���0ݏCzF�o�K޶8G��������ϐ��]����E����B�G��!\֤�!5j#H�d�@m)
�C�>�##pk��Ǯ��ڂ��L��b��G�^,�9�vv�ȫ�B�_�'4Pn��*iAj�F"�p�W҉";bGV�cl8�a�l�m��̝S�&�BU�n[�U>�"O�'�����X~g:���.[���H��wMz����p��S��(�n�s�Q��Qb4e&9��¯l��ee�]��s��f�{i~�N�f���8�hl���)+��=�f�����3�R �юx�����`u�w��y&��vh.t 0�l�2у��0o�e6�0^dږPLC%ǧw/�SX�DkB���.���2��w�A�����`���Ь��Ka�ư�wp�f�8O$le�G���n���<^�?��w@����gZ�ޕ���
�p�ה!��9Su�A~r0Ǯ�FPÔ�x�.��5�ө��hdfvq�#�����/���5��§\ȳ���9�e]?��5�zB��?�x�H�Kr�ĸ��=�^�CR����ǁ�_�1���#�|]���7�*��Ǧ�N�A']xB��<��n{ �yH�k�1����O�#��ؖ8v���vT���� �a\���K�Μ�c��.��(޹��̡|���2*/��*�[�zB�k�r~u������l9fS�J2�\U�07;ZW/9$�i~)�j��cYu�Q&�ţ*� +��gzc�n\�Z�c��{��Й��ۉ���?�+{=�.]�솏?���x�{���1�G+���W��-���oe �˘E=�̶��Sm���k��~0ej-|
�1���)�U�)��Z��cی���^�����G���m7����W7����c��To���pUZ�#�v��DB��D둸���w{?4���iӲ��ٿa���F�WbwA���E���@ص
s>�cS��jI�/\�ҁ�C�:@���(wԤ*��ĉ�H��i�!f�~FQP��q���/��~��gP��9���N"���bg��n_�lU����T�sW�g|�O�oa����m%sLLL[wƵ�r�Z��l_b����L��ҍ��g�ѡ�t� ����t/8�"�=7��z��@hf� b
�dȖІ�͈w:ۿd��Av��t�K�������{�mܭ���Z�[�z����Zc��2���.o����64%7�I�8Ak�qlr�~T�&S�l�n4�y/޺#���zg�g�_�HLXff��j9w/Z	�:J��\�߭p��)�l�r�n	Z9秱O�qnyגM	yx��������n��W�mb��Oq� 5���Ӈ|�{�ஸ�Wh^W��Ą�	-i3;f��M.�y�dˠ@�6���?��L@ٯ�e�Ҷb��A�*��8�yzE�<zӥ��2�p�s��m�^x�,��Y�xM��C:��/t���Z>��׻a�|r�&�1ԟuzp#������@u�Y^1���Y��-�RB�a��Z	�@`4�����I3kY���mE���X��-��%c���xlU"2ub���ȏ<i�2�    �l�N�;���:$�B��^��ږ�l���ѩvh�fѻ��S� �(�S� za'|6�<�M}�@[WSsb)�`�r����`%�ȥ�" �~$)e�a?X�m�����1u����Z��"���d���'�����^a�ޜ���'������ؔ�ӝD�҇��Nз�^�Q���s��fu,�{d�9.`�-B�=:�7�)���{�Z���0��k?Ôe��7oQC=��9+��qN���G�C���0��"*��f�c�&x`h�T
��##���5?��G�V�c�)H�;8��}\Nz���h��l��_�&��ʲTªK���Wzw͟1���%ֆ��5�����{b,foׇKO��I4g����)0A������;��̣)�v�;���֘���.U=����|bye<{Sf��_���G�Ny�/����f������ne�=$�g�	Qv��e�n"r��U�I�T�軵�wӧ]Sw���0K�X;���v�@=�Vegh�ށ���A�^�l�3��-�ϒ #1(�!)q)����Q}�0����n*5�}�s�2 +�s�Sx���΢~��g��)N��f��ޚ���㜲����-�x���i����r�$��2�fI�EM*�����ִI6�+�Ԧ��t�+:�2MhR�/L�,
�$I�x|��9�@����-?����>m�ID��z/k��.�ڗi���Kf��v2�䮻�𘙪�ߝ��T�-Pɽ]~f�yO c}fb��)�ڹ�S>��o|l&;r���c�0%O��kY���߱��0��-����yg�JQfqQ{tF,H���<�!���)
g��e7&�����t�I<c����S3�>�;�tid�	��9~��R]y�w7Gw�i�k���Y��0wŖg̼�/�Q]|��t��8x��6�}�~��T� 
��8�H8�+�]?��۽C;�p좁_�WUx薁���9S'�c�����M)�;)m�9�_E,�,������b�^�b�;��+��p��=a�f�[�(Յ˗.�C^ـ�ޤԜ�=�>��Xܖ��C��T޲=$�C!ش#=h�y��ι�R��ל�Z\п� �S 0܅s܋R��&#1��n��S����.{�m�R֮>�������u-�L�!9@���ɇ����zJ98L�xi�F�eour���ˍEx�r"Ph��HD`4(q�ߘ0	{�s%���P�H��������܀�!-G��[�;��f�a%kю(ኵ\����j���oIf
<�G6QĲ�"��i��(o��=T珅45=ƚ�Qz��|���=j)��q)3���b(>gC��G�*+-�B��@3���;�D�\�m����Fw��ۊD{�{p<��I�X��Y �
�t��5�a!�eՅ&wS��)C�a>�^~�n�����X��p�R�p�����P��H��'<_�T[��"�Z�����m(`׌���r	� 1p���<�F��3�h_+�Lf���o���u�. �����M�wHj�-+��}�t� 6^����_��/a��:�S���V?���r�����3�85v��A�:���P��TBAv���r�B�^�s�Mr�AeS��A�����zuթ`_�u�|�G��
wS�@na��c �彸{����r,(��=���n�QR*3�����fS��H�Cw��,�7�� _f`�HD���M����V&���������i&��a�v���;7��"�*����E vs�:�-�BcڿT3�n m���sm��+��k�Ҥ,���3e��ETe��,�d_~���Ҫ`.w�UV\�����U��"b�z�$��87��v`�����7�J I2L�վj2~�����V��#�6�zn�*|�+�<�J:��|�ĩ�P�P�R�A,?�/��źհ]�@�mҴ��9w�OŁl��)�\ՔQ��NHװA���%�H�l��Xo[�.k�t���X����k�n܇�U�J`�Q��=����O�ǣ0��p�ff��l	1?�w���xpz �#V�>�@ם���6 [�L���,V��f��g9��%q�ˏ:Kڈ�W.��c`�yf��mțW}:g�N�.�M�mF�5ot��V��m>�U�nUjx�&��� �)��.X���` ��>{T�  ?��#g�Xf	 a�P�ц"&�F�ܲ�혛�1	D��Qb^_Q�����������ü�+2�6��ȿ0�ulE�4���g�&����w�*��VQﮩ�K��M[�+Ɗ-�P�׀N�1�0nj/�����;׆�t�k=��b�	u�lX��]��^��"Yi��y�p	]t'�!7������J3r&�Y�32I��yQ�M�]HO?�%�^�#�r+���3����(ξ;De���w����D�,[���L�*}��R6��`.��[{�*6��J�3����fb'�]�r"�4\���֌�A��Q���ow�GuT�+���vq���X����h�Ut�N�˱�x��O�81�8� ��h��6�j\9Us�"�����l	R �^��,����'F�|p��� >��Vә�	���z�^�+/)�K���� �(����F��eS��F�'t$Fq�➩�X�����)�`G/Y��������	n>��|8�1Ȃu�A���Ų�d*��ߐ�4��0@����{|�;f��)���Iճ��O��u������#M�LX�t'�3��l�(Y�"2���r��N��n_����ə�~�6Ԑ~1��2�ωT�'�7��Q�x8�.�Q��!�v�5sIwo�-eP8�!ˊ�l��,����uO,� �ܷ��}��[��~�n�!�K@ �����B�<��)�I�������}bs��ev� ��_o���R>�m�[���Q+R^��4x��I����x������i�<����ӄ�Wݴ�"��*7:�^hX	`sE=L�1�e�ǤdV����#�M��1_�r�o�2*�L*�cMZ�O�~��d*l[)��[Pc���>&D��LVMI�;?��,�-�r���aZ����Ɉ;4.���t�F:��u$�#+,Z�-o�O�H�Tzo��m��|B��|w�5?'
B�z��=��9��-YD�ޤ�W���#�����W���i��O���53����jW?�ӟ��l��3�����<ek��[!
Iؗ6�Yw���72cқvB�r0���M�(;��Lfa��/����F<�����i����-[�@;��Ј��A�pp�O�to��yR�PۯH����P�Y���b��P�y�w�#'�hY��o�0q9�T�Y�AȂ/@���b��V^�0[n�v�]8�6"��^�,[q�!�M���`P�0�b�#y�@�d�˧���y/gT��K�.�O�h	���$�sD�M�*�ߋ����	zo�4�5�V0`K��	B�aN��f��ČHŮ3�d{{���@G����O�dӯ��U�L+�l88��K1��Rp��v����S�-J��}�t杧vC���L��!&���疮5��g�d�rw3�n��wf�k�J���=r�|��*��)�o��Nl��y��Ho�k@�Wq���<'�K)�|=)yf[}w/�L�<*���-����\gM�~r��z"q���������0�*���$
/��ہ��2D�� ��a��8�al���4j�QU���ײ������i\�oB+��-�3k��Cwz;u;,�I4���>��,Ș�`~���kNՋ����y�\�-.�?r�n�'9������}����60؉������Bj9c�����D�TAZw\N�J��z�j��q>i0�T�����L�}��XqRI8������bA��u�H|
��7G�<�{}���֙�K4rK��C	r��l._.�e���U�Z� �n��m�\!J,x��W
u{��ť�g�+ �����C����#��k2��I���=��;e<l%�noہ�l�b< J�+\�1�שO:�=괊+�e��@�m������������Y�    }��2��e|_���,sdA��Y���KR�?�L.dͦG�������d�<��~EhoضUl����v��> /�H_k*4�̰j_(�{�O� �
jZ�S����.)���}�*zY�N�{�}�j���O�t��h���=��7BͲH��'Z�u޶�rm�뛙zR\;�3p0K0���9�ʔU*L\�m��m�w;�0���J��y��i|��9l�>5^M�0vQ�6�����W���� Zz����ve�zfhp�e�N@ ϕ<_찁��L��Fb�L5� p6Yh0.��6k2��Q��W@�\�)�;)_����V����8v-[�;H���K���^sTޒ�xd<LQ�	��8���Q���J�,�^�֦�Bq3M��{ �C���A넢����07�����b��L��씐B�X3@�Z �_���ɐ�CXFc���T�˽A�m�m0��jnX~�0����л�|DI!�'�z�s9,]wA�^G_�ͰYK��)=�����Ǒ����on�!y�AR\�+�G%��^�}�!U�dj��#$��Y�a.���J�]V��M��\<,l1SV��3	��	$�_B���9�E&�z����>�&3h�#���NqBg�~��U���CKx17��,�ê���.��k{V3��ӊ�+=�����a�'b���*6;M���Ry�2�q��i��.S�������36�6K}�Y]>��Y2��%���U`�Iԇ~�~_t���el���-�"���t�*&А��r=w�d7�� is�����̹n) ����[�H���k�k�����=�$h��*ٸ�ex�OQ[��,Bs��c듈�_@�)���vȧ���~e%!'�Z��}���I��<��h�r��Qß��C"�t��0��D����F� ���A.!$��7��
�-�U��^�j�qQ��T�+w�N�zñ����&bYxcL�`<���E��(����U�B�$;���$�:TiT�-?9bS�a��O�Zf�����ꔕ�j�ТL�<T�ģ�%�j��l��l7a�)��6T��#��IS���ۛ�%��J���0�F�5 rY���|���ON[�� �5zvϚ�d�
��|�X�X�V�ռ,H�z���^6ԓ��.�2̹l��m��e�{7�r��S�5%sM'3��z_�~�U�U�Ϻ�)H��f�e�=!T��[�@�2o���EB�ݜI?�+�5� \����g����������2h�ZQ'5�N�Z��������S�K"mH ��3I�L���������oGC6:_���V�]L�=��gڭ:~�~ş����@ࣗ�;�7!�*�#<?�^��|?]bKl�N�Ք�_:�t�*oTd��/��{�s�IHǣ3�M=�;�VIB<������9�Ө[%xqG�Y�ፎ�2s���Q9tH�2�����;��5��:�ܦm�C�
��r�I��t.���|k��*�쯸�^���rJ��I��O
�2J�U��0j�� wV�J4����mB��	a��CY�S}� �. ��ҫ�A�8��p�6^ߦ��Q��ݦIM[�<�)Q=�mK�^�4Z��ȭ��aN���iq��@'��V �0��E��'22UEF K�̅��F���I��>�c[6B&TSi�^���N�}Y}�QlZ����C���EI_#]8�.C�P'��`6��ǁ)�i1u��Y4p`�	1�ӌK� ?�q$��B�3oQy���TE�2r�[�_���]6���V�7��U!�k�� $t��Oh�!�CЊ���= 67�d���̷� �͔$�T�P0�vg����r|b+n��6V{��peV��(H0�{�4="G�:�cs,�(��k��۪�ү�g�V��/c������ΐp����u�S����׀�%������2o���z��-���;���:��wJ=�p�0����n5�[�l������}n�K�˔^j��6�L��F�ȧ���΋���h� �dԽ*��Y.�_����x6ﴧ"��Ny�k�o��5>�JubK�f�"[�ʔ���)���+��׌�=�&p��*`n	Y��l������9N>�������rG:V�UU�G#0H"	a�Z���.�������9P"[�x��F|���3����c�6����eIP�*{b3�!y�<��Hw}��*�uM0�ʗ���IT�6�rC&�4.�������с�O���&w��>T����!�ci��.e�?�A�#��WV�g���pĺi*�.~��ŧrRo1������%G?!�j�3[ﵔ�������x4�#��uE�r�vɠ��(�	7�r��ᗛs4M6���t�r�U�{C�[2�o�kh��*	y�M��{�\:C�je]%@w�H�D�V���:Η< ��kǮ��ѻ�q�zϜn7���<����g�N�>�s7���_gHy#��;?�Sf�G�ݷu�S~�veo�aW�m���D"�N�F����<�A�U-1�ˬ�J���-s�J}�^�^�4*b�t�᱇�6�f,!)2��,�(z��m	�����?�w�C�4Wm�迗�E�6x�Wݚ9�}K�([|9	���m��*��F˖�jN
��6�U�!a6V�3�vj!�8$�qT�jٕ��yIw<'�V×W�K�H>h�W�~V�Bd���<�m�zt������K*�J��P��&;p;�n[E���fg�{������|�Ϋ<+gW�!�i�ނ��9�#Ist�AG��<� �.�U����V+�A7iѷ1�H��ږB�^�:*�-�hY���W�֪�F�z��9���G֞SaՇ���c��.
МV��!%]2W() y�&�E�/0G��<��y�He�'ƎK��,Jl��G~�*�>�x�ol��$(L������G��k�T�
�:n��Mf�lv��6��3��%~-#<�#iU��<"��{�6T�_�hU[n��cc����oyai���*Z�ז�O�\�r�҃�ǽ����.�SLgzl��c���g�=��E�s���nF��r����~����XN^����jaG;���Zf�p��Uý���ŜoV}����V�/ �%���?6�3��5��T���]�7���ɡ��Ve�wz!�C�q�_#�/.�V$|��$��qT8�"kBl�N�M}�.'�o��Qd�Ō�� ��3�ϰ���п#k!�"\���K>0|晉Q3i�`�ڶ�Z�?u���5[pĨ��N��e<ŅV���f�j��q�E�����3�
�8��Ih��Q��U�u�
QiAr�˵�������� ���:����?�����z,��?���	��{ 9k����Y|��+x]*���!���h��s�6T��2�HY欥I�}ƿ�6����d$��9 J5w�^�L��e��wK�R�O͵2˅2S�n�����<� G��y�=�+�nL�(�c�3�Y\��j*���8�V�����o��(�;�Vy���Z�i���&�w�ڨ3?�}lϧ��=}�L3�@`�lF�|kD顷1���)�qǟ�|�:ã�:ѥ���8W�e�m�~!�EȺ�Z�~�C����G8��^Q �����!s�=m�J�N�Ҩzr	��qf��}vK����o��.N��>e5�)٪�Q��r�m�|�N�\a��c���xr�t�Y���Lr��+2�v3H��x
���0�Tv��ɷ��R�x���T�� ��[QS��_�Jvo��*�ܑ��?E�,���q^�+�����vQV@���P�l��q�pd~
.oX�W��Z>� �ř�=�]/h��\���.Q|M��ě���`Z�/�Ź�j�P����T.��˺i�l�w�:���^u8wKY#��2	��5S����9����,�6c_<�5��#S��-vǊ<A�������V��"�,C��7�b�&�U.�á���dl>�˟�+��H�B�̀a�ܤ8�!Y�hJ5�B˪��6�n7���|w_O%,i^D�T��! �=r�6��6�    ����
c�%�.s"fF=��)
l�3��|s��]M��b��Sц��R�7%y�����Ul�ebW��̌�n��h^
 �N��������v��v=�m�����r��_�U�0q����8H�z�i��Ui֮y!$=�汕�P��vg��P{�Y��Qa*�u@U[�Ǿqf6��O,���H�i<NT�/�S�E�-'Ѷ�"j{\RҾ]ys<�#A�0�ǖ�.�@�]��XJQ#b��l�7BG�涨MÐ���\�5D�m	�!������<u�K{lڊ�I���0�Q�4�Ma	V�F��Z:	�X��+��A��fl�:��D�_p�`<� � �_��zN�%��
a̱Y�64�Z�qXG�r���#��5�s�S�;� M��E&������l�ꎗ���]u&�?{�ڧ�_Ө�����Á
.��Wti�U��N�B��*�\�Ļ��GS��R����j�xd$�c�.[1�2���m-.w<�SlƘ�hf����,�-,&Y��9�'4��C�ꊢ�jb:˗p25Ɛ�X=� �|@��0���z�hsN�1Մ��!��XQ:�4�@�l�[�d'�3
�e��Q=�cs�5���-J�G9\��f���@�����#][��'��謇C�� �@�m�G��TJv�P������K��S�d��
�B'�u�LWn�`~ɑ���R�q(��-�T���o���,*u����s\S�3��mx�#���3��H����A�����J��D���p>s`<g�UK7��4)o�.N���y"��4�T��l�Y�{r�d9]��
����#���W}�R�O�7�޴vMw����ӻ�m;�n��3~ɎM+r��w��Z`����R�-N �`3,�B��?���e�]ƍ�w��1���6#?����~u�v��V���U�a�Nq�,��y�U/%ϑT&@�G�L�����V}�)Ne^����-��?A��j$A"�{:w���Ɵ��C�)*��:�mV@23GXs�{8hШ��)�j�����{�Ŭ�'b���b7������b�3[_{6XU�ؼ�� ��?�lc�Sqى�n������'��T����w�h�q@Ȝ�1���n|�L��;�_��wv����U&}Ȳ�R6����CdFYc(�PŐc�LW�`a�	O;�*�8�a��-�G��֤ċ�Ph�E�ƈ�=X��?�hM�8�=k�Z���B��K�J�A�����!����	�C�9���%�sc�񍐪��]���U-�8H�"�����1f=�B�&�#r
�����Jc�B�a��8t��hCx���Q&7]�5�Z�m��k�t����|@�~���E�0z��ԩ�tp6W�6s|��8� jY�#��P�2��+K�g5 ��hX��'2�I��*�BWe\2��ұ���|:��Q��aX�,�㢊*��64"&�2�؈��E��z7������;�*f��$^єF�n�adkXe!��N�]���bV%�9�=f0v��ÔK�����tQ��L�RQ��<�+8��@_�)�Oi)�B���w�.o钶��1=���A����Q|*� ����AU��F�*��y����K�hx���'G��TO�A��s"է�٭�$A�zAd�o�6{p=�9�~z�k:M8�Н�[���2y����|9p�3N5~]�
<��w� �9�x{,�u�p;���v��D�j���Ƣs'C�1��ż7,��X���'6W�����:?����cPsmO�QZ�4���%�[U�Cp��sh�dTWZ|�aW�״��v eS�X�0��c�v!mL��%�v�Ԭ��������k�4e#�!���v�d�x��h�\n�84od��$e��^�8����%Ғv�'V��D���9�=��'5*6��l�������V��s��O>��HPl[/�͊0[�8�߲�T����!x�N�rcnR�%�Q�*��d�)>$2�m�"#���v4��D�7�e�� ��<�q}8H��L�iz��9]���P�fd��п�"6��-j���c��0\H5X����*n����ͭeu�!�ED�3�l[b�Ͷ���C�i:�J踜e4����x=x�+Y�i)�Y� �¢�$�wM?�(���
ܽ���	|#��&h��-�N�c�A�6ۢ��O�������0�[Q�0�?؎�����_����XN(m�!�����0��8�7&��ZN�5�5}�5M�C	.�lΰ�z>m[�e)� ?��3A5���T&j���,g���Cw1��$����2*��dw��
��s���{�y@|���e�kK��Yx��Be�8N�W���w�;�aθ�b�W���Y']��ʾd��)x���8��=���Oq��Xx�Xλ���2c�צ���5��l��d���)
`������WS��>bd�e]�D���C�����B_��hX5�E�vdn���-���3���
�������g��_��<LqU�+�M+�4u��?z�$v E�_tTMձ���M�/L�>�n���1ܒ�e���.G��K�>V��)�_]3��:��:�Sf���x���ߠ�'���F�U�VK2>xK�Ϯ�5�I�����C搴��f���'o��=�<iz���U\-$�VgPLK�R�^LRJ6�^Q_��¦&u���
]�tӈCxR	k2+�S�e���>�Dy�U\M;�+��a�������-�Ky��i �o��������d�l#:�U�Kl�4�aq�=G�c����Է���QR
�J4�#��.;������	0Ky�~ﮂirŊ�"s��������z���t��^i���*~+��rY�q�e �c	�[���5<{����<҆tYf�,V���%�T�E��O��/~��p���+�X1��
���V��Q��3)�h���6���TRA�H!d�я#���~nU��^7��[M(�ٖ�v� }� ��^I��[ڊ�����?����N�n��$��7����?1zcF�륔桹����WH`��6,7w�
�I���O���q�F����S:-Y;p��o�#Z���TQ_
�g"�"��움�lw�O_��l�v�$h~�����#ǲS9\�ї��b�?�ʽv8��!�ش
�D,�C��KB"O�}sk�k��B�`J�ǉ=��/ͦ��fV�4�0'ęS"#�u��I�E$��+�p��u2А�h��%�'�~�r��s��~yLz��q�)�)�]���Z�kS�-��9�m��緡v����&b�U�v����]ǲ�8��5(9� ;�A	f�Ɨ��0Ja�Ʒ6��663p���;0_]�{�;3�xd�֤#�
N)OM�s��j�ţ«Wt�#�<T��>ݏ��B[��pУ��̷{d����[�Xa�-;���^�����j�Zt��2�(��c��ga�T�l[TE{����L��"�T�����g}_�oqm�t�Í5}+���M������D_�î{H _q�� ��25��+��!��E0��-����緛U���b"�d������%[U,i	K���.���s'iߎ T-�s~��M^���i��tB�L+�ڎ���#����-8�7�����e��]	Nu|��0|���q�u���1��R��e��Ķk�
����d�V�ߔ=�����7��&���5����-䯧���+��T(@q��mb�l�EU��R2�x+������R�#pūG
 ^�1��Hb� ���|�,�=�Qnݲ��������K�,�&�pR%�G�yh	���p�i�N��,�+%�'��i�S����j�8�d3L��sV3���* �LT���z���38�uJƋ���d9kŞ8��8�>yU �0M|$�I��r@�i��n����$�����r�B�f/�q\r��-�b��R˒�]�wN�1�УgL /L�6+���F��Ge��M��*ݚ2���%���cXy��2SH}��,L��o��,��dG<\�罺�P����ٶ3*߂�^����`a���Z��'�ޚN����#z��H������?��=$.ŀJ�S�a�̩֫K��͵H��d+Z�Y� d    �DOD<����U<;�)�ھ����]�}h��V�H�Eh.�0g^��&�ϧ�D��mH��N�ڊ�!wMK�'������5���ڎct|'�f����P�]\��%��$�gSA6/�X$�~W��q��%s�K�9+���k������@�,�na�M:h���;�����ˁ[6�Rs��or*��Tf��RnsYI��CN4��P��aA�~�+,�A-�'�+3k��im�����! �S��6`;M�h�՚��Z:)��Z�(қCvZ=������ �b�ᢻ՞��e�w��z�\�� c7~�WD��[��i�F	½&�J�˓��˓+�^�~s�Y�LSC,)
�����R�n%)��"PW�H���uV���u���#�-�N�T[U�3;�꩘�1��X� L@],�ΕB@"�0�DSG���ѥ�j�L�T��p��u�a���L�ć����J#a��!C��|��Ac�����[�?e@��2�^���&Wo�í�dv��ph���9����m������:��8�&�Y3y�떜!G�C�cF���i���v��p����A��]k?����f�>���n�eG`���2/����OZ7S� �y����'��L@<
�oy���7�V��bXl*�T7=<Ҷ��T%�`t�hd��s�.W���e��Sጰ �L����5Xr������?]���E*�;d���U�zjf��j�4t4إ�a�:�� �܈"�s2�8��:�)�T�bw�,�)���vi�<�E��`�����z�WA9��Ɗc�Z7F�K��x�'?<6����XP����Jfb�S���؟=���>������+w��Ǜ��CR�>Y�Ê�/h-����S�=ފc_��n9�Ր�e�v\�nYHP4�:�u��pr�^C�eؙ�<2'� GUW�����x�D�W}��h�!��J*�n�<����0gS���mm��J��<�j�f~ēo؞��ͳ�/6�őZM�����w{2"-�b��S��z(��k�]��~�ԕ��)����V�d�#���6�h%~uw^3-fcI[X�p$۽|�^�dP_]����4�Ky�1����;_�D��%z�R�eZ��ʔ� p1�M@
���|�F�HS`B�U�i2T{�)�K���Ô9�P��)��)�����3��	����-ۿ��U����)Ś�D���'�.���✍NqaywU���GD}T�m�-*x�G��kך}�K���n���r�H�g8��Wf�3�ND莬��2^�ߡ`Nw�В�Ф,�%�hHBng���a4��_��)�����f�Z�&٬���a����&N�%Ywt�MaD�Y���_�(���7���~e��Oª~�nQv��E<ZQK|~mW͟O��E�c0�����ᅷ)�����a��k�5_�|Y�ŝz�%��g��We5kfY9A�|܍���*���:5� �H^��!L2�[|ی�N�H&�k��,n.���� �-ǔ���v汐fڲN��M��r'�������Ts��N�F��֑lU�����4(oڥ�?UCk�r;����/��?�P@������8˜i�3�����6�%w�>����6�Av%��n)ǲ`W��`�e�Zjo0�F��[R��1��ؾ`��Vr���=�&OW-��	�:���Ko.�Q������c>����W\��pjR��B6���zt��;�9�#s��w�Л�^��(I��lτ*X�l»�y���NU��n�����+ �� ��^:���\�L��� �Yx̏�~�&dX�3���Sj�謒<�'&�a�S����Yy�˝������P`@�͇���jah��5eKc{�P�gj��XE�>�T�W��7�޽_�MC�V�ګ��-hX�w�7_��@���P��Ų���.���6��t��l�)ۿ-/d����2i�)D�!9b>J�9���麫�$���p�˚�����>�<t�,�=1iC���&4�Ò�����-J�Y���A�,9E+��0�F���|�|�Q�n�T�&ݰ�6CP��~/�Ā�1X�G��!4��t����جj"��y�	9�%eS[*�f�P���)޽S�2�|�H������P(���-q������?)~jWX/�I������Um<N�?Nqv7,��tڂ㤖�PƁ`����28�Y�1OV.�&����O�2u�,�a	3�1����m6�<��X�?��Zyz1I�d�V�Yk�o�'��L��w����l֣-�ҧ�+8�#���J���n�`�1�|��ߺ�t%L�@�L�������MVO�`	�uMq5��
nQ��i6y�?�zT�b�����F���cu�����CN[J��'�F����b�li�-H��5!����@X��zNX3���o	X�Y�����&hS�w����d'�)��*�%�U�3d6�t>/��6��nS�ӥ�9E���k*��B�dA��w}�ۯ����^�u`�%��]�����W���H]�h�<ջZ�nd�2��R�#{��Ϝ��mxu8|��(�w�_��z}4{<:LRM�uW�M?�ț.1H�'׍LM��LsjC�#m��)	b���s7�62�P �BL���L�<�sk�;�4�� ��I�f�Ī92H����_a��5:: ����G�+>�@:6"ڭ��k��U�w	�
?�~�\ۦ�1f���)��ȋt�/�$q�H��|�#2{W��6��n�=nY}s��X�ɽzJ���AC�1/���~M;׭����ЛlJ4既�Z��)����v_�rU��z��V�A0�4�|�d���ő��������dy-�I��i�YL�*���Zܗ�{�-�q�Ĩ	��! �c�4���x�۹�����p�w����|�"����
4�(~6#���e���I�8`�d�Y\��|�L*>�w9�%&zu�즴��N<�0&j�z��3�@�vY���z�Yo5�Ah, ��F���3c@:�8�6�@����v��M׮C_;�1���U��S�-G��Gv��E�	5G�];���.F�2&%���e4��]9��&�*Շ����db)�J��zU^��'"t��Y�]�����}��>�&ƼUY����ʯ����r�%f6��=lJa��Ӵ��e�l�;�o=�P6g=곊[N1�tN61�$0��k�?1�����c��x��-����0{lt��Yw�ԻͿ~���M���
2��5%�T^��(T��Ph��B@ W��.��MCH�YiSG��̭��f�wS��$c+k�kt{/wn��%J�5H���Y�j�QU�i��w?7>d*Nu��cݤ�_�����4=$�A�&#���L)/yd��,.&�h}V,��3�^>��.��Us�ޯ�O,�R��\�;�j5᝷��.����@�5i`J�'�~�}W���xǧ@�=����+j 0�J��q�����!:�I��'��h]k�zC@��L���L�t���T�~�-�5�蜀�i(����'�LƓ_0L|f��V��]L��̬��U���9�B�9�D�q����8�;�n�y�<`��\X��X= ��ʝR;QM�����^7�>���.U`o�ݪZم�3K�	&L�+�d~�RP�)K���M��h1���G�u�{�J��������	���y�c��&:z0#G�V=-sC�у޼Ѥ�,ǖ�1�Vu����S;��鸔�M?5x�)�N[	���Ʉ7�a[4o�f!Pڐ�s7�c9��ae�i�b���I��S����&)�c��)f��/��ӎ���zہ�N��2(�'���$�㵭!�l2�M�������[\|��Z3�������u[�(����׳u���b�"�և�A����4S�Ū���y�J���|RE�sO� �i��?��4Ir�[��8������p���km��z}�2#$�8|*��u���F�*�;�p^��Kl�RzR9rA�'�9��S���e�g�S#�b-��S��qS�ᅷ�����ﾵ���    �j�r0���hT8�Z���Y���T�qA���M�]�b�;�Ma�M����֟����uFѷ=G2'�Q�c�eGP?����)�먶x��$*of�*��j��k�X�#F/{9'^@����k��z+@"�1&߼Oݞc����픹���*�n�����3OJ����G�z�9�gה�f�sV�{I�&#NN�`�kN7�����'<Ǟb���������t�1�m�pY]�1���J ���,�S��ɼx�.{`����+�/R)G���JM痡�A��F߸	���RcϺ����F�_�)��'������I:�	ݒ����ꖿ��fv�~�Z�O۩���F=���/������Y����	<~��ѥ�_7W�ڨ�OZF���
%/9���KU�z�9	�����?�9r�����7{�R!����������e�1$"YP~�u���%�a��r�~�ݩ;�˚5sJc����$x�	7��A�|\�D0@������c\.�����eV�*�r�۹�ˢuR��(�R�����k���uۮg\��,+�sv@n�����qک�U!{�H#��������7��3y�covh��v�j
���38��K�14Й�Oz���4�0R!��`In��/(�uxP�����{}:́��P�;q��TÐ�սdP��!TN6+�\]�X�B��	i~�3T�!h^}��}ﴄU	�8>�_�2a�f��q_@�Yx�D��+�?R��?���zt�c*N��,;/� �K��~i{���N+@�;�p(�U���킫�KjOO�?��}jʨ$Xz0��Ė�&�FӖI�R�Z��ؾĭ��&�N��'�`=��n�y����uܐm^-�%tϏ��X�ur��dO�Lsh��X�ۨ�}�lk�K�&��Ea�p@���Q�s)�y[.>s��h�ld��n!ܥ��!$���	-��^|M{1A����
��n�N	�^�.��?H��Q�8Lc��N?��,z�C!���KÛ+�h�#��Ï"���51:��r� i5�-�w!Jy)�:������%K�q nSꖥkEB��bPbg���JB���QoK��B�{}��բƎ�����}1�]�n�c�8�&']�B~H��4=�-ۡܿK�*���|�W�b@9���`1G�<8���p��!��A�$e4�p���آ�EHs��4��tKw�Y���q�[��p9ŗ�^��1���gd8�}�ek��7;�zt���5��t�����s�p��<���;�VU�y�V�=fXjr�����cWx1����|�SЌ҂ۯ��/�qژ����֕����«�:����E�A����Im�
�r]��zn1f������+�ҩ���A�C��p^XW���~�od٫SH�b�I�����+��ZF�ל��J ���B�*#�|	���V���:C.W	�>��6�]��嵈p�i�Mkn^yxp�$��h��1_0�ʗw<h7����}�tI��K��,�E�//5�]�x���%��!{/�o�S��O�R�Ku5苙�r�Ν�	�S�]s �{�=HAҍ�t;i$7���{��߀�tO��a����C��O]w~($cU���9{����bVJ��1`�E�!}3A��]���<��n�[��r?o�"�4�s��ú9�ҍ�q�2��ILR��s�r+e�1�
1��<>^������gNs毩���^��F8�F��~�ij�f)g��jPg�;*W9��{c�ok��� �d�.��X�DZ�*2>AB�^k�(v�l�e{����т�Æ�%�;1�;�y�{9(��fС?Ņҷ�X�߽�^it;�w�o��O ��4c�j����0���|�-54���/�ߒ�]j�	wE� cC�z���б�RH��t6�kc˰T��PG-i���$�%� k������R���Ӓ�f��`�_r"����։:���JAg��	%��y��A#��Iut�_���],{�m���ї�mnŪ�[%Ӈ����%��hg(�S,�(x�%����\�3_\��vT�0Qe��uï���O�kS�t[v�0jH[N�����_�����=N��*��_�ƮA�{��0�R�UW4��c���\�|i��X1��#��Јe&�c��ݲ/)�����z�(��.!� �(��yfDE�-�e����k���`��n_�$���J^��I�'�������a�su���E1_х�H�7�˓2V��Ri!���Ԙ+?�=��֣�X��+�]�><f�\�ɚ)�R��޲���8W��;��p��l�Zk|���|t?CZ�g�����sӉ�t����t��Sq��CaG���w�����Te�y�e��+�j�]����Ȯ��fw��� ����i�R�<2b�gGR��x���_���g�a���"��g���uPfa�=�G�ޏ����C��~o9������9���H��h���K�8�S��2�<4��B��Bb@��S�,��5���8j���߷��#h����eP&�L�Y����_DA{i� ��$����5t�f��_:}��q1I;>}~���7ʲ�+GpvV2�^6t��)��A�3�[���"�d�I������曐9�:�� J�mCx�/��R?��W���;�A��M!�׬��W��14CR/M�,��]��|Ȧ�0	�5���0�j��˴h�2n���O=:P�p{�O�i���8^��I�r�Y�ũ������@�Ik�/�DD��oF'��x|W����:z��#���U�atOv�/[Y�z�r����F��p�.#�;��VB������ڱ�9�����+� �&�T��>p�b�ﹿqXd��D(���/唪(oW:����Za;���4��w.�J��NT�R�ML�O�V=��{��	�/D�q��h�C0.Q����6 �s@E�P�O�UR�]L��h��ƊG-�/��ل��ⰺ1�{򃸙�#���99�=���V��8Q��7U՜�<	�ZfQfԿкOܴC=�q�.�C����Aϑ5�J{�د�Y��oHo�+ d�����2��m��߬�x��=m-h�ה����fqc�O\����gw'ȶБJ#���D��=�o����v�#y*nB��ʲ^�_�|����'i�]���P{y�i.<A��뫖:WC�:xu�x�nFÐ;>��k�Ԑ~b�	4�Sc��N�^=-d�P>��x�~^-����v�.���Op�ɮ��+����J�Ƿea��0���-�z�\\d�H�
��Y��a+��ɱ��$-��0v�5���L��J9���N��n;P�w�Dn���C�%x�Tͩh9��
�.lc=ά4��s9FQ��uBp{%�ÇQ���o���`0���sQ~�So�o�ف�ruZh�p dr�*��]�s�"z-%5��.���ʈ�@����ݛ�3/:�|*VZG���V�˼��E��9*�o�R���oX4$1�I,�̊��,����4#*U|�D�Uf��<.R�,��ۙv�N�?.
�N(���wfU~b{7<{���xͭ1�}�/�o�!d�y�b���[�.?p��=�qUr�ϭ�����&�����P� �;2i,V�(��o�]U��)����UOLYS���0�<�O�����؉�&�$9�m������ �.	�9�+��1�K�d���If���=㽀8��zK���q|i�t-�i��B�5�:> <�wP�݉�q�#f�o?��S��u���yuL6l�';�p�8nD��xje����F��bӋ&�`S� �D1@�n��z�?{|f�fa�;���Y�n��r��D��R�	����FB�,�1Ƴ![�����8�M|�̾�b�e���X(�[��P#��N_��rX�l�B��h����G[�����Y���/ƿd�E+]�0�:���������&���T�n�CT�l
R�o�6)��J���6�������I�L8�f
�>.]��9�:�Gi������_��ăj�(�XZ�ˉw�h��D���g������e�Lx�V�    �ÞM�ջ���xJa+,�<�Qʪ�)����x9E���S���-P�ؒ=e�`}���0�J���u��[���?g�6	�4���:G1p�;a>�oB���U����*2|�uڥ��k���r�]3o��(�����T�:���D1��-|}ך�����������7���mҫv��"�.��
�*�,`�d)�C�S��U�X,���;�o���ᯥA��2.�t����X\�I�ϾK�0j�Y"jWSj��ST����/UW|��r"ج��������o�������N,c��BUб�51� ��4VO���h+,��e .��^������Ÿt�02�9+��{_��2�����ǧ�(�["�����tah\Ո�GfOhJ�yP1<��7#Fpx��e�Ɇ�7 ~^�N)���QQ��Q�ߵ�����ͩ��$����eS�1�]}AD��]�F��E*�OI�JO�S�^e��:yUmp+��}�V��QrV*��9&��ޑ���7��иJ^[-�_�M��'Qg�J ��{O@b|��[;l���Dh�͟9*v��0�E%Xj��CTٗB^HK��苪N_�ݠ��"OLU��aL�g��^}��:�'��6�U�|µUV���!��΅r��^����y�!gn������ך5��
�|状�0�śZduL��~ԭ{����$��=l��V*��|h{����|���:|#Q����n�[�Α����ec�	�>	X4[/l��0d���!�	J��r���	Իm#p���,��T^c���8��W_ /�p��U��; ���ޮ<7����-��r��{N
>Q�	Αq���!k��mIՋf��J�%(+�B����D{��tb�o���ͤ-t��\2�z�����s�C'�W7��B{SW���H��2v�����n{6�(e�<�H&bѸ��0�����0�0r�#��^٣�f
4d%qgǗF&�R����+l��3G�=��Y�R�Q���/*J������5��y�{Y"�{���V�w�=uW��Ԣ�g�j�ϛOP[�}��X]tȚ(�K��W�U7�Ԥ�67���D	ٻ�mܠ`�	��f�o�/[��/smަqڇ{������ x��ݥz�.>��!���˗[�d�wV܋M�i�0���M���ż,����&'� [U�nx8��O_��O�jy� ��8���Vf��,������P�F����"���XF��\z�����%�6_���4�(Y���1�a%+�hw�=.(�\��qV�R���zy�-����nr¬��)��_�Vy{a�W`�Zr2'��S�W��B/��m��!�;�u< O$��R M��Cۜ^�E��w;Y֦�O������U�i�<�T }��y������ӗ�w�@R�r�-����`��,E2$�ї���C�K-�0�� u�4��&��{%���fp�{��$V�{��H�ﲮف���@�<f�R��3'���W�q!7\�*�[��ˈ�,ܼ0�������℻���	o2`_1�� ��qw��V$�u�WT�E��3��_�Q;Nε�%F�^�:�bի��s�!�j�w��ѹ;��G6���'��.�X 6��+:AQ�(KBZU,4��d�_���̔w.*��_�"��ס/��z|?��������V8�#��Np����(	4�w��R9����p��!��3~}RJ�6Q�L�}��ݐa%�#Q���c��'�eS�	%�bh�8 c�T��Ԓ�5o�bYSƤ�vd�ŝo��<���� 4kԓM�Ľ�`�&b�W��q�B�&�}>6j�x|�z�\�^5�����$�_K�2|H�{%H�%*B��;������[�< o�����O��-UnH�6�\�q��{�J�������%sV�}r���ڢR���7��M{=X��޻j"i�s2&X�K_���q��n$`'1`�=����A��
Q�,{���Un��j��e�(%{C����eEz�$e؉G���p
-Ӻ�����*��X)mF#N�&��@j�}+盘sw�Ƀ��0H��6���]�ۖ�kǽ���KT��ָ�=~#߮*y۔�I!u`���_�2��������*���U���������W
)��dٳt(��mt}K��X���(�`3DPũ�I�#�B&��-GD>��ۀ��x٦�2��6G׿�Ń�����h\�6�L��"���ϱ�乁
j|ġ�������p�
"�M��n�=�Lص��\������N(�z[O��w:��v�'ש�.W�p��X.�t���u�r�\y1�{���D���G����@�]�D+M��]Wyb�����k�6�~uh]n�c�dO>����
�O��Dr��u�<փI��}�۵�
3�Be�j��O�|��-���U�@lgZd�3����������7�/W����s]��2�2O�|�XBA�8�߹�ǧ�x/t�k�20��]���;�5�
b�I�W����u������_��������)@�m�o�%U��������Y�5���U�&�i�~�5Ѽ��]1*Y��x/,@J*Tq���,2�{��8��_��}n�)��\�
>1�x���b�^��9E�r��5�'���LFc����OV ��T��Ί��w���ߠ�w����-�d0�UjQh��y�
�Ҍf!���9��
^V��MJ}H[�4*!W'm1�[wC{
{�D�ǰ��e�W�/���}P��"`�7o�������D�e���.�����E�vowC�p;(����ێxI|�|)�Q�o��f����~pW�c�=���Q�W�u҃2�Y~�`��v��^�E�E���������p���V���1O�z�+�**�x~����fˣ�-*�E)����|��{�w�G�ŭ xOkT�C�w�@U�����M>CDL�}�{���͉��� ��3�v�DX������5)��ᏵGC�(cxs�d��2D/����T���r�k.�Ws��o�wէC�ʾՠ�����{�>�T��+2��¶�,{�����G�&EN۠�K�6p=4F0̞n0���E)�囅�a��N��q{ũVP��T��;#�%KJ`:��}��=���Ehn�$jK�}�-��z�ư� �IדL��AE��z��'H���|!��)�Ay���÷]�&����ې���T`�!h���3�J��#$��b�i����S�A��;�ܬ>�]ԧ��%�7��^3N�މ{Y�]Om4ܸ����,�oK���w�5�Rʙv?�K^#�?��V@G���cQ����������5ĵ�C����Ѕɯ��T�Ԕ����Jĩ����LD��N��+<�؟ǜ�����ۼ�ϧ���J�W���邠n�d���!�r'7���[�i/�5�VEvE�h-Bl�X�k��������k�ae
R���歶_VLm8PS!d�ۼFj;8�Sj�Oq�ײEΦѾj�zwl�^KI���q3�F�r����[�<u9M�z�G�=���5�����UM���M`7m�5;���ۨ�ǜ]Y�ұx�:+��Ly��K��[(��}����>��T�Ѥ�^�Ld���mV�����N3�]%��Ǟ5/�\�fmA�܉N�x��B��-r ��,2��MC*#v~�DE((��~���ịF��A|�ά�>ь��Ɖ"�������K*^�-�mج]�7�j~GS�����)l�ڪ1�u�� μ����4����7R(��.��^I9�a�04O���v�Ӫօ�ša��s%m/T��t^�����w�h' >���7���	�C��� ��8P�f�w���pi�I�U�Qu�u��;rm�8^�H)�Ｊ�f0R* ��\�[�������E�����"�2�3h	��z	���S�k�< ;�T�3Y��j�c)/���T/F���L~�����*3�Z)Dd����D�DR+y�0vg\?C2��A(�AI[e�:?�e�E��8sA����-4x~ʌ[��i�%�`��l(<س�g�    �B�I���i!���� ����Ǟ����m����KZj]�讧K�p�$ss��}�\��f7/r������Ț�	!yb��˻}����|��va�g��0�1��D�d�����0K�����fr��(�~�>itK�#nF e�f���i�^���x%��zF|X*�g*25`p5D�n��q�`ܮ%��OMө�#���n����	�A�\������b%�D._�����uG�;u��t��!��\2 �����Uj�Y�R�m�|�	�BE܌J�pbىb�C��Le�^J7-��J:��S,�pU��u#ԯ���Ib�⌄�|��*��GS���c=�0��u�c�1ꪕ|r��]��fȲ�Rq�m��	�I�^���Up:Ј꒬�1��{r���i��[����s�a�r�S�`���xs��HU�ȩ�E�)x��t�E����*{�P�� ��<�]�+n��2��"�Ԉ�������Ŭ;H�hEn���yQ�D�~�Z=W�z�]bjm |т�H���ʣ�"s�{o�[�bJ���A�v�PU����9 .���R���9��Ҳ�~P�\�;�.h�m��p�x$(Ԟ!_�Rj�	×�5)��U�2f�M���4��'N�z�O��c�`�T������d=;s��{��ʈ{`���Wy��d�����c�f>���8 "x�2ۧecz�x��h>�i,J��A{2��L`[5vL�=�J�=v.p����[X--�#W�H��~�3_}џ����>;Q�H��Xslks@���ߞ.\�ޠ��2����6�yP�<��;�2�2ߚl�	�/��珿}�p��]�u�eݛ2@���
=:d<���Aʲ6TI�O
�G������i��+j�hwQ̘���5
�_�VE&��3��Y�0PZ/X'nž�3�c�Rs!?���{�yk.4tV�S���>!�$1{�L.�5�w�����{�L��m����3Y�цY��G��*�jӭ><��蚞6�H9ὲM�׹��N nҹ'X;x[���ej�I�B�����3�}ϓ���k����z+[u�|xJU���^�X�v���j$A�z���OW�@���R�ϑ���^��4��T6���.�ip�-}�{(�<�G���&�itdE|���N�Kt��up�lQ�z-�������}88iWs=ǎ���&�`��C�ܤ'���^�@��Eᇛ��ӊ�5���Zp��ܲ�Y��C�<ȩ> ���MUU�r�`����eǿ�,��:qҚڃe�/�/�#���{��<I�9E�|���L�ƈ�?+��YA=��ui�S�8�"wP~���<Q����K��3�^���סH�Y�1 ��d��V	��J�����2 *����^Yƥ�^���P�����N!(g�)b�T�c�7�}��ZT�-�:�/�/�}F�*,u�l(4�am��=y�r�w�Ƃ�!��T�So�d��e��(9+�mNk��|��])j�>O��G7E�v&��/x}��� �q|"}�� Ⱥ(=xa�� }�5��8��X���&�|)+u{#��>0�oյs�`�6D����b�A`�b��ӅE��P���	���z��2ԋ���'��;��F�G����q��x�H��Rb�*Н���`8�=3��f]~2�����l�n���Z�MY(��j��&q0z�,�������I��s�ǿ=�e���O�S�`FN����֝�E0��*S3�
���ƌ���@��Q�x"B
��qAA�Nv�h� �
t� UQY��y|�_�;hr�e<e��.�*O���\���$m�mu�MK��ܮs��*"�� ��7C���jx�Z����r�G�+ĭYI��t2u��j�O# ^ߡ��a����݅���_:{��2g��@����|	4���n�U=�ec��革]�P\���9U�7@����F��]8����)�/�?���z�|�E���'7'�1}�է�f�*c4Ic��$���n�R�4�k�Ҹ���u���H�xg؞/��*�0<��i-�Ę_1�R����Jᛟ[T�ɛiM	Z��s.}��k:��m����f�~[���:F#���'?<�-��߁��^f�k@���O�Ch�C�p�eO�`bڣfg�2ўl�}�+ ��Þ7�hh؇��L�%+�8�29�ũ@��O�$ϑ&���/@0����)n�B�ͻ�}DUJ=���̢}
[J:pͳ�or��Lϥ��{h�r.j'�da��z���I�Yx���Q�ʐ�b�3/L�Iuh�7��9�S2}�~uʅ��=�v#����b��Zk�ـŸ0w8@O����x$/�=����gm7|]���j/�6�G8{ZsӄӨn���x�?T���,B91e�qx2pI��,/7x�}�̝��aiL)�lᦃ�y����Ame���V���iKY�s����d�e��j��舂r�q/4�w�!
�r��r���:�V�Jm���^8�'�J�(�՝~Ş�4�N%�q�C�Zp*}��nGN���<!�����ۓ��ǧ����<��iJ�z��{嵨�����2@J?�$��<���QzvV�e���[�эq�u{1��Ť@��/�jyGۥ枠k[Ⱥ�A����2��v5Vj�H,,~Շ����0�7o"�)�^�Nkvı#�ư��9S��?���OC1,��*��D(�W��/��L��J2���O����er�Z[�#�ѕ��ˊ>%�l��f�|����Y��Ԝ�������P�
RW.�4c�qe����<���<yy��=��*\}}��TJmni�8��~���5�8?-�x� .�������B�oH�fǡ�>+���W�n�����"��,��P�ߺ�VD����BI��E�e:��؁�[Y��(Q���y|�=�����_��_��4m�[��j5�y��V���e
���g���-mt~��D�����7rD�Q���(�����9A��}تhL��o�i��H�UV�i����ퟫ�����v�ip�-�6��)1����5�ږ
/-iX���o��
ǧ}������y:���� I�d���؏/���,b�j�#��B�UG��],�r�asA�U+�5�9�5R��ϢZ�ӃodMvd�jw.^��@�{�g���,P�g�%f-�����MP{,��^�l����Ǯޱ���
�~�C"��3�~�m���E��y�֪��uPf���^�����d|D�.L#�c��wiY��#��gʞ�E���Q m��M*(e�p�?�v�N��M�5��ڡMJ_6�R�-K��<4�Z��mJV$���2X���@�D���0&���%�`���A�ܬ"6�Nǿ��@C�~pb�)5*\H�=Ҝ����y,y��!U_kD�:�qd������{�6�����QT����&lI�7�X|��S�%W�Ó�9���V��3�P�cEL�.ǭ�&Z����V�P���ٓ�[v�z��AkE3��
��� \m��yP�ǿ�q)������'Q��/�r8�ux�;!4U��T1L'^�DqT�l���n�ԟ�þ�5�-[�]tv* .P��q�v�w��2,�C�ރb�ڲ��W7Q@s�]�C��j���bĪ�43ᦔ];}E���^k�}L|'�����q�+��zщ���#5����V�N��6ni�hVx�w{y����u��V,�:>u�Uy�tU{+�d2-����p]�vw��E^0��;�7d��q��:>�K��E���+���N!���p�1��w �?�D�<�5[��ɣ�Y�A(k觔I���v�!6��`���Ճ��?@��L\����<�θ�)�n��ǔ�֭L�������^�����F��J����w����\tR�#�o\������������7�]cF��C��DY�Sƭ:9N�Gꣴ��) ,��t��	��/�[]e��A�jw�w/ߡ/R��?9+��qGۜ;�������,�b�X�d�t�WN �*�p�N-N��t��c��9c�k4��r�xhsM&ǿݦ+��Pz�X5����e�{Q���ө���    ��4⒎�j̊sUC��r���Dcc=B(��UR�Z�cX84
���ǊN�/�'������v���,w[f��&Y�@w"v"�a"2wH��K�ǧ�/U�Ba�A�鲺 \o{���ʤ�lē�U���|_�(��E�N��������R��ȭ�M8��+��>=�÷.���9���=�1�𢳢>���L�oY֋�*~	���ے9S
U`U���(F���[�������W	4R}�3�-a�U�{ǟ�Rf�4�����F��i��.���[oґ�Xv�7A�PE���]4���}&Z�?6K�cH,���4$]��ƃ�8>����fȺ!W��	ڜ��pvRA2��-���Kr5���ߘ�ۺ��~�ȂG��[�����9[��QV�PB�=�t�Y�7l���'pMc���1�*�?� G!�Ts_gj�>�$���q�Q�zQ0���b{�T/�O�_o�� ÜxZO(�e�/ܶJ�-$@'�Qw�4��P$"���O�dct��&.����N�r��́&��DuN��9i����x�>���V��!��@��D�nS��2��U��
�[�]s�E��]O�E�g�߄�m�n����F����Z���f� #dQ�3�k�ҪG���R����%ӏ_U<ԁ�A^��'z���0��b��[�#��UV]�i;dR�(O�Ra���v�f~���Ў�
�?d�w-o&���D�[��=�o�
�MD��;O�bAog1����5�J��`O;BF��. q����#):v��z��5��L+.��n3	]���8�y�#Q"����3�pa�UU~���WH�����u�r���ډ8��V�Ovq�!�O����K��g�IA��"VL���������6B��zۀ��~bnN����U���r�n1Ӡ���z�� �5��>�������c����K�-&��씮*�`_ �9��k~��N�T��� 0�*]yT���׀l�p�Y&oa��L�i�ctU���P'F�-S�dר��-��h�� ���rr��b� �E9�<A�y�O��iF�dso�A,���d��G/\'S�P�~��~��Bݩ2�^uS�y�N���Vt�	�	�<`r6������|��KJ�z4�q^�y�!�P�]�>[~�cTu���Q�6SS�9�z���±��K<��hJ�� ���$=ļ�F���>��l=�w�<�*JM|�l�JAN½Q��<�Ի�L��%�[��T����p��Q�&�6~,q�}�&�Ƕ��ő5�J��%��g��6x�sQ��\f\�� �kR����K������z��Y�ވ��R�B�o�ِ�=�T�/�af�O�>���՞'7R	�a�)^	�N��{
�,�_��8�J���>%%��&�j,$��+g�/�
Ыk�.N@�c�Y��Da�O?���|��%���J���U(|��0C0��c�{_ d]\K�n����H���r�.VE��h�F-��c:6�xg��e/k� �͛��9ݹ�}Ŋr�૨�.�:�4vX�4h���:�^�z�vk�U=cz���{]�{ Z�|5x��x�\��0�0l����sc����i�
T>t���$($��7#d�u"�M˱��p����zP޿{��:x���@@V�JL�f�eO���k�΍�?f� �Ž��t6*ڬĥ�F�Tk	z���{C���tCc5��.�~�p���y�=��񔝘6j�F��ӧI��I0
/��q�5p�j(fl�!l�v��Cq��}0XZ��tGƲ�K�x�����@��r�eR"�'t�~��^�q�ؿ�`2K������Uy�,TRk
�_���y�Z���y�z�`ql��,�(��!�H+A|--,h%�n��I�)��GS��~����"��񉝽@�vYg�����tQi�&�er��3"�r��
�N��L�u�ͱח��j������6���y����\ [O�[�~�ц"��޿n�X��FB>�6���CJ���۰q�D�a�!vfPU�B�V�~��~g�������)h����~�~��ΚU��[Y(�3K��j�E4/2�ڌ��F��f�:u hՄ܈���H>U���L�FI+�@����KSN��W����BEE?��$�Q����*j��w�u���u�&]69��b3Q��R�i�UY�f��n=:�.����FK��O�&�y*��,V.2G�3�NX��������xi;���6[r6��\���/�������\~A�����P���Q�J��F@�������FG	��̲}��#bY'.�:�X�g�,+��0�w��e�=.�:(6>M��BX��� �2D qd�J19"�2��6ؕw;���S�p���Q���A�'�_7���OL����8n���j����Tˊt!��Q�{r�H�v���\��r��������K_;����H�otV;���3�/i��{n�t��E�7��-���y|��W�t!�Ԗ|�j
:��.��}T�VeS�&���t�oX�z˞?�XM|�L*���P�Aa�S-�������|3]��=���af�`�7`�����ѓ�+��Kp��*aXǿ���1(���[��S�B�U�IRn�| vL\�pل.�4>�H�Ly�
cx"���_�@�By��豘�~6D�rx�Bk�Yoe-uĝ>ίg�����RC�G#՗U�^�B2:��
`*�x�׸M�jҞ`c��:���^`A@S�j�1E�5�}Il3+�"2:c�.b�mOw5���<�7�A���1D��!�0��s��h�1�z��/Y����h�ϰ�N�t*-�pR��|���t�K���+��Z&�ސ:J�˥���x��D��^�ld�Z�*�k~!�u�g>�D����R��Z'ŉ�-xXNe��T�~[>X��X+yٌm.�"=ͧ�d�y3k�E�,ޅ}I��sM�A\c���p�A*n���5�n`?z���O�=1/{7�I�5^ʢ���:@뵐�l�|��L��7&7b;x���;o�y:E��̪���:l��n�^���b��ʭ��Tx��/+QǎXJ��v�@�nC���ߥ����5P�|8D#�2_q��A�^ك�.�q}Pݬo��S`g^��La��i��2븾q�}�F�>�����ҏO��"�b#�R��9����Q��6;،�Jwj��2�Yp�Rٻ�2�B'�Z�j]^!1����+)�l��ғ�Y�
N�Ag^�A���J�>~�*�6'Џ=��	I>#`��	/^[�4j(qX�>�s;.�����?���ɖ����P� �X-U�m�;�5����r��5m
W�W���`h�$��fmXB�m����ã���CR*�b�Ee�i�J'�ck� OY��F�}GU��F�ĩI��&4)��[x�``�q�a���
HV���]5U]&��ҝ8���ɭ���/k��x���X�,��q�����������9�{ʈ/+�<OMo:D�i�4!~ɓ�/��ǳ۷��q/n�� 
9�ط����"o���d���=`���٫`�;����|�2�1���|��FI��w�^���RQ��Ғ[�W��D$I��E����9��(%y[`eF��u��n_��GAQ�^����Ԃ-^?� Mݮ��A�<?t|_B�I��Ĵ�ox�Fu0|�؍������u��/�Wݱ��z�����
�"��2�P#� E4/��ŋ���N��mr�?Y��`�vx;@~�b����eU�sR��/,�{��4�oY+D�U�0���1N�@��O?cΩX��i*��^���]��0_`�=�ڍF�JȊO���:r��q��I'�IJ?�� (,މF�&(�G�@
n<�G�u��jl��w- (EM�mǸ?��t�o���]C��,���z���E�����&q��-B%M���e����]s�؏"�
����"�3#��|��������@y�ܺMc����/z�e���EiB��С�C�A�s�K��HTJ�Un����I��M�u�ϖ�Vc�����3�-�H�F�%�R����̎6h?���U�`�pbun+�>`�JaB�    T�Љ<�1+�1L��%�
�]=�1�^�S(x�h[x��2ֶej�O�R�s���6�� �����@g+U��{��N'�z��
��Yx�D�����"��x���]����<d�(VC��>{עv)5�s�Ij�A\�c~rn÷e���)ٳOD_k�v�[2 �UT�m��w¢�a�n����*�&h��L�q�U���Y��
��m�s��g�ǹ��81�������:�N[��)��f�� �QA��}��3O� *$��h[Sv1���:\~�wP�����ޱ�e}!���ŐG�o(���tϰ�,s/��u�U=��Ϩ��~ÛE��wi�`�wQ�In?U�i�h�1{B�U2�H�]7 ��D֭�p��̀?�ʹ�3/𠉉�p��cl��jƩ�x@u����g����rE �N��g��i���y|�� ��6^��V�`�e�eٓȨ�<`G�֧m �bLH���U�dx���=�_�����-��@1ʪ��7�a;o�[��}��	^j�=��T��U?�t�\�G\��*��� ��@������`��{�M��t4�r�M�xI�_�5��(�{ў��e��H���>�j^0k���������G%+� �$��!0�Y-<׋����Up{(��HK�g�wa�}�ؤ#4�.:k ����m���.��u�紪�u��x��� Q�K�T�NH���[k�������?�/M��hS؁�̥�K���7O_���Y<�}&�$�댴r�X�xAh}D"[e5�{Z�QČé�ǿO-�C��\�|r��d���j@����E�5,/�P�sņK�̶���^[�R�~P�P~�t�
|��N���6�30!)�Y\�^�\�����ް��I��(�pY�E���@(D�{���8>e�����"����=�7+���	�7u�(�L��H����ϴ&�>5�R�x7��0���к���;������p	d(̷�� ����������c,��N����K�g�~W(���{\���W<��
����6D��x�y�zT�]�����H�GnGU���p�rC��AXe��#�?$	ǿ=O���3X$��i3R�̣�v��"�����h�@�G��3�������K#\/0}�cU-�&�����?\���@Z�79���O-dK�3�T]u�`��=>Ö?�(��i+ٲ�~��"ܺ�-AC咦8���u�#�A�(��]�i;>�B/�ѦT�)eд϶Sf���{l�ac��Y�C>%�˼腇�tmz�!j&0'��_z~a�n7�@�\fM�}�P�����k�u0t�}�u�S��:��c�V�Y���i������>��z��K��??�z���{��[�=��fs�����?!��G��~��Ө��D.j�h��䏜ߚ{k�b�u���''p�6�n��Ѵ�R���lCpw�a�˪�p����� �-u��_{w,b�"��@�Ͼ�~p�-�m�둬vL�&^;s�Q��%� A�Ba�͝~=͂��|����lu�_�vt@��Nv{[p�{�T
�%H@Ĵ�h��ŉ��"������;��j�mRU��gf؝��M�lg5�goZ�����3&qC����e(����%.�Ǿ˜�:�u|���a�5l1.g O�%j�󴄤8�Kbp�.�2�L�|�Ca�	 �]H��(M;��ё��O�K�
N�He~����5.�ޚ˾�q[��^[�R{��^��En���L:�F�=��g��pFj/_R�|z�����u��3���'�L$pc`��]���� ��2� ���D|���ʶ�3֑5�
Nj��e�|�'.�e�{	a�O���eD�>�-S*�L�����ئ�
F������d��P\��9���d�������q}O�J7p-.9�%��Y)7jL�����D���]�JnK�S�]��	g��}���dM�*#n� ���N�~/�1#�����e}�(��@�d
�X�x�D�:
�;KE�#�\BՏ�d���K���PZ*������=��ޠ���h�OrDuG��K1�0C��Z���\��<#aY��i�����U����^�a0xW��XjTx98<U�������&�ML�m�^�Af8D���O?|����[-WW�����q�6�)�����7/.N�l�	D/öۺ�^����w~}L%B�N[��0+����9� �"E�]��v�ze�Rڣy�P�i�(��,��`2v�^5��r�]/_�Xh5����^�k��m����N�X��i�enBᐢ�;�&�:�BFe�.e]��4�g<W��<z��×����Z�^�T���曘���ؓ-��2Z����c;�/�)PZ?\^jY �k�6V�k���w#������Ξ��tI���u:����*)%�Ty*����c�.��G��&�>H����j&X��=��Ar�Ji�����j'��u��onT��f���X��|�JS�����p�d�s���x���w�7M��)�� ��qV��B
{b���1v��w�/0��p�a�=n�`T�0��>?�gx&�z��2�y�*��L���b�������=x��<����V6Uyp|���2��R'�թ���=�*���t�6̓�������BdC�
��Q�7l��Ⱥ�aw{+�R&Z~�
bóC�J����zk��[�m��,/N�O%��6�� �Þ�����&yi��ɛ����:���GsJ�9�>�c�h��̺]�yݨ��a��{����㺲���U�]�УRbV?�R�7)�Uh֗�#�t��e�](�Y�}s�#Y�'ߐ�uP�r�/w
_<�}�T�{9j*HȖ7�����e�&�W�m��\i^6O���Y�A�p[�������a��#.o�^Kk����rOK�������h�,g5��+�>a;�3mO`.;��Q^E�8e������(ԏo)Q�"���^�p�(ףN?V]��a�})�<mp�L&����9##���zR���?���R���Mf5�֐��{�Mh�<��إ�ޱ�Z�!w���鎃J�%+$5��TS�!o;m�_@�y ��O4�Qd����+�{*��A��A�*����{������fQL=l3����i��1�{��l��ܪ�����3��/��$���km]}�f�����/���,|���Ly����aP��4K����0�km��4���i.���%�.��v��!��=#��9z�IA/�������+ڣ�Ic�%�R7l��B����K��-H���i��:Bޙ�$t[7d+7���)	`vOڙDͷ�8K��ۣB��M��/�E$��a���+��?Igo_p���A�A/���-�n��b�2aTq:�X�g>��&�JL-oT��`;m{���I)��ZNM0<N���Hmp���2mM}L�om;��Z�mݗ�Q�a��B�h���b�T��X^Ҷ���Ǎ	[�6�AV��:�3H%��X�%�(��J��Ǆ/��+V	�ydה�����lm���A��kk�K!�x��X��k��8 Ӷ[�T���D�-�����\#.[�M�c|B:��UT�l��0�_�w���T�}A9z�&E��<��t��v�o_请E�o-�:���;��ӧ�Te
K��j�J�t:��_���P�r�'x�W]�����m7b�/�Cj����'����7�}E>��=H�_X�҂��ú�f�Ö�(��W��ҞlI�*����?�lh��Ws!�!�D�@ 5R�L�$���i��{��[�놣e��gO�)ݩ�@X�P"�J�se��ި�o���2�ݖ�Ql���'HPSsI�
T\�"Oʴ�d���r����R�)����^�=�7�~f豧�
Q��<�r7&�VN��? �����K���O<��Q~HV���?�B��O�V=
���~D߸�L�5�9��ʜ�c�D)H[�j1
��
[�*��L�
�R�/P���V����C�
Q���Ĩ ق�>��� �h��񼮜Q�N}�I}R?�    ]C���	Lh�a�aӭ�/�ͧ�9�k�	K68z�҃��+���Z<����c�� ���哾�S�c�����SO�i��Ҥ2Q	#4��M�ju�Ab#�X�9���^(3/A"P�3%3���f����-� n���|�Ow��=T�>�	�E��.��4�m���y
�fPB���R�t��T(�_�����ֈ��!ʆ��C�9�ϗ��A0��5�w��4s�fD�PH6/��-��C���r��+�ƭ=Pm�Aa��'�T���>n�!A^@�y�Z��/[����2]��Ԟ�25O��yd4V
A&���e��R�3ầ��	ܝז��JMLZ���k4go�wһ,������N+���]̵
7���b	t����F��V7��ܴ���i50���	$\kA�|;]#��{lZ}d�f��ݚ� �W���=�g��^=�u�Z
���wa�ĦZ�ԃ��4�H�R[���������gp���ۥ�Zn�8�?��_�;]��jK��Mѡ%������WgC9%� ˉ����|U|p[�l滵X�Ƈ��=�v�[���-��OsO�i�;�K��#Ȯ@ 	�:����z�tU��v���G��:@���M�N܈�5�	�o�^l3:��������N�U��S�%ܦ����"W(�����T�hV����:(�ӕM�'2pPk�UlͲJ�t���y�IQ[�C�;!f�t�g�W�1UJՐ�m����j
��N��>O"TM�ǳ��~��ո\Z�xC���$�ڹ�+�s�~�;+�P��F	�����r������k��O��2��(�R�w����*��;�-�.;���c��x�?����x`��R Ti�#hys���n�AM#��Z�D4$.t�7�W�7�
(���s�K���o���]��P�לZ�{��$t9f{�)v�L� ����3ݐ�J���\3�~�6�����X�)��հ�����!t)es�Gàw�8���9a��zyԁ�o"�=��,r��j	�bYiiW4bzP!��D����΀_V&\���ݸAA�4����k�V<Za�F!f�M��F�1'�QK="��V�w?�,-i��ue6@���e��MAW��)Қ��B���5�؋�����Ƹ�'I�f�����b�A�q�*�b�(��ES�t�:��}��o�RI��a�7�����j6<����xS�V��Ϭ�mV����NH���8B=��t�/���^_��S�ޕ�S7��g�X�h��>���4yza�E�/jf�U(K�})�}n'#Z�Rc�
�/w�S�H����) ���q�ۻu�T>d�t���ļ��ߕ��QZ���L2��a9�Cb�	���a�\
�[���M�(��Ux��Jk,����d��7 ��g �i�P>y��CS-v�SM�zy���f��� .+�)��ZÇ"��أ�<E�ơL��)��D���]t�8��xJ@SZk�MX���ї��@(�Ֆ��2j~m����ݹ��1/�A-T��b�ʄ�����rF��������n	��xN�����L$Ŵ�Ћ�x������lm��Lu=���]W��D�(�*=���ĵ|�L�f����2���W
J���˹��I�
�"���G۶���/>���������Iϕ��ϩۜ��u�.K����Dp�e蹟���O�"`2_�l`b����i��`�㓇I��X]b�5�P+�U�`��d(7~˒�����溓I�\k�"^8�E!�,��EqP�bC�a�5��4(6bK��I��W�ӎQ9�-K�P`�!�{j~^���e˥*_���^>XIͅ�"·d����ݑ�.�ăD��f�0J
����,�P��Ԅ���O��CU�=��uǹ{���xJ��;)�a�v��s|�M��˳Iԃ�^ۮL��t�e,Ty��i�s���c�/�0��]|Z��1�""�wȆ'X֭��*��v�g%&���3�0i�9��=���&ԓ4�O
�'�k�v�>ґ\�ƒ�9��[.\�b_����h�KR��:p����{{�=;��2�?�l��4/V�b�*Ro�h�p�X�X���w�Cؕ-m�v�(��8�
(wx�1ߙĔ��aT�}�$�){I�i��[�1��K�^����E��Z"i���T��s8�+}w�����O�0m���O�Q-m�z�e�����,�K��t�|�f�*���<(=��j1�&�[���[�;N��Ӱ˯[���!�1��O�S�O��$Հ��@E�}��.�n���Խ��;6�؄撐ӗpqre�b�3MTAR5RQQ�m�����2j��@�5}D�~1�نT�\��5+S1�=wD�қ�,����=~��4z���7�ʀ���`1�]XKΉh����c��9�z�@�ߡ�akH����Ɖ�2<�}w�aKاagD��/����{+�� Y�hW�g��0� I�a/����o|]6�W�n0m�R��b|J>�|���/P$e|P69�Vہ���F��;"��f廇BO��z��аK5��-^(�̕�Lo�¡m��f��(p�k>���T۶N�i�{�Cp~������]��ڱG�*�11]��a��갴2�����|�zև��Le��M3���#Ҵ��Ҕ��oHlljz��Y�s�jeqa��]��:�PT�02n�Ȱ�&�����m��:�+��j�nN�*8��C����+��@�ć5D'q�	�2+��PUZD���< �u����� �3�g�2���%�EY��� ݮ����2G�	��As-�ky҉�|Xq���J0���K{.�l�K��%}�z��W�Ց���K�i=�?HB�{?��I
��N��ҕg��;?e!_DVZ�hIR΋z���C�쵫��7�[5[��ʀ4�eL�n>^-��I����c7B`�loG8�����{P���Nǖyt,�և*�/��o�H8;04l�C�E�n�C	�֊���8I��6;Ռ,k��|8��������p,�]1��:�,�
*\v�y[���\��ì��Ė��:��Q>7�KVd�gqe�4�Y��L�!�QX�e��Ǟ�3W�1�f���|(��ik4��,�;\��ӧ9au����� Ch�J�JK6�=��\�i
�>�d�8��ϴ:�B���n�|�>!5�]�ΛP�0�O��f�O_q�$r+=�S"�Ň��ߵrqM�/����&�D�KY�:�C�5"iuR7:mU��b�{�BE�)�&��rzb4�d��$\~��w�q�����@	��.K���aI�{En�D�h��(&p�y��NDw�.\�����~��)q�K������r��Ⲍ+�D����p{Ą���a����ͤ�I�ޮ���P������0�Y�K���W�[��� lF�Z5썃H�����_�]%��?;�=P�|@:�ӯ>�0�Y%���6��v�fN?����P�F�&���?V�`Y�@�B
[�<��<����3-�bR��Z'��c/:�Q��f|כGym��?-�_��I�>E-�~�+tiVi
�W�~��.����3���ýU����U�����U#�^[M6tb�"�p���b䷗�)��	Q�d���O�մ�P:
�(;�1��׋��r��$4��(v~��=U~Ze5��P��kCp�v��N�5J�&����ը�ze�n_��,��ݣg�G�?n]�-ET*�/2����K�؊9�b2#l�yY����
��_19P�	hP��I?���@�Eq�A�� vI�E�����ז�`0�l�,��B��Ѩ4�[��4�����D�ʤ4*����=��K��H��u9��#�`�ᤦ�m���Ç�k��B��������V9���,1��L}C�V�20�3���~P�<ʌ�N�d��)	�	>��g0M+� ��Y�Vub�:�I�lO[��-�x��^�Կ���Q����OUV�,�������`jc {I��J)��R�N ��C�Vο�i��<m'H��:�L1�OS�J�^��]�%,ta��񌗬kPb!�&e��N��AaG�}�EX���4
 �7t����l��m&~n�s�    G�>�B�g	%O[b�IM<�_)�_�&��P�줐T�=1%l镔���7��`o�_��Pb�o��-ܭ��t�=�y�x,=!@M�/dMh�	ue:v(���|/��"T� �ӗBի��RU�e�oγ�fqPfw+�����vd`�'��If���?��/�FPL �Ɛ�9'Q3B�Mx��ykFHE��3�-Ey"lx�=�[{S0IF�ZB��N��©3m&'!�*T:[���Z���x��,��U7�b����z���P�s�T(�fw}̿��쪳aA&0U��4ͻ���i>1����t��T�h�������
keT1���z
5�V����m S?cQ��u�c�]��^����~6%{z=�u�Hm~M�qP�|�_@,�
�򠥛����NS���M�cr�����%6�_^}$5=yq�󣱻�
�4����y;ۻ<���C��j��E%~_}����"S%D��o{��
������)6}�R>>���ON��5�悬�p7v��d��g�m�[[�ɺ1X�=�с	7A��ee_�}�ȧq���7[c���27To���H��ʤ�W�L���#��&A"��ݚ�k.k���+�.����Jd >R�%��)/mD�j˾�MӪ^�m�8ȗ�xO2�֑�֬�:t2C���y8�t�㎲Q*����"���ʖvU-̯�C���x}-k���u��q
YP�җ����λ�2��3>���	T��l�X,��̓<��#!7��� rYq�nHb���Jk�@��.�>mj�j�S? ���#2�T�_6�K9&�Ƒ�Խ�D4�*|��Y'=�%;��� 1�������0Hï�zH��<�[�=��?V3���G���`_S6��N
�>���"��=̆�ǖP}�率7�b׫��s�Yz��{��=��e��J"�0sqo�%*#���T@^_d�X�'�\HI�1?�ea��u��ث1�)�D��8����%�I�x�Zԓ�^إ7�2�I-���N�k7��`���о��[\�8�,
�� �mO^�P������Y	�?���Yh�w��$��"�f�ַ�\$V˄�"QR�Qc$뇇c�^]����G'��nr'�,��M��"�cH�*p0�z���k�\QF�%�}���@�L���<g�Ik�+{Nk��@�:{qȈ@����B'�<�I-��}��d���NW���ު<��ڷ��G��:,�Oe�m�1+ը.�D�g��
8�O �-��LK9�R��O|�=�:pvA;���yP$G��24
�\�d���I'��F��d���-H�n��&���]��䏰�c�wё��Ww-�?;k�!Y�����iZi��LvJ^N��l��A�Y�}}�[2�JΧ�-����Q�2���B
������uow�|���h��P q!9�H��o"-���x������,������0N������%a|Q����_0"@���y�?U���ߟ	ݕM�ˁ亁�
������������(F�)���q�F����(8J���q��;�g���eNwe1�/�X���RF���ߝ�|�M�1��<�6u��P��&���-,��{>B����3�+��9��}�1�-�r5a�G���gHD��oP�&�M|�P�2�2�t�GZ5/��������S���E��Oe�k�	|�[�j[;�����q6�v��կB7�4��n#
n\֘=LG�`�j���OX^<�@ۦ=�.�1��!.L�k����<+$xC�>�2�~�E�_�~�`� ΀��1���k�a%�������%r�Q;����+
s�cB4��@Q�\�k��+s�t�Tf{c"�@�G��5��Q�$CЫ=���Q�"j��%v-��n{���^�p;f�\��SK�N��Y��Q��<Y\�b�n�$s������*�Q/.x��h�L�����W�~cipIЅ/o~�a��X��,�� ��4���r=��Sw9�X�3�k^"�b��!vmm
��,vg �C��?{O�@d`��������AsI��W����OSrZ��fίz�\���t�?`�ɲ-籧㷏��������n�Q�b7�__�v��j�z�,uN��;��R:�h9���%��CL�ƛ��j1
�i7ǪJ�_�8�'4�n���
�˿�I<�ԛ�U*f�_��7l:��v���TG��('kzͿ���Ԋ{���%�&HN����++Q��α'K�����p庯��ѽ)3U9��Ζ6�n�t^^=�y{�cU�>1�DП�Q�K��/�^xC1*P}���>�ڢ�}AL��(�z3y���1{���L���(L���@�W�I�u�}O��%B�����;�ݫg�\~�L1�z6�55����W�Ꙏ8m5 o{���d�2v�<�\��@슄˸&á�T���,i���y�X+A_���1�e�,O٣�7���w��ʹ��3-�`���W�e9���	ѧU��'@��n�T��P�3�n9U8��ܿ���_���;��U�N���o[\�u���mص��=+S6 Uؕ�����\L��U�����<�����~��:`�y�9����2ω6����+5������ʝ��h@��E���K�@��e{�����+�/�s3L#��9`�#C*���,�B?���G9�rĪ�� �6]��w�S���WOz!��Le+i¶.���kr��I}Q@Ņ�VF�$y	Nb^����T���]��O�a�[zv�D�V�P�$5�E$�,��r��C��`ɱ�<T>�2����/�q��,^(�|��jKի.L7ͻ/qL%Bx�o&��.{���!�#v�Jto�[�ᦖ�Dԟ�J�%;[c���V��SRqaa^��P�ط�dLN����Z�Ko[�OVz��Ζ����x0ep�T�oN�L]$�-u��q �����rM��r'�C/��q^��]-�yx��u����ձ*�Z�<���Mv̓3��G�'��k~��G�&hf�vuXFY���g��V���4�?��x)=}�%o*�)q��T��9��u4m9�Ϣ�SE�P�GO���Owl,rk��5���?]�=�\�4��# ����W�7݇8P�
��i
�A�����gT~`b0����1A�������P=��aȳ̻ᶝ�uI�i@����յ�(9C|^��k�?Uʈ�_pz�	w颮�~�i
�g�k�[~�Pt��wG�UU�rWՆ�n������^���v�?�߃kP�?d�,�:>Y�^%� M�{��+w/l��T.g�|6�g4�̪M�H\y�{kN�ų��\dW0��l��w��L���Z����F��9>�o�VقX���u��W��)�Z�K���y��R�}Ù0����D^@i0|�4�g����{�EB`��;w�K��mNvƠ��b���(���w�w}��"T��]�t���2g-S�\nB���qF�e2������#җ}�d��"��l����t���OV�� MI���d���j�lC�]���|��=�/7lF	��4H�"H�Ah"��]��Ȱ"����o}ܚ3��dz�iA&��ۢQFe�+N he�d��:,�/��w%�C���>�ul�ޞl���/:E���JF�=��9|q��T��$��0�Y��p�����=�͗�ݤZ��_kEKg��ԓ+�|��p����%�Ǉ_�����b(p��i]�谲I��ݝ~�y*V7����ć"���.�j��2G��e��t�_���TD���O�;�־!���3�X��j���V��J�벁ړ�&��������H�?����R˽��r �=��quB��s3?U3�P����p^��=�V�y�QVu�)׌wv�y�(ALxl�D���+sBQ��7�I����MR����8r�9ѱ���Ij�l��A���8�ƾeB{�Ў����*��>�$���D����a7��S3�Q�eO�';��J_g��P�:�Ac�r��}]n��ڒ�ۦG�h��e��j��	�w�1��Q��[6�    �h��~�RKK�R�r�N�"(%6�����:�,�q$�^���H�"u���>�ً��ʌp�H`��#F����71%31.�v��}�/���I���/���{_�뎚fA����p�?��?�����:��;W�܂�%�ئ%T�ׯ��7Ly�ÙI�v.��筭�3B�u鋠���F8��_��u��+ |T�� �5c�4,9���{6���Ǭ2tY�b�D(qY��5a����m�����@4�>y�Y��dS�� ���Ou���s�~�[�R��F�?�K�~��n۵
��dĚ�=	�h4��kz6fٝ*�lޖ@I=|���\]
��(��f6C�7a�~���#�� �r����BtJ���,��4/|h����e ��
za��߰'���a��y*��.0��(�A忖1�H���]b?e_���'jQP�^/F�p�en�в1�1�Nj{���^a������6d����͐y�6V�aTa�~ʗ =ۡ���EgrT����_	:mcW�I���NpF��s���Lv�<���U����>����
Ƿ�����W7	��bs'3Oy_?eVo!�g���z[h�"KH�)���v������G���G ��0�]�Ū���@��Ug��Y�Ky�]Y
�@�i+�y���f�:}_�d"t�)�~�bP�7x|�u�ȧ�/��/��ɖ�OP�g�N�{��lYr#k��0r�(�2dAQ��prx�:��]���aYK$�+�e�-�ڮ̊��{x;�[�!M��N�;,Z��p��јX�Rn-
��s8�R}s=�˕(�W�2L,}aM+�ἴ�,�o}c����0��x
�}�!�q�S̮w�_����Tf��'%�z�"��P� \�)�>9���Q�_Z��FW�Ə�aXG�'2:�=ѭ�ˆ�{�?�akT*�v�%�V��|{��G���u�����0�Z�S����P
�M�_��P=L�	�kn) �M�zN��TԸ�r�L�dmi;�5Z���b$@R�as�8`X���"����@O	ӿ� ��=���=�ӧzz�$fd��I�ei�D��m�	��@��SV��}��D�e���en�u��Ϩ�(|����|���R��.���0? _�,C��{bK<��D��A������5����8������j� �ɣJ�^ӛ��58��M]=�g+!���U�9-�:��!��,k<�����=
�J6֢�э)�U���t��SP`>��Î�Fޡq�x\ ��ː��b~�AY���_V�2,*��w�� �T��j��A(=�� O�|���l����&� �m���)H��)S����K�E�E�O���O�+�B�*O�|S*U-s�=l��m�%/	7i[�	*8�G��I�O�o�;�I��{�Y2q"�)�<P���4*�~�/p�����<����X��O���X�n��6���Nȼ��H��
�,�Qi�c�r�lb(�#���1�O>?��U#K_��e20�E���Z�_�Оrr������>&Puݒ�,�`Y��ƚu�-K��l3�-ƻE��������O=V�<M�h.E�mbs��,$�h�k'�u���^��E�l��l�;	��V,�@�j���p������ï)��S��;n��"���ۚQZ�-���)�өMzau_[����|Kt�����4ˣ�gwI٠2�1Ϣq����Hk�7�����S����~X�D�F���	QW ���֡�Z�E�b���ݨx��bOU�,ZN�x��=(@Y���f��|/��!ʰ)Q�= .TX
�^�,|W����ɣ�$���+>�9/ei<�ZsNn<��a��[���ΏԪƲ%�����+|�|���AF6�bEdCO1�U�[�f�t����?�_���ȹ�u�>��ߗĽ�;�aٱ��|�mj<#G�-}�]����I��)����BJo��܆���]B�R��}]�v�\�Ck�$�� v���mK��b�T�B�~�C�w�ܲ\&���X�"ˡ����Zv�d%��͑I�b���^.�������D�V����՛<G�����,��N�I���1I'Z�j9���Y�$�.�:�B0��{#GY�`��&���3w��oi=!π&����|��r�P�gǞ8�nBy�Aфn)���̯��\�خSr�2�n_��1������[��%J�56��RC�D��NztRYĲf�}TC��/O�>��TU��б4´���7����)&6��Ӕ��	��qʓ*jt�M�4�O��M'I u���0�g���阾/�+����Y�~�jY��O~����b��ù����<���7�5gm���u��O[�&�n����m������\� ���"�XXG+�^TOl�\��DH��n�&��']{[%�*��5�O/�����*��)m��b�G��3ۋ��Q�&�85�&�`K�9�j*iTrm+|Vwc�^ܱ���	�}�92\8Q��Ǣ�m(5�R�2'Y�9NG<��=��(�_$f�بa���~6<����5S�j	�U��RѼ2k�N�8�}���� �2�J�[A��ꆉvLſ�>Ԃ�|/+��%`��D(5.2�gT�����oAƵե+��j�T���W���óB�gX�&
�7H4g��]�lN�����W��§��?.K~��B�4&q��>���3�3�5�n���V�d��YWZ'��Ź��ղ+�O�j�'eY���L����`�Aj��\z��Dd�\��Y��ǅD�2�Ӏ�(��ڋ@��*Q�����]a��.k����L���iQ*�F�@��hlE/FWU����m��+-�ȶe~qV"���nN�M"�g 4�����ߟ_��ܱ]'Mofb�q�űʸ+��D����"80�A;c�h�k�G�iZ�*��~�ǐ��g�[&ʕB�^vj����U���3��rH���5�f<5��`F 3��N
�]B�}���p�ċߢ~]HY�"���ӄ�Y�-�>��w0ș�sv�xf�9O,K��X�U���=�TL���3�A��ϖ �?��"u�kK屦P��'�F��XཟeƟD��u5�n�����s#>�4�j^K{�K���65P?y��ʢ�9l'�!JU��r���k�V���MS���'U9�e�Y}L7M��T\כ�n2���Lw�G:�>�\���:j��C������"c�]�v$�۬�.�u���v>��#����v��Ý�4`;�Oh�1�����n��1V�h\���Q�qE�.=m9㍏���4ʯ�"e�b�U�����Ĳqm����$�z��~��*+�Qo��)1wU���>�:Zq������O�/�M&�T4�j�\Q��C|��.��,�Nb�W��k@Ǡ&�e��2]��x��4P����Lw(�a�9�p�ƄD�"y	d,�p�����"��NUw�헙�uX�(�
�^hq�Df���
��eRO�%���3�w�[ų���M%��'^�O�0��f�0�$ ���/(>6
D�QʼN_�f���;:8v{�_�2O����?W4����32?�(�aa�5�JI��H��hm��3kW���zg�&�1�>�h}6���8, >HMd����=Ӂ�B<2�!z�1糹m�a+�aҸ՗8�����c�v����j�o��`�u���'�A4�����2��h��A����x=y��t��BB�o��a�G��ҽ:��"��qa����i7�xƒ�ۂ�a�%��?T������w�P'z!�!Y�����D�����3���z�v��q㒶�_[YJ��E�6.JMꁒ1q�iv�P��ݔq~�Y|_":|��`A]�6-�-#�K_/�n���L�Sm��/��a�)|���ݹ���-�r$��>S�Y�$�;�fg)��/�"�����z}wI�û�C� J�E�nव�kc 72A�� ,�%�6u��ӍcI/H�uQCPr�1�}�L��ƀ~���:����'�[w���S��a�j����D�7�r���Gx�|����۔�i��    ��q?�_òu�X9�P���o.1��ΐ��
�h���TER�K��i�~2u�\��@�YLJ�C7I��.���o�_�EbDRj'�68]ǋ%p�c�Vx�m�0��)���c�+4��� �/�:�����:sb� =LUw}�ɰ)��z}el.�P�Ϛ��� �-u��t�l��f}�2��aQ����Erm����18)�A������2dD�M�����L<���f�/����OgQDe�2)�2ˬ,a��{���������d�ϋ��z�zO���	,Ԛ�ͮ�u������5�R��.�(X�+%+i�-"�\q�Ծ�a}I�a���F栩Dh&���q�(e[/5o�2���`��3����ڶ!:|�d�[گ��"d�[%]�Y�Zq�ۨH� H��l���m �q��W�5�3�A���3e����|Mm��e��˲-�HT��;�l���0�e�Tn����me mHϛ���T �p��r𦲱����5Y˶�&8�1���4א=�*�|~J�K�3k���w�t��69p�����S����SZ�J`=A23�8��I�m^�y����2�4"h��h�y������{�Z�U=09͡�F�7�Ʈ ����&�V��,��p�6$D��d>^��z�5������A�F�:�x��c�B�+����U8&���lre���.�P�ə׏�qQ��ʷ�ײ��d�^k�{��Gx��B%��H6��"����a�v6k/�� �m6&�IղR´}�w>Ԫ�>� �^�%���&�D-ܗ��{MM��>��U���ժqkδ��'��T��VN�ʌ%����f�Y��jς,����b��2�.;�뽟��gD��ڱ\7F��Y�����.|p���
V}3:W �R���G�ON	�a�m
C��8X:>��������a^QU�g}RID�t��[���Gث�Ӄ�o���8��~�]a�\B�t6�(�����с�3�.eK�(�Q�&*U�f����^L֙'wǶB�Ü gOc��ÔVV �ijA���c}v����d��M~��M}�y���%�
�ά��ע!�����0HM����Ϻ��3A�� $~:T���4k������}3���!��vD�Q�_����Bw�(��t[hػpч�f�!9�en��h����nog#��̏k��1�V��~T�S]1�$7l=5�BQþ����tY���f�eO���N�e���cA��X�΢�u�U�z�'�$�%g�٧�*��6�&W�T�PA��<��S-���Zy���*�{�TO_�}S�g�v�FkY��ʮ����V�c8�K�c�I޹���o3�F�괍�_���l�8�&�\d_g�{������g&ܖA,�����[��Tܹ�F�Pg��g��d�Ԍ��p�B��d�B�����Og v�E_���5fD�rT�º2;t�ų����� `�NMKVĶv-��ʎ���O��Ų�S��	�O��&�<���e��&�hx��z`�g�`���%-
�QnU�s�
*yOܛ?j��>�)���W��Ӂg�����I�,ɚ<f��|���:,
<�-�̥���E�������A����0.���"�԰s7�����B�8��Lx�Cֹ�����2co�L�����O,�%�gb��O3Q��	�j�QY�Yx�&���P�6�����a�'��˭��?�F��^7S��Z�(��b��?M:]�d=v�.g3�w��t��^���Z���a�ZQO��«2
yu-�yE���D"�
��=���F�Z�r��~bxM)
;�O���{+n��.={�6�W`��#��G��o�O�D�p�j�eh�,��s�^���+��!��uzdf�m�jPv�{�R>ᾣƅT����;u�J��h	�j��6>{���Ne�F�Z�ܙ�	�&��o1��CbvG�.�ED�>L�#s�y�B�1@7Ơ6���[�+dC�zFh������#/�-*�	���{�4����FY��J�`oj�_��`��9��Ғ�=�n�0#eQ�o�n|�� QvԂL�+�������=QIe�Y��g2>����҆M����ܙ13��Z\4�D��i��$cL��-�ʅ�ہ�*Po[8(=T����LYMH�4S������5y��o�^�����Rܳ��{,V?�əpT�1(��۫n:�;��n:v���ŏl���8�"P�Noc��&��`7�i�tֲ�'Ͻ�X�����G�����	���4��������(����jcn~���x��tB�P��H�����9�SQ~�o�V׃��v;�Z��fJX��O��u���Cy���Y�M�l	�����(j��/�m��/ë�h�B/y�v���pa�?�^����~��g�N����>������^r�_�xj	�{~Em~�������yP�g�}���x&�=!'
����U��E�T�v��5��:��̗�$Px?#cKbhl�2y��[�1���wuϲR}��@fy)��P�m_��Fc���jr����I�8�MN��$[�)�D�)�.Z�+��i�C�4�/T�6P�A��p�-�P�M�>�ʖ���KU�3��/$��J�L�t�t�����W��M��2H�]� �w�9�av�o`��r�����i�}���8b%��b��mm?��D�ņ*m��Ԧp�`�������QCP���[�,�%���V���i{m-=� ��$`��b.4qG�$R��^_��)�}q�G�W#7ܠ���\�K�������¢<��H�N=�˝�8���,;��b�����a)S���R��������#�v�z��w����<���3�.�.Ty�uF˞Z�F�A�2�A$]���uPWwcR��V��}��7�]��ɿ9�.��`]g�s�����m,���U���d��e���<��O �J�f@��	+F�j���3=K�'K��򭢥^���8��H ���P����v��!g\Ԁ̂'�%'�I�=�f;�m��w�2��F�g[ nʧo����n=�FU�5�jӳ�x<�\�g��U]�����/��I3���c�r����%'�+cxA	����w\�<m�P���o��2���3!-s@_DK�nގI�_ѺZx[>��_-�U��%�2�IZU�/��x�m��4�*��^��(:D��� �̓�D�F��x�<�T���!~�4la�U�R�ȍ �5��m�2e�Q� C��m�K�:ר�ݗ &�h�x��u�-Aei� ��4}T��?тJ�d�s�A�R��{�����)T�O��no^Qt����l��1e�l!&���6��c;U&��[Z�;�z�3�=���� 1/ィ>�Mղ��t�'i������:G���o�ذ�Ug���y9��)){wfݪ���l��������&�p��ְ]P�������\�Җt�GH�	!x���=v��vU���#�-���~����?Y��~<���{ѡ�%9Y����v=�7�Vg5��6*�G��8>,cX�X���h����W(I;3d��i��):���	�I�ۜg\�Q�>&��ݰ�Y]��AUhf����ţt��îӂ������wY=�T�Ak��I%c���y'io��w�I���Z-�Y��-�y�oU�v����6�[a��i!����Jɭҋt�U��Pk�����������;<ئ�:f,` }��")/��9�l�^��ۏ���+oIi��B�wO<��N?�YT�L��$.�]S*B�i7,@��G�H���&L�3�>-K066��:�I{�߉ğ��wY�eV�D��Ҍ�g�^3*���g��g��z��7KX�u�s��OH*!�(��O�VYK�q�Z���I_4c�P�%6���	o����w��{��=Qj��ɫ�76-��k)�]g���0�e��	��{��x�10���"L��.c#Z���$���s\g�g{v	�d���2��?�f{&��=��}�9Ro�l�TaQ��3A��*wK0Sp���:Q�|VZ�\�=(�m���{�dg���m
���_�F�V�uZ�[�v    �-'�xy�Y�;�"
Dj ��S�;��\t'"i�i0b�G�ӄPo��iY��mm?�u7%���R�����}ѳ3��5:؆O4_��r7e�	������0V Z�	\�&
~ ��)=bƛ ��R����^�⨐���A�!{�D7V�g\��p>x��ξ���?�|��������/��%��E�ʊ��AJ?uAB,�&Tt�M����Tߖq�AӺ�"���a4����H2�uV�����jP�+�3������w���yBJj1p��rR"��<{V�fg��qL�M���ͪ�D����H���R6KZ?8�(�u�y S��c�>�&U�Dd�Dz�p�FLm����5i��U-���d���P��)����7����F�d�մ�ȉ��D���f/R�D��=~���OZV��O��hK�N���>�d%��G�TX���jȽ��^s�R�)vB�Ż.��zF̐���"t�v��',s�UV�e�D�ҷ��%X1���<��!�>�>�.ߍae£�A:S3-|=֩�D��1�s�?_A��3�8�=`��+�=S�����,����8|ٯ�^���B��)=��/P���+l�Q`S7հ⃻�J���Թ�٥8۵s��ʔ� �*�3s��J�zC����y��$��9����K�W���ft�rR���4���9�UB�����A�=p=|�l�tycn��=<�Lo���PdA	%6��48�Yz~��6t�H�=���ax���?VI?I���A���� ��Ieq��@�e��MD��!%o��6���
:�q�{�gD�=VJ���owعZװ��?Ւ��-�ڡ�����??t}��*xo=�J���3!�Wp�_��v��zP����⠲
Ș ��Щ��Q��3��1�����n���UBU����E�de �uTeb?�v����:f��O�{�LdR7��a����ė峮TX��j��O����E�}�&�!Ԉd\��l���)���9�,���K���\��B�
9o�ʸ��qLg]����g����[7�3�M�&lW���Θԟ�p����1-J��z�N߄�ʈ:�Vl�,4�=$�o��83x<�,��G�6%��
�&��u&�yv6���et��3g ����Z��_���N�'6���-Z?O������)Mm=YF�c5�����W��L���\I�'z�5^f��
��:?��h�1��y���x�#ꪷx�U���\�gX�rf��M�����yA��$Zs�2�M�%7�R���5f)��1����z�i5_a�夊�AsP�����L�	\bU�]��W������b�eֽ��5Ps��	��X�m�v6'������,��mC�Tk�1y��	����'w��)��~�e���&�G����sc�������I����h[��[;ֺ��&��>����_�Rܭ�K�+�t����:��J�d���I5��}p�'<���g��Q�ĳ��j���"�@���M�����N�d�ir��{�9��G<P*�.vn�8Z>�a�7�șe��̂�y��O���zv�W7��Z `G�!4���(nT0��M�i}��	`�&ph�%��%�-wQ"&�v�d5o��i���2���$��+�l��w���)J�P��4QY"l���7>v�|�B�+p}sre��X�
J���R��ZAޟ#m}$�Q��BD���3�{�v���-�ö��BNOG��JC+h�Q�n�~l��ٲ��S�ïʚ_��b��rU/Dk��UX>.�$b�O��A;�����ϼ�����pj~��/����"�u(�?��y&�3uO�"Ճ�DRi5��7���.�,s��,��)�@�&�.�7��.��}�v�bM�xல+�'2�\�J}�3?��u�p��SM(�9�b��L���-��.�t-�.��\�8^�n�A�C��1���2#�V4�L����no%[[��l;�-�p�5`�'$.�7�0�0g�թ��y�3x���U�w#�� ���ak�2GE������=�#�ޣF^~��%��j��;��Ea*�ke�(6*Zc!T}�B[�Z��J�~ɒ�**�p�6�D%'��ۢ��[N�����j��B3]��ԫ��DE��A�(=�ؚ�E����~Ȧ��q�8����i�]+X̛8�10�*�qz��:�j�i��|��q%0	-���(���h�aC����J���Ұ��DI��CHV��Bb��߶,5*�_Vb���'|*Ѥ���ٕ8LgHk��E����I �fps@��T��bU;f��7�.�e�N	]��50�Gt���y�uk���I��Y�G�$R������`��Ur���'��O*2��1H��3Fl�R���o9veToَ�u�>�e�ڃ�y@�Nx���#���P:@K�aTQ	�d�G�����td]ӵt<�_�[v��IM}��RW'}�����T��l�R���i�DN�IH;�%�|���Gnf�f�͹�2���i��Q5'���աޘ;B��躪��i���ŌM׾�M�[g�.u���ÝUخ�H�ȃi��*7�Az��ܰ�.P�o�g�������o��H͸�Q���$����ߤi�Y���1($��AX��0v+(�x�ྌ��zLU,ː��d~�V�t��2��uaf1!<�;K.�=�C`[b�������c�~-���K�p�b!�.#�d��H��>�������@��Wi[w�[e9J0�o�pzz��KΪA�6˨����������+	)�%�u�Ju?�˪|��.���
�M=���h$P�~ .��:V��i���-�=.��B3�+\���d���9k�H��.]*�z$����6b��׮L�#�_�
Q�n˻_���XMg����z�|�C9X;��3���c����X
�%���c3�h�o)Ωw���z��))��ڶ�o%9/�u!�d����l���;��o�49��[�Eϳx���+��!�U��4W�;]�����}lKY�q�0m��&�h����%�A��}�4uK�(�����8:�f��Z$�Lup׮Ӟpy�SN�6���2���@vQ W2��Xؼ��5�f񏖛͸П��8F��elǝ~י
~�݊�tn!�=�ކm��Pޞ�i���I�N�X���6ƧlV
���6yY7Jn'@*)��	����C;KN��E1��,�/
&��y[����&���C:�9�E��	�q���XIU�|�H�n(V֏�-/]p�^�o��x�&@ӻ�������s��Ϣ)1��/DNl�$�� ��>�#�L|��c�	��f��#n
�(Z�_����g:,�K.�XAI�b���4�w�29ˣ�%Юo_�z�-���>�j�������笀�޳�����V;
�Z4����ܺ���7e(��W�h��6��P�ʞ-�.�L��I}�N�mg����e���6M��3�ڞ���QѠln�9���7.�>���%�8�ߍٮ>�^���)ˮ�9ة(#w
1�Y�`ta���q����G�x-O����Ԑ���T"�jxn�m�5�ގ)T���챚��/�V��,���!���i�����".�y��af��bnCpSiݒ{e�bKqT��FMb���$+R�����?�-�-�ᇹ�sV
<�j2�v�z�ǆ��Y��ze&^�u
E;��LD�
���ۨ�|qUXBE:��� }���F��[�i?[�;�p?��#[w��>5Ue������L��ՄW8s�O��KD��s��	�R�n�X%��̥�?f�WJ �]x��m����{�R��8w^7-_���2iE5j��������)�t�F�\���B�*q�]�I4��W��<ٗ82��̑Ճ}�ѲNhG�6��x�g��(~J�I���a�����:�B�FL:Tq���?dK�
?���$4�c=D����c[�Pz��o�cy�?qx�	v��Q�(��y��������Ȣ�E<��X �2-u���u�՗^�|�ۺ|�&�����:���6 �2w乗�fIH����%�W�    dY4><����,*5���cS����n��<�k��~��$�ĳ��e�5�mZv�Vku֨�v���~x�`���R=(M��k��L�[�<P���$Y	�"�ڊ�Ȋ�/l�~���VD4Q��"�?���9$"S	����͑���ѣ5��ƖiY&�Bɫ�Si�qv�E��vX|�H�ll�6M�����5�j&B�IY������Ԣ^�v�8�g�]��Je��@���C:�	+���u��;�r^TqAz�ϰ".�d��Ғ��K�t��s��;��T�m@5�㧔df�CӁ�0I���pM(�{{L����d�Qڻ?��7°�k�Y{i�[�e�m�9C�lAX5�K�B�T�N⦮�੖-x�.x,�$C2M��$����:c��d���̋/���Z��>{h�=	��镂O��g�A�w���#fq�x�M��?��7ш�E�{@a{��dp�x�/���I� �3��Z����_t��k`u��u��3^�!*�ɩ����gx�#�MKż��-��9�dVL0�g�v�Mmzn�`���8�@0�(3������[�0�����_+fɰ�>留���������b��ԻSw�m(:ۇ~T��)s_�i<���_�Ys�O��8�	�ڳ�<Ӷ����S٘˹\��㦞��SA���t{)1�	�b�mi��o
��z`�Y]��ⶠ����h����d��O��}O<��(��h_gy��l�:�����6p�֛֝�#:�S��3êy������xÇ�5G�@�G?0, �u.��p@�6ɾF��J�oj/��ֱ��l��� �f��D��`Kj�e�2O٬T�}��T)���b�����~,n��T�3�����eu���`��
����٨gq�KEW�^"�p���-!f���ްt��ց$U��&R�FSa�@Nј����T\0��j�]B,b�7y��t |V]M���lh��Г-+����z������A�#W����@�UpTb��{��`��0@9V��6�����<�?eëh��& @����YC��7�����tQ���6�@ǤZ2�S�۫O����߰�m��p-�ܙ�:��v=u��4{.ҭʄ�zw];;�d������blOY��P��\�١�i���3���A���8�v#��>K5�Y$)-�[Y���ED��8�j	kV�@EĴ��w����)@Ob`��3�_�����ȳ^o.E��u�٥/x�(U;���b��6��{oa(�;��<mj��ɸ��}�C��9�Y�@ +;|C�gz-��-e��|,@����|���RYX��Ϋgr��'NB�R�FY�AE	�����Q��5A�m"A۱��J
fOu̚�ș{��|���*o�����Ry~$m�+U��I'�g���˭&}�?nU�޶��}�bw��T��^�U��=���c�B��:������3Q*�h��f+����#�̼N��a���o���� �tj,�l�RM1�Ш�za�BI�򒛲��|̈ɔ�7�+c˂��rfo����>�t���31���z1��HM"R���(�U��,n�&(O�<��3�?��$��gUAi�a�
9yʘ�/j�]V RH���/�hT{��ӎA�͗���hc1�wb��_u�#�������wRE�@`~�aEb�g�X��}�2ĲwH����M��S�����c��4be���ˢڑ���Yv�V�5�$�,�*���(��������
�e\18}��~~�?	n�^�o*i��L��i�k	��E��%d����{I><�d���/,`�[BU����ܰeȺ0U�e��Z0ӻ�ѭ4��-�E\#���ԁ.(WP�C�T�U�����,��5[��8F�ظh� %L\[O�� ����8X�g��$^gy=�^H��n��.����QQ%���߱d�2�\+g�I�I��ĹB,˂����zx0��Մ������,��~ �a��|�u���Rh���fȋ7����:䲠 ���=,����5�
����;�d�8�F>hF�/o��UC˩�Sg镺@��E�	.�?V�}���@h��D�+D~~/a_$ꈀJ���nx��:_#��7����^Օd/ ���B�v�X�WY���U<:mW4z\0]��N�y0������+���T�I��U���,���6�����?�׬�ʂ���#Ox=.R��uV���0������>�.W��|ɿ�gs�WX�І��q�#j��cR:�<�ÿ���'�|�����{�ǪI[��Iso[��N�7WVB7XHhp�w��p�D+E��ؠ�R3УF��ߪl�����sӨ��+."�rj�u��@n^�ܷ�D�#�mʲ:a�>5j�6d.�_ٝ�θ?��n����k����=�eY�S	i]_W�D����mg�34��Ӵ`g?P��������n��p7b��Һф
ɦ?d����f�3Y�dk"3�L�T�k~Ut���JD�q���� ������R�.�8�Ԗ�ҪF��x�����h��[Q��H�I䌅�G��[a2p�U��.y	ř�C?	���:^�����}�fAjΚ�l68��/��"on���7����٬�S�R̒����9���s�=a��)@�b�E�9�ʾN�����P"�=�ޑL�sg4;�����R �Nw8=O���f.T@�x��YX���Y�"�U���4�Ae���|5�7T��r��[�	xl �1�SL.��W*Z>�H��@X�-P�J�v�5��J���o�a�mL�=?;%3z���Ov6���6�4�����H9n��<�_��Y|	\5+�v:Atr�����C���M5�}�漬��\��P�Á
���&�3�cfL���V��	\��+��z�Gn��p _�����Y+����Iw{���8�~��h0)�0t�Z6��44��ź�r��C{�дfM65��zO�(��vJ[k�O.B�B���p�Rv��'pXMkK�7�י�P8F����[r�%@Lɺ2Y���q�7��hNO6t)|��΍�=x� �ID%4<c9>�w9��[��ô�m]�A�]���6OӒE{%�ۼ�G�^������+JX��g�ڏ�v�J!U���'+��"c�|Ĳ�$!gX挺��\T���R�GlEP��%lFR��^?�w��1��Pe�d?��Ǭ_�7=&��Y��H̱��^�X��>N#�6Gް&w�l�� 3�m��O�Q���J��^0U���榞b.�A�����s�e�]UeD�:S�R�ն���jN�i&Ǹ��\���WN񥻠�Wf^��,���=�H8~���eVO�z�`�Np\YV�����wwF��K@a�_豚�&(��_n�����Ì�?Ã��Ϸ
���t�I��p�v7��㓎պp?�R{��jn$+�1�/�Z�I!V"���El�Fu�M݋��n7A��ԥ/�[��L`�;f��8�"������/~�Y{���B��<WZ�?GUR?��KI�+��cq��A����Q=��7HXY:�܋�n�W�w*�jL/�Y@96
n'�a�k�;@��vv�\e���6�Ե|o�+�������ܑ1,���>!�G*D�Yp=�&Bqt�&4gʆ��g&��g���H���	��x��:m0Y-l�]V����O�y�b���^���.���܎\q��Fȍ������;\�Mf@uED��4f���f�k1��.B�7U��T�<	D
k\?��Y���!O��a`k� ��e"c�Bj�+��w?Ez/��'\6���E͔��AJ<��Ē*��'~'|�P%T���5���� 8���e��9 G�	۪��`Z�@}��fu��諦�L��wK۸~F�u���/0�퇘 �ETń��ԥ"����6x@~؋��.�p�+�ʜe�*�͸&��������/z�@'��:���6I����ƾbNDC� w)��Z��*��u$��YV�Q�S�� k#u�jNt��{V"{�G��Mݏe�L�)w6�jI�	�W �+|������\3�)�����m���"k�+J�O�" D�I@����E�T x�B�    7GpT��LK0�_�Y�NL.T�%��������ƢR��@��ϻ%�}� �m,��=T%fwVU�ڄG#͟5|�j�|)�)�\�E\T}��8��R�/�/�@������Ě�T�*h}(��}cB���8�r�p.�)��&��x3)�N4�����]$A�<M�/���O����y[]\�����~�km���we,Y�։��C��M�����g���j���7Yǀ9���:�f�1����g�ȟzbܫ�c]�����R����g�����2n���i��-C��^�+=]�I���#�D�~���M��"�*n�D�q��)Q
����	�'LS�0~Nɿ�d�H,+��ѤY�^בּ
ב	�����q}m�ڗ��r�����BJd��f)~>�
���'���� �	� ����a�9�z���ӷct��Qe�nd����#=a���ϧ-�"��������l�_���4lr�]�.��~�ir�\R��ׇ1ew��I+�ح?�|�)��o�Y�dS0C+��4��ԴsQ���p-���/�h(B/��hg˂	��
��ߞb����v��r_7%��S2Oc�D�ׯ/j�� O���D"h�ה�rlF6���^�~Qӭ�������#i���b�m^[]�V��F6��Ldg�!�Q��2l�|�c)��S����K��莕�iɾ�۵��)M���v&~�n�[��%��kز�R�j[fY_D}%�z ��/%C7����j��FY�D�^��F�����k�TG35fY=#1������u��s��%Ӝ<��
��K��8� ��Nq�a���<',�~�v��m�k?\*�R�G� ��5�M�|���>�OB�䨢��o��ԾBy���D�8��S56OS�'�$.����MS6���T[�Qb֗�n�Y������U�v.�I� ���/�9�e	�|3Xb$����+إ��̓T���[��9��S�&�F��&���B�a�7�oX��n(.�2�����2x}�R�fR�>$�H��DR�y�s/�Uh(����8����?r�N�,3W���<���H���p՜6G��$�z~Vt�H�Ȑ.T��Q�jѩ�����|�9�6�2����j) ��ʯ����85�%�J�a&��Km|���\Pr7&�G���������7��F^�i:*I%0J���a�J��X�,U�����ܮ�
�S���A�*�L��C
��7�[*�(q����J�p�;ӽ���p�%7C�C:�	_B�-��6���i�,*���� ���x�AC�g谡���;��=��T�6��g��6xjD�5Kb^�r��J��[*,��pb�9��gl��?q��K�Wa�n{���t��졩~#ӃDa����"�ꇦ|q����2c�T� @���:��_�G�O���2}�]?t'u��x���r�>[U�-�A~��p�v�Y����M��^)-��T���C���������v���t�{QV�|)��X3:̓�zM�V����W�2an	��(�P"�$�_�-��=$'��;äq���x��N�`�Q�Y5��3��ӻ �Q������?z�U������ֿ�i�����AcR�gʫg�������wBR�C2�a�USn�{�AjѪ���h{�v�q���$��e���G�m��~[�uƃ�V��u���[@A%��EQ��9�M����> �����Q�mZ15�y�;��Օܱ�g#s�e�`s��g�m�g7�z�23�$O�>��O ���@�a�N��lnE�=�l�AѬ��ڰei�&0<�J��
{{�ՉWU���T���K`�aE��ʀ޶��x�#T^���bt@������CfFY���̜�ug���Ʌ>���k�:^R�0�Q��4�2tODs�ǃ��Ԣm��muV��'��uj���g�, �2�[����uU!�m�N�IQN�:?^GE*��5��]{���� �2ӂ4d5��G �t��X�͇u�E�L����$���M$3N�Y���#c�f�*��(6h��qi�Dsڃ�駩�$����slD)���>\����J���Sb'�UnX;У"�_kz=���7䟂��2�-�!�6��Z�.5��x��rjF��A�i�\NY�m�J��'[2��3r�;oX��֝�E#,�����9���xC�=C��*�e0 ����W��r�!���5���Zd��ð���O�*I �f�Z�Ox�]LFi�� +�@���]��5G����Ō�4��xvu�A�A�����X%Y���-�0�=]�m��Q�I����f�Ԟ.Y�����,_��z�&��%9�TP��K/��L��9��
̉�b �&D���1�U��ϗ�t�[���<���B2�Z�o~@c�ZŸ��e�����DZ�S�{���	���D�d�����rJ���,�7�����R��R����8��1�oAw��GPo.F�1��?�7޶*g`AV�]��)3�3=@3+P��Y�Ω�CG�L2���2x�߅�-=B,/�b5�8�ۚ�X/ؐ-����S9P5R���oS� P�?C�O��.X��_����Q]�m8�хĵ4Wt[�4�;������4�1��cT)��"�$�_�O*D�eVsO������P�;���R3��C��-�u��b4�+��%�g�IG& yh�x�ޒX�gi�7�K}��h���d���P��'Nq@���?���$�TO[��j��*	2�b����om���95��dK�n+�F�*�㱦#�jV�u<�@S$�8L�Б�BO�����(���Ģ݊�U�-oW��8q!�E��зVɬ�u�z岴�gr��
��?�.����O�O�����-}_g���g�m���je�q�<��"˿�����&U���^���P�����:?�H(�dM=�]N��f�7�������E��|����}:Na����ˀ��(UK�������z[)�x��G�  _6�_2	,�-�AGv{�m?v�Ϝ
�=]�95�-�n>M��"F{�xc�q�N�"5�֣h�ϾRL����}��RBVS{�.
��E��c�~b]V��j�f�oޙ��Nl��2Ag>.�@ⱋh�tU��kU�&�3�K�޷���=��=6M#M*��gr_���'o+��vbm�zeT�,�i>�S+�����ʱ+� ���cE��l�I�.��;a��azè^:�3l��ѳ͛�t\?�(��3B�x�Jz���/~>�,���{��H��Y��t�(��B���A!J`e�P2^������$ܛ�n/v�)�gg�f�S����;�T�uZ�\�0���z�/� ���+�ߜܶAq�Sf�P���p2f�,��˴b9[*{�,�{c�j�Ҵ�d���z�ϊ��偨��.��u�h@�Q�J%��
���*��?5��پ���������|�+ )A���*@��S��>�-�2.Xsi�s�k�t��(5�����u���S�ֳ����cѥ�@�u߹!p�*E�`�>,+<��⫾��;�-�$'�Y��`�a2+0���U�g���d�y�u��	mӬ.BJ;�T��C�5�Nx]�TiP���3d=ú5Ы�������GԿ+�R����Zg1��Z�zw�)���y��$.�٢�n�� ��q��i�۽�d�I��/���Ӏ��D�Db�U[����r���_�^���O�Z��'Y�c�T�&�E6�'�Mh�'1:�ZVx�;^���1��i������cJ.X��E���n�C��ks�j����
��Wvf�<�Y��($Uz��l����O�����aR�;,�e2N�Ă �%��l��?���R��~X��da}�T�S��ϩCY���s�l�y2f��qQS�<X��4�Y�T���V}`C� ��fJ�w��Z�R^�����=���-s��3{x��+�	w����?���%֤˲Nc��/��_�Hm����cKi�{�)sC�=h�n���Yd$N��@��:��ȸ    �V5 ��NW,�0�|�{������� �]D=��~��V�_��Y�̠�I�e�!��5����h��F�.�˾���p�k�E֍^4�i��2�3�F�+Pv�z�)���s�o�I���4��g��*K�^���J �w����[ga�Q�,�!�t��)pi.R��[���7q�Ӎpeޓ�h�_O����#�	n,,��HP���QN�T��}i��u�����4�j�	xC��QB�ӥ�Qs���#!�yp%����d��V^����>}'-)���=ղ3��i{����/���c��W���|��~�%�1m?K�2��g��`%S��ο��4�П�19���dD�����o�O���O���<��I�d�Ȳ�)5/�ޜ(΢"��aP�U�@۹���zW���]���aJ���A��q'����+e��_��2�k6�v[}'�h�7��C��e��=�����?˯����-��DF�C��L>X���OaoÛ�a{����e`��"R�Uc��!�ŕNw��d{3��x!߷�3_�M��S�b+;p}E�O�m���<�-�)m�ƻ/�9�P�Ym�>s�z�"�U+�PT�h�a��A~d^�*�a*�Y����.�M��a���_��m�%�����\Ke��2�^��X�Wv����*sӏ 6or���E�2w�b�pb�.�"@C�UՎФ�1�Ye����C�]�f��kt;h�2�M�}e�j�P���E�l�x~� ��W.$�>_?D$�����~��ð̪���eN�_0���m�/����C�y�@E������M291'ah��O����֩=��3��gV�Oڤ���U�SaC��gi(:y��=����#��'�����-�����ͤ���v�~E�~�}����)VjX�f���`K�'�����*�_Η�.���]������Kc��Oߺ�����nP۝��{��޸@ûm3�xU;B�H$����H�~����vj���
�@�Z�cS䊍�[q$!�!C$��p��o�:5���il�F��aT��#W���h
�`TK�C3e�^�H���˧_N�.l��^�i�I�|eQ��^1_��dmJ_3Ӳ܍=��������r~��&�1
ךuJ�u����-��*�)K�(���/�����H�烬x���í���&�瀇�&�z��E�q��ˮWY���P�P!��c~���1iVp��85�����H�T��m��6W�ؽ/�~����Gm�LZ}̰ʺV�t��Wϰv��mA�:�0#�t��g{��8
VA��Z;���6C����=Y0�_�}0�Û����׋u>%����b���ہQ>��g��- ܱٚ�r۵Lt-Sb��l 2ZH��
�e'�-8Ob���zt�:��,�����m���&p8ح �g��l�5*F<�!��.	�Ġ���O�ܸ��X6yu�Rd�Q��n5M!�OxZg
�ꖾ_�+%��aA�Z�3�Oɜ�t�`j��2IS����o`����6Q�E�r����z?�"�t�z5� \��L��OvLӪ�g�����ŕ��`�{�ĝ��B�w'W}�Dª���4�'���!}�:j.և)+��t�S��x����� Ll�6�`<գ�0m��m�gx	u����r��T���&�p��c@3.��DtY,u�Gk���eJQ㒵�����簡N��;��Q}��g<��m�uZK{6AdCÇ�j6���<6��#f}���L'U��!��Bh�R��L�G���1�Ô�-���gDtE˼�k�� NY��CN�K�� a�˩����)e�����o��ƆX�5���(~}s������.�)�[�]�m殲�������6DJ��@��^^T�C�r��	�lǋ�_uP��@�p_,A�s�EO�T��b+��㦮r�������tN���q�r]U1��֑Q/̡~-��2ݵ����Zi~?�*T^������Su	pp-[�]���f�C�C28�5[}4P^~^3:����g�l����:iM�P���햪lԑ��/�U��kap^����x��\sP���
�{A�v�0X�V5����/a�Mh�tg[}���>�Z����?�62�DܖV�Ree������G����-uR� 5;��̵���Y�~���ȏ�-�˙���@7KJ}h��4�cs�e���Q_b����R*@h@�h��$߃i�^���Va�R��Ƴ��10�O�M��?&N�lNv��"�n�\��XY��tl�n>U���cm6��L;:۩�Vu���U��y��u�P{��pM/��d/��&hS���O�[�a�U�5�[ռܫ`D�7�S%������kӳ��u'7?$r�4q���*+J��q z��i����&c�+_X*��o��Bi �פ���X*e8G1��f��x�ق��(%�I�T
v\f�����6����� ���[Tc�(�nQ�TGbA���7��q�۪f6f������}���-K,U��F��v�j[<�#����d�x�f�4����mP���m��P�.G��]�H�,D�2ֺ6�z�՘�z�q��K�ص�����2fx8-�����JٛEW��<;���:�k]&yA����(���5�����bn=u��gT����T"��IԮ{������3<0�k�F���Df��6*l#���ҩ�t�8��O�f�l������#�&%�����-# !��|_��'r-o��OiI$I�0�����S�4�P�|�-U����L��q�\[���C�p��j���5g�d��y��ݸ��_l�-T#�rn�o* '���p�7��{�m�qU�>%��g@F)e����a�ܲ4�5u�q�z�}���E?LC?�yUj ��������a�"_��CuQ���o��~�gk�6CJ�EY��Ė8v'�V�ޖn�ڔe�n(=�{X\��Gť�I��9�^���Ԛ�n{��=�j�8NW�Z�X߈��a��Y�X�F�i��DZ�����6?����oj�í�MZ���t�{��:�?Y��l�|��5�;�ƥH�2��Ů�.Z*��g�]�/�&�E���:�*hKx����$�)����Ut_?�*�D�6D����۷��F�Zih[l5��\C��ȉ=Ew�`OfG�vJcH��=7�H�1bYaFU�\�9��?���W�T4P��GU@������q"���)��#�+��
��Ҙ%o�Zo�I���0�'`p-ߚ�3mʨD�3�y*�4�������א�A<�
�/�������LXR�qv��*P�~H�xؿ:MId�����lr��.�y-+��R�ʰp�Ny�<?�Ox�R�'�\Uxu��2���gFnq2�����Ԟ���`�i�#������4ͅ�s~ځUN��Y9�/��C��[���T���c���\��G�e�Dir���+%�a�L����H��E�=���]�M����%�"���k'��Q̢2�q�"���r�Q�*���Ĭ����fR��R�=���d�z��2-�xa�<u�R�~�L`���;��ӟ�Vo���pJ��]pb�O��q��~�',���͎h�<����FB�����okRQ��<��"}t3����-�7��|ާ��	D&�:�3oR5��r/�4.�~��}��-ů�����^KԂ+4�6|P�!1����PmFC*���1��=���'@޺h񭷣����s?���;�1�=|�UJ�u����[" �`�bP�o�!f���+/����-�mu�=�s�¶�ئ�'�g>�H�nui�-�����Keg�&����Lq���`��u�S�A2�m P{b^X�O�Ɗ��tv;dg�^�W_9U8D�� �=����1�6/J��A��o�պ6��b�m���2u6
kY����l�z��$��^�
Vʵ�\�^���F�\��	n����qc������F5�R�W�^�i*��~x�x��:CM�Op��/��+�[@��;~�!?b�B���� i �^�0�n�9lD�H�@�k�9�UQT�K�O~.�5�.j������WQ�����Of�����     ��X���]!�Oj���$�u�S�ݖ�[r�:z�)\�K�Ͻ��Y���u,Ju�g˖Jre3�\`fm;�>�4D���I�<����wR�ԙ!�Ȇ�E���R㵏�6T>F����v+6p���6�"������Z�m��7j��ka-mF7Y���ϾG<ô8,��B�G��Γ+6*�:�_^B�V3��Fڹt�ֈ�N�Ĝ#����YV(�]�IԔ�vZ"R\�,s�2���/��ɿ?!1\�y�r_�S�#NA����Ei�u��oi�t�,A����T�:�m�b��4�SUH�r�97�� ��SX-�Đ]�ޮ��`kA�U:山viZ�{�\��z�ه~��L1���,%�
��ۦnA��4�6L�V�x2�;d�����+A�PM��{�X�͵>�T��޳Bm�q_h�4 �C6�VɭD�DBP����͕���i����9�C]���[��5�Ʊ�A�C�P�Eaթ@Gʱȳ>F���*k�䴁����6_X����y��0ШZ
67w���gmP�^�W��ݺ�Ԕdqv��喟�y% ��.���ګm�?K2t�瞿T�����&��nTŊe{��^�P�z�&���$�֭p77|�6�HC���F�ͮV3���2"ʈ�mE�N~_����"��W����;e�A�p�[�3w� �?��̈�0�SA~�ߛ]��i-.��5h���c��¸Vgb)}���"4�y���8N�����H���!6�i�|}���F}�g�+qx/� ��\��Ơ�/�H-̾W5�4~�)T�_KXC|���P7�x�#֭@���N=@tP?H�֎�ėP�P��q��}�����_m\�g|�*�Gv_��]�l���/@"���{Ψ�j�jЅ����4��t�Z�[�{�o�6/
7����T�"��'�A��X�GLۃ*�x��b��f��a���G7�m��oҥ��<��m/���+�9�����v"j�c*���.*Lܯ*��/���$�!7$˗="L����t2�a?$d��9|�ʨտ�N�z���!�Sny�ۖC�U��Uz?�)�Ȃ\�NE�m�D�eZ�]�^��4�>�}��A��Z��}9�����т%��g�{ �r�'���gYl6B�=�HF!��HA�4&�#U�xNK�~K�2.��aV�	�0뱈if+���m(�S�kQ���
��F�یr�JO���7�g�癘�2Y�,5�Z#�M�lj�4��:#J��_�����3ǁp�Qu��G��$fP���X��@+�8MS,�F��'��t���}a��7<��Q�_�eֿ�x֗�=�ݧ���Sb�x�)��zs�Q�K,0����Ӊ���in҆sx���|������+!U��ZLd�A�o%bx�jSS1����EXS�>����$��8���yYf[��V�1۲	�b�f��XB3��@7��ŏ�f-NF�
��}���>�k�y�q�1+q��x���C�/Uvu�t����Q�������P��_��h��G��x(�ƫ)�"b����$%;���U��5��(wlN�nv/���+�7^謌�ĻB�O/�¦�O ��\�q�)0yu6�DH��{i`�n���U��R��Yy�u݈e�wF�
bu�@���&���"hbd<?;��	��C�YY�ǲ�`��B��@E��"��N�L����<^�'S��p�rV�-rd�	�@���t��2U-�B>��O7eW���ֿ�Lc�}"� 8�`$k��`6�f�^Y�E� "��g�Ԋ�q����+�:�]TN�x%�q��mׯ-y.����Դa������E��,>:�� +)��}�g8�?^k���i�踼�����9���Sz[�L�^䞋�{���od%����:=u�e����h��
#��n;�QD�Y���bI]�c*/�����O5�	��.'m��ȓ�6�6���FN)��\�:�r�O5�S�H}ٵ�78k��G�j�Q�0ئBK�U+b\�.��VP�;u�9I��Y��`T����x�}]?�)������'u����&�,[)�N���oaH��٘X�7�a����H��$��:�����g���g-������?0U�zWP�*��>+X��2�BB3)~ԆG~�TS�m��e���q�t��i �w��j&�nJ�Me��������T�e���E�J��Ni�k�������;5���)k����#���M%�w�pr�]_¾m�YR^���X'F��q
�Eq^�ֽ�I۰�`r��=�%��R�`�5�$������:�#����~_ٚ�K�R��U"+A���d i34[��~6"���.�_j_2oo���t�ކ��-c�<`*|�c������	�X+�
O�s��*`zl�Tǉ�(���F�!��ón��Z������CW�V�eE�)�Ɏt(��%,뽡����/��J�A	%j�^� $�	}��ŕ�~v=��s�9����1����R͘�	%�v^"�6�c���.WX'1���/Z�H�o��31�O�_[����!�!���u9��˼<1	����E5u�J���#.�j5,�ekNB<��N0���
��˭@�g�Z�Ҟ�SL��Q`U�(�i��k�TzvS�0ТL~RI/軪�n?��>�S�;!��K�ɺyդ�Ȭ=	�Qϼ��X��|	�B� �r<���W/���cC�#8���Snj��������p�j=K�si1��HY�2y�n�x8Jo�+�n�g4����93�|~2�z�e�-�E�s�T��(�^IoP˄���X�$P�F��C�f[�`[���0!R�����"e~�n�D}�o�ˇl5ӝ�T������È;&<�!����2���j	A�@�����ӫd��ZZ�V=3�^�њ�!�����5��ۀSs����Kc-�(ô���� ��v�`��{Y�W.8pA������i�G' <-�.��?z~���6�L�gPX�"t�J��h�3�ŻO���+�*3S��kuJ��m�ذ�ºE%^�[	Ս�pz��K%p��F3կ5�h�S�>�n�j[Լz�gB�O���ϩZQG��#u�gȹ�N�������P�˞\�S���(�Φ��x��8yz�B�	Rf��2o��i%ѷ�����s�E��ڞsۍ�N#y�{�;dmJ~�VZ����v������Y�!k"��9�<�����e��MۃTČ�뿴cֈ�ɥ�k�{|!�4}#�D�谺x�y�<�4�����t�"QvE��)CKfYt��Ҥn{��P�|ٌ��|$�|��*��֧�����h���C��6I͟�(c���$n�(dS�V/�>���2ШL�Y���k��1�Y�UP�;�֬�~��M/���5T���P��R\,@ݓ��%�!�M��/5P�w��\��<y�|�ؖ5�%��M9�i�:sA��d{�l�9|f6�!�x�ez���`U���G�W������7T�p/$&��W��l4]�|_$�aL�L���ʳ(= �����&�O�T��YL��� {��e�j����k�ǴQ���_=��i|R� 5��c� ���q�1�Y��]��13����ny��U���K�����@�3ؖ@<BM��������%��,[�W?b��C%'%ä��lʤ�Z�c�?�/�84�֡>��9���\�݁�f�	���S��l�(�q�L��+ٌ����g�T˗��KA��d�v�K�:���.;�U�pI|�>��<,I6qv6�
o��E��T^|��Հ����ˎ���}15�_OuK��M�8_��oĲ$�t���q�B�^��(S��׾�pR��]��}$s��^k1����¿�]�!����zW�u�����-�铞V��ҼE�E ���s�����-rf^BU�,s���ʩ Ś���m]o���)Ex`ڿ�c$�Cl;���@�O�ӹ�v��]���{��V5��1�0se��7R5���/0���*�қ��wMa��+U7�^Iq�=����� :~�{Biɬ5��.\���4�Y���gf��,w�"�    ��hءM2aC���	�{�����b��Q�A��}Q�x��Ei��Ãe�����f�?���QnG,��&�?m����؉���[L~s9A���!}�K�uݽ}ڲ�2��S>P��ٳl��2M�����{с5}�J &�)�]H��|�>R4p����<@���ueI��J�*} ~;p����o`��<��]�I�xxl@��wv`���kFһ>w���=(��*�!N�F���=)|n��C�ǟ�v|.�?�Y�l�t��FD[�?�L���dP$��,G~)F��lQ�����2�aZB{���]��*�M���BڡiŘ�NT��cfFL����r��Y�Q�1iG�q�����y��a������S������YAg�UX>T=P?3;���4˝��\��� �[F˔����!8�a
��}�(�:�0�@�w�0�J5G,֯<8�O��^]<˦�d��0����x�0u�k�rU!	�I�6(���P3��Y3|6D��]��1��Z�Sw��|D��������^���ҔBc̀>���@��QA��&?�f�Sfa0�>z�}�DD�j���Sici;Ds��?%����vtɉ��p����R�8[�R�ɘLg�Uǩȍ%jM�JK[y���O�6pc��,��ҩ[�:��{�f�P�~`�?���S�#�w��(1�S�W�oA!��(�pY��`�S���5���-��!`�����!$��z��1�*VzBɂF[Vyz<�Ů��1�����3�啠wq�aqP������4���8�̲4�S�KL�5Y�DP �Z��7�����soS$0�����л���'M��;܎�����A�켁�0eW\�X|D�U�'>�������X����VY)*�=�*/�#U��~cQ�S�y�=�f�qlN�.���v����	GC���N��;�>��s>YJS�ɣE����Se�/�%��v�6N��}`�(!C_����{7L����XPaB�3�!vCq8P)��b�aA���+fJ(8{�T�(��|l�N0�Y���7�����#�˭��8H�]��Q��T3wT�	�\��b
������m��X�{�%2�#'��©�����.K�x���	򼶄C��ReA����;��%��|
��_��c��Y�m$[�Y	)��z>,#F�%�.~z�8��Z�fR�PA�V%��F�5��>�hׄd����W�
{��}���]<��;�!+&�,o�;��M�Q�8��P���?<^���>,s�@�����η ��1la�`��$�����*5 �-���T������LʱU�����߂"�n%<V=X�f]Fh�s�}-џf8�l�Xs���k9�-Y�#� ��e�znT)���W.�%�ہ�B:�%G�?�`O6������p�f�Q}�:E��V��d��u=w��=B�P�;u�2?	��Kp�V���sq ���^{�v�;�Լs���7�{��d[��l��Y�܌qK%�囱�잃�.U�4��X�I����S)G�U��:쏑���[�
���)�a�f��ҋ��܊��#��uۡP�m��c�����@��yP�3�4�� ��R��3���	��Pn��I ��Z��_��[�ꏋ�y��Ѥ�����@yoYn�;WK+$C)�f�����^���{]�cw��Ŵ�,���+�[bI�y�T��+�"�;'�#*��j����y����܌ V�?���qX���ѡI���!s�3��7�/���7�#b�'��,���"`_2tCr�������^����tq���&���#�*	7J�t�dR��V�]Ө6I����)���Y�<%cF���J�h��0��TP щ��"��a�R�K�S��j�auʻ���ּ�h{�.hZ��$��_��W���*���XI�����T��E�Kg�.U_�R�sAǾ.���{��MaS5�iBC��G�A��o�^�tI��2�(���ԇ����.��z覗��h��*:G��g��%�.���ǩ's���k�j:@�%�Vm����&N�m�UEqw��Y@���_{���w�����=����
�`c[O����f�8����σ�����KFi�p݌�lr2��c����B,\6$�Se��r�ݡ� �`B��$�k'��޹�J�bbd�pdY4��(l�Qp1�
쮆�b<JW����� ���Ds����p�ʐ�c�ơ���n�T��ʈ!��3.�fF��zFF܌�4�l>NYB�|C���Q�&���e����{�6�Y��]��.C,���h`��,�pg`�R�.0oQ)�\?�N�QF4yc�FL�hn3����wb��.��z���/*����i�-;���?�P�d�M�-��ĭ�@��!���;���8�:V��Qy8��������&8u�[0�~�,����tzw��y\��`��9pxd�=]��%L���I" T���w���2<��%e���-LR�ƫ����a�U@2����r���?q*�VZ�b�w��Xõ"�6H��
��U��}�廢bh�F�n:�!%';l���$�h́��&p�����^�"�b!�+kHH��e�s��m����o[���K��`K��3d4�������m�F����$�Y�wk�P|���jc`������r��Z�������=ͽ�4���G�R�� ��g)�팡��I$K��#���Qo�"J�;��]���	4M�)���g��t�̏��0uU�qL�9�ji��	��F��z�p�$�_ �ջ���5�H{��-��-w��O/�t'���{��T�J�S���ZZ�E���˪��jMԳ�ۖ�r�W31U���miLx@�]?�d�R`�,⑱��	{wx�#� �/�� ��5�GO�u�1`貆��5�`ţ�|%�ͱ!���mY/R��]E�N]���?��C�c<˔��S��t��i�qݎ�_��&X�"�ͻ�T� �}Ā�[�7!�6`
!Dw ������{��������sBŢ�1�hR����<�"Q�/q�8���QyC]��ޯߒr ����G� Ǐ��z!Q^�&T��z�L��Y�����.<,t�E�IU)-U�:�͎܄Ӕ��zDy<��*�P=�]6����\��R�q�8�)��{:NP�bq�ӈ�׺�Νv�D�jy�7ܲ5Y,�,�G��l��`,�ݟ�������,e�W%�Y�S�u,J=8�
AD���l��Ի�Q�`��}�̯A��|�p�{�EF�uX>��@�2ۏ3D�qI��qT��R~��RR�����H�H���2��?���RI�t�fT�P���+��lX��x�n���3c^U��~-�wH�ޚ"��<xvf��� {轓�a�s�V �Q�u�ߣY��� �)O��Vy�?�	:�5�X�˫}:�',�D�ք�R�#!��iAt� s�̠�(�ۖtTq�ér���6�Rʞ�M������*��V�v�b�/���+��/1,�|�]�m��ay�bgI- xE�n�^��%6�[�d�2��&0�*�}�����L�F��]W��6�����BLn��W�0��/Q�Al�6� ����J�����=����Q��P�8zE8���wB�}m:8� �[�Zz�چ��r���!���\��=�;������i�v�G�~Ɂ���<�8v��7�N��Y;�P�+��e��� Mqp�����6�E�u��2��m���|hz۷"%���B0�g ��2P�X�"})wO���{xN��A֜�1�w��2s'C{���a���jl��1`g&\� F?��.nZ���}c�6M|�A���	R����N)s� �NmTk�&�+��4�::HJ������^�)t��R� �0�~]���؃6j��L����^
��e2��,�n�S�d��H1Y�W�@8D���(F�x��#1_���#F=�j�jѠ�&/;,�tO���;�@!�y\h�G	��Z�)���Xdu�n��40��'���MQ�o�֞<*1�*J*&�2l[����    ��5��-G����StwVP�;�5K>�Ox��-ۢ;������>�ǓQķCi�P3M<z�Ĵ'|�HqҌ�Y��/t3w%�ܔ��'�UF��������ڸ�IrI�if\��a��i�q7F��ڣ�"�BYd˄���n�a�*�Y��T�cTeQ�|��7_"#k�6�4ws7��,]��J[�~���W��3_H�PS+���h�as6�u����ql�
�uX��B�����V����;ܵr�\�q�L�9�=�Mx���vS�N�W��[ݟ��&�;��0n�ح�N�ƞ�L;<��|�z>��ݧ�W���5f��r\�(��@y�5�G�u�Jt#�޼���� ���p#���=����`D�R��=��x�%�p �n��ZY7��"��i��%^�J�(jj�ҝ��A=����P!	,�]e;y1�g��|G������7�i|�+���_��#��R���`�37�*��$%�T��
��a|)ۘA��
��ߏ�n
��p������_Eʼ��4����<=���^W���i����y\�|�s7��3���R�]͉kG��iz�����t��z!��"6�-]��Q�R�> �PHG��܅�L��xU� lCS��d�B����6�@Ke�n>�i./�FKD�GP.h$U>��%��|��?!�d�l���O�±�bGd���%]��LA����xIt�;C1���b%�EJS#܆\�,Ǟ���0
�t�R���&K?T}Y��7}&2�8`���M펭�2b��!{�Ǎ�G�U��Lh���L�(��Y;3\UW#�yÜ(� F0�&rX������o��S<
%�Nd�Z��B���Gŷ�M�
z�iD�A�����{�ɓ���G\s���Vs=|]��q1���>d�l�X�=-�":�Pϊ����V�ҭ����\�Z:M�)����%���8�K'������ _K�a[�r��R$�\s��`�c!�?[C�`g�)Ѩ5(f	�*��sS�V��>�
>��}���3v�띆�^��Vfr�w�k��Q)Iad^i�}�:�*��2���>Y҆a��qH�|ֺ뚇��z�R^�7���"�Ԕ�ݜpz>����:X�&!�w��C� ��oɲ��',��z�.u-���#��-w��+�,�+�b��6�6�rNĠĮ=��p	d2����2E���nG̚�A����%����?<��C�=
U��߷����;wy+c�I�Rc���[⚋!�z>mq`�q9K���	���V��Ͽ��l��/�.����ꪔW�ڣ2�b& �is�#6̛j6��a�C%/�͚\�4E	抉�z�7n�`vT�青�� ;�&�FaX�OV�d3I��#��}ϧ	�$�1)��_3F���5���+ph���1M���F��T=~w8�4�Q�6�Ȃ�ȗED���T��f��wr�غb�.��Ao��9u�q9��΃DB�<��8�>�Z��8n�i���iRo�Aej�y$%<�L[�C
�R�)����q�锏��em���#�\ռ8�]�8��>8�"� eC�������	G6���&g�V ���ej�aՇy��IN���.�_�7�����3r���B�8&<����Ͽ%����2	�
��S~u�� �s�J��p��oC
�C��?c9�t�8^��{���+;s�]�?ǊYP��M����� c��fa�����}�fU��~��~ET0wlU�>�����>�Ƿ�i�т��	Je�J�=w��Rt��GZ�j���G�ȔԂ�AKc��T��>bs}+\¶���ލ}���8xaB6��Lryn�
��h�ߺK����,ų$���fnV���+��s�F'@jҘB�߂�(�f�SruCp�!0�/�jC���c��6Y�|b�"����vch�|�U� ah~<8KGj�yWc_r��QAJ7R#d�^�dl{���6���^�(qd!�l%�тbجa�����V��\]wh^���:��n���E�'�|���A\���_ͪ���&S�;�+Y���>����RM�E����L¢a���T�_v9���Z6�Y��cC���p4���܄��Ȧ��:YT}�@$5�ɌnI�H�i1��.ʴ&�q���4�H��
w�2	��'!�[��َm��1�^�|��n4�m_��4��T��P��y��3B8b�����i���ژb$(�}M�����*�S�l�?f"T��N{��\��-� �C�����3�/>B�[���_r��i?3�q�~F�t7^�IN������8
-�+��fS@���(���dk:��\��^�p Kv3K��y�(o�,x�nX"㾕AvC�0�w��0�U���CGO��Kj��6y�L͊�r|[RhݰgH�9Y�-�p�u�L\���jC�&A�����;	7%\��r��c�l��k���R	i������4ꢘ	a��3�TG�򭰩w�k�7�ם����j�&
��c��:c\6�9��ǣ����Dl�E�h���D���)8�]�;W�j��m�i|�8{�)���C���U�	�磐��5B�,Y&F�& �#d���cC���f���j.��O�p�f���Tdd6�����'��¹'�1$��+ꏉ�+,$x>������5���t�xxT���f�:-��2���f���]p�K�9�S(�=]�vg_�r[`I��c�h�ᱲ��d�^�V$�-F]V� q��,]ڭZ`��ԛ����ACR��gP�eEA�煰���،�y-�G't+��+R֫^�]+�1is��["��_�r^�j�!U�G����w�>㾆6��5Gȣ��\�r�9�����)��7���� n%	�2C8t�Ꙧ�y
5��t?�K�5aLY�k���G���8���tHu5}�b3]5�G{n_�$)�J�|�=H�f�8$��3����x�7ш' ����Ɯ�'�@�a�/�őK�&���p?�d
ҽ6w�vV�
C�$�8`[�mb3���ao�eK9"�i߾�ԟ�ՖsІ��&�u��>nt�Ǻq�斺�A���\P�� [ouq+<�y�O��c�
�e⼂�(�}\�k�GB~�ؽ�
Ṏ���x�@Y���	�����xe<N�:�G�c���G���/5�y��+披��;��i)�k��d�^=�ּ�n̬R_l�(^U�0�ۇ���9��Б��c��~����3�.��� ob^.�Vhք֭�Θ����̨->|�ڟ�WN��ץ�!'>1B��2�]�=�R�①�-6`~���KjC��BB�$㜮���⩪�p�!����o>�!�Q��%�|J�O6s��3F���ot4Xt[�q�������D�~��k"���(����Ή�\4��
5; �b"��gƇ�G��o�d�@�Ä�&��?�1Y2|Y�В���h�ty[�z��;�">��ھ߀��l��ִ�~ݬ*	<?#�A�u����V�d�&4gV��}T[V�|���̀�ݦ�oS��1�ƔBܟsG�c����;m�"F��A�A��>�AyE�4 �UH�2	B��(�!�2sx�FΞz��"���W����+�ϙ�Y�oG쀉��hu}>;�����c@0Kn�K���e�*�½Q��x�a��Ai�R���C�
��5t}5��4��D3 n��t�w�x���~�y�c���06�����q���I�\�M�f���=�a}�"s��r�{X���9�f�H������Ll̫C�ӱ����~�A:�Ϭ�ίUt��IBa�:ocf.Y~E�n��>g]dώ�4u�,�W�<_�r��BQ�09���~1� o�?O��s&Y�i���1�E������cPFj����ٙ	l/fN�1�<�*�j���8E�WL�����vŅYC�bc�q�� �r�e��b���#�=
�9��?Gb�U�O;櫗dmݴ�a�@TV��Z�I�9�R�Wٔ&���_zY��8i"6s�_��"V���a��r�ǽ>8,g�^Y    eI|wb{��= U��U۹c,��IVH"p:vi��C�t�i�3Rfɋc:��e�౽�ԍ�^|it�m��.d"�Ӛ:w�4DeL*U���"m�<�A憏���'v�o�O�8�N�~��|��Kfj3 ^}�G`��V�*�ZkHc�S��u�[.�,L�_���ٺ���0d�?��S@�n��X���6f���)[<���
�Աd7g/����R�'�I��ҝB�2G�VW]P�`��/\���e혹 &*�*�6E�!�Hk��Ή���g��W����;�2�C�pw��3`��!<f�(��̊'K:Mb�0�ʿ�vQ�a8���v���%B�����ׯuG���hoGl�l02	E��M� k2d��<a�N�f�SNT���>��x�D&I��:�W�$+v��V�@���/5��n��x�F�;A�k���7ܟ�b�\a�*���ϧ��'fY��=���.oZ�&G��LiFj>���H��kQ�N��*����j�j>�,6��ߨ�U�@Ni�$2J�C��vf���<h���NpH���0OSV(8�o]�M,�dn��7���o���dI䘪��z7�@��K7�Gzk�
��W_���x��~���xzvk�N� N�ښ~����86Y,n%�75{N.��������C3��5���[)I�x)��ŝ�~wN�YC���g���r@6��i��G�Ԇa�56^cU��5�2 B^������켑��ߚr��$r��~J+�j�"ف-���$��/9Fs5Sh~�|��k����#��d/3h;�v`8ހ��ÄL�r}�_�s�1�4P=ca̟��J�����$��fb@���9��76��s�s+Rp�w�J�>�^lܜ�v7� 5����#�;���B��`1�u)E�)s�4���A���bp��PE�+�L$ �N�?�T	MI{tq�
\?E�h;��yp<t�K&j���qͤ�J5�W���H`9%����05a�mK	�����C�_�f/�'�3��Z�ڬ��qY��@�(�\[kzK���2�����!��%����Fcl���c%�^�tn�\��uh��*T, �!��g.[���Jt��2iD��m6��������f�c���J>��-k�&AKJݙ�����O�B+�_O�tV����b��>������M�j��J�[�ӧ�YSFgەf}��,-0�a��#�N�c��Y@å��?
��l�#��Z`N������@E5�	�n �@�O�G{d�Ag��5��CW�Qϧ����Eo�O�����-�����E�+U�p옞��ڨ�~�SX�h�BP|mt��\�x��d�0� �V�:{�ϗ3���_�y�b��h��E"8�`��k�z$�h;��W�pI׻��I�o�I/�ӯ�i"=�#��ɺ�5�����'o�}eC7dfMY�15N�ڍ��儢04��'�)��>�Ҷ��T����D ��rvTx~��\��5t]P��sv�� �*�������N���͵i��eҷ�ٌ� Ѷ4T��w�� �x�pA^!���5� �&�Y�7U�������^��+�aD��s!�O����� ���b`��Ѐ���X �(11�����%:t�,n<J����!�g�av�SnK���Ab
�'� 	�@���)qjK�%r�/��&����?0�h:�ΦU�div�~><�i�x���-����7#�Ǉ�h��+B��"�Rg#���=��b��Q�N�l��k!��C���G	�#����ޣ����{6�כ���m�d���������aW��}_N#o��-�@��Kc?��r��X�iY(N�@�`�����#�r��_�9#a�t��bu^*MDW6S����A#I��rd�4%�(�����o�Z7�ѭO/�G�"\=���m}�=!�e���~ʑ��I^�W����YS2�%-9c��s�qW��[L�0�����R�[]C�n{���L$;b��v��\�sܯ@���D��iL��_^\�z��1}��.�N�23x�<�����67K'��*��C@\@3n_#S_�B����;�r����NN�͙�б��W�p� �����J|it�l��al�����ɨ��F�!�ⲑ$�cǌ�h�=��U���a�6 ��YW�w 5I7B������i���G��m]�j��'�]m��ݼCMฅ��X�[O~�y� �<G�����ZEć��{�zm��P�(�~4�1�����&y&��Py�r�Xr�p/� gn�F�@L���z��yo�b��rj�>��*�@��H���������Cs�-+�~v�\ԛ}�4Ň��I��/���Yү8�g�̺>rD�g\�)�<��<	�u��������l����4{�����T<OU�O�)���rL*%t$[�[Y�n�eKR��K�oґ3�W��TSC��^?[�>yD�ZBX�󂊮?�4:\�.��}�{�4#�Jk3���.�v�%����K3H�ϵy���-ʊǚ?��nOA,�J��EO%�|w_M��0r���k��4���6#��KiL�e��"D�%ք1��� xCoR�h!b�����l�)V�k��X,��|G�[5U�d/��(v���7�����|�Ƽ��!�2ӧ-��讖��6��T�C2$4U�:=H�|�PO��7�k�����~����ͶH~E���_��Z��ig��~�m֙ڼ,�~}`�k6D��L��W�6:�O��]��FǷԋ��� &��'�WɊ����H�����0�MW%���,��a֍�
�À���"� ��]D͛���>Qk9�DCM�x�mc��*5KP��.��^�0�˗gD�R�x[Ǭ*مC�eɎ�`v)���щ��ͭP�J3cGk%��UIfd�@��������"�-o��_�5~�~iKT��l AzZ������K1�I ��W�@U}N�1�t�־7��>�Ꝼ�~�鮛 ����wi���]|s̛��M�a��VG�;Д{���%�ȹ-P���b���0|�� =�(cG+^�����n��5�ERDٝ4T3�S5�EkH�|߂��)��8l�����`���M�6�!O�R�$��������P��_;�P�m��W�f#�����'��8���Nڞ>��)h�����i�Ko?u��9\)?U*���U��g�/�Oǽ���B��:�� q�� n��Uo�$`�eH1eFh���ޅ���D�2���]��_}1{x���B�ۖ�Ԡ7��Sm�K"ܝ�+�>��x�_}�New�ĸ���g}v�ɚ! ����2j�ZHC$��.�)#�y���Bą���9���tLy����\��(n`���--j�	��X͊��mK�5��0�&_��aO�����&�S����6v�+��3��t�$��Z϶�pR�Hf�'��� |qQ��]_� ?���Z��|�}\2�1LA��K��q���f�zP7 )DYϿ[��e[��%���{5���S�	Y�?�X����f�씐�UJƗ�65��K�o��CU���&KES��^���S�������?x͘WM1��sRm1j�&�m�]_�p�q�wB]Y��tV.�-ƾ�xA�[��mׁ<����Q���N3+���v/- �*�%��Ŷ��X2�NK��ri�cNJ���P�(zT����E�&;	�ُK���?���?�=v0���׭C���*CQk%3��"cMst���HP�J���>�����Sh��%���[��D�0ۅePu���=A(Ce!�n�n���i�=�����)�q��~Qв��<�;$?�;�����MG�����o�N�����݀���DEI9,ǒq��o��-W<���)��(��ey�)���!^���`!�����BL¯<�K�aɢ{MJ���H �+��JX�l%�N-c�֍#�ž 1{�j�0���\,14i�q��h�� K����������yJ��p��wB�^	\�����өr��jX|�^�4���4i���q�,�Ӌ    a�K��c�-�Z2߹�TŢ+��H��y����U��f���Ϳ\H��j�E)��Q�̺N:'7�W,�4)�g�$�ۧ=y0w��BI-����O�v�^�܃�9�%��iZ<�g��Ö��2�^_m��_)�O�L^�Jh�x ˜t����榙��T���L	��։&����b]"��_�4ﵬ��v��&�Ci|&��	RFk���������pZ�ٗ�\����G"��X�iK�y��h��J纃<�J悲����d�]^I(�n����Ŭ���.���F;��"_��)��4��rl�	֣��Qh+�a�����g�_*B�;�wV1�������[b ��C�Ssq��{/��Ƙ��5�a�%T��d��K��<ɐ�I��G��*☁r�G;c��S�rwдCf�N|t;f�^��e��6[��&W�[�t�'�u����*yH��ڙ���o� 2�uh����č�g_.�Y�T��
CM>�AK+���3	,3IR�@�3�g�t�d�^�U��3��Ь��T��_
��Fɲ�n��@2���s�
�pWv7w�������<w;m����K/i�)�wc2��UiؤnY�YtzZX�l��C-0��f�WA���3E�i�՜�*삀~<7�Ԓ���'@z~Bm{�I�]LF#!f�7�^�=K�mE$)����aKA* ��Oaa�ʷ��G�A%��	%;b�����R
��[���Y�B3�e/�T�\��V4��F��2W��2?TF��-|9s�(��V��m�3����9�8Jk:" ���1c;��}-���pڞgڱV1�	z�,�Q�ói����{�!XU-�Z����N�����攒��.��$�_sA�!�$]+\�G�홦��� ��Ww3�6�N�\$������C��4Y�*�=�0�X����`p���c ���w�dBa��vD�(��{[�o"C�ɲ�epJC��nM�ߏ|q{�EVa�t�aQ��E<*�/*�EHs�r�����h�Ѷ�naC�i-C1�/�0�i�G��M��r�C����2cZi�Cw~lC�}��|�;Jj��R�M����A	�o���r�����{���#����9̋�'�$"|��3�����{G��!ˇ)����D/E`u1>�s�k���o�=�~J0�&8�����9��2���+a=�؟k�R�T0K	١���>o�r��O�D^f���[l��>�ԍi�h��� ���m�xb��짪b��������}챓�C��y3����ߧ�gJ��:v)-��_�:���X��`���z��or���Y�b�W^4Q���1��<�ذ^ �����j
v�A ���{�u@��l�+�C.�<�+[b��=c>^5cX J�e�����27,���7���,Y�cvT���a�<"��(����r�J ;y��O��(��j��6����E����<�}l�1z3������R�ثOI��fQ���o�e��o�f���7J�t,�Dߎso��+0���C6�(򇷛��1h��Z*�d r��_2�1p^��LM��E�/Jiŭ�g@�SF��q7�D�HKBzh%�V������;!��l�L�u{%��ѯٱ�<�0��k�ͷ�IF3z�2��3C�2�ޗ	�p?��`�D\��ci�	xh��yd��"���0Y�h��2�ΰ���L�Q3�)m�+��P0��M�/��oU�7��lb��%��e�o+�Zm{�zM�J�d��5 �Έ4�N�B�  T�N��b ���!��)Fk�u	C!K��#���#A=-�Y$v��4&�Y��L9Y�Ȯ(����ecy�C���j%Դ��,}^�݈��17%��cNk@�k#��F�Ͽۅ�䒐}:N<:FR�|
��q�p��G]!ɋ)��"��x�D�j�MEQ���KZ����V]�zt�C��>�f ��N�!��۶!+-8��U����{a=�_	�0�8�,7x`=�*������?S(#��Y�jWyQ���f�:��t�łQ��EZ:��?�<Ea)���*A"<��.�;x��.��q�����H*,vfS3�>x�G����B�r6�=����g�IS"������O^tb����9������3�f��[���n����_��Q����� =�jo�џ�ƾ���L2�A�m����xY��2��*U嚌�� ]�ھy�X��'�(з�~����I�����1_�����=f]�Ȍ���#f�4�K�er�_�&��0�.�cP.\�e��b:h�a�, �1K4�c�{?.���"wم"
���c�j��G��A/�b2�|�Ȝ!&�ug�pb�Y�m���XT�}04����GnR5�'T�:}ǚ�)���5��m�´�D� b�$��zEh��e������"8.I�(��،t����穎��s8F�'5i�ɠ�h^)�L�i�2���[�@9�^ݮ)4�:�Z����M�+U����`qH�I��*�Cj0��x�K�3�FX�Ci.wj��t_J��N/���=I�H�&p
���0�8����[���"����+�`�v�ټ[3�s�%�U����m2Rv��Ӹ7���c�q���#.�}�������8���^�L�CJ�.^Xuwl���:�����>I�"�M?}����m���R!a"��#c���q�!�2��j�4�g�w�̐�m�X�}\��}����"/De���q�e%�O���m�Z(�,����W����3Q_.��sт�%nV��`��3������:�wX�LP�% �9�O�|�7�:h��H�x�]�4V��<�L�M��Ro���֘�UrC�p���q��3���ߐ})'�C���!�c5�JdG�Tg��f��F��Wr+g����"��ߝXW�BqI��`���)�l|p{���t
����Ȅ�bQU�lt������I�"�?h'��g����~�Zɘb�9R�t�^�b�W�����,'��U�V�Jj�:%CUvDT	5�������<�0�g�����A��}��.��܏��J�-�Z�ƭ���/E�p��g(�9���'ҕ��j�D��!5o�ӷ�R �)�Wa���g��C��w��G�k��5j1�EY�س�6	�!q��AVw&��JG1.�@b�2�n�%�'#�Wj�X�/]gY�t(#z��W*FH`��3���Z�rv}���)�nϨ�ϴ�&�'5��5��E����Χ|/�k�q �p �
e�L6�sh�Þq���������ۼ�]�qC���4�� �B �	%8h^�4��	���L�a�!y H[���%5�p�ٍ��L1sw����4 h$H�d�ٺ�tttG��Q��چu6�zѪQ�$�٩d9w����0H�m+����jA/�TޖO]o�/���?����,�nC�9(�æ�����;Q�/�6d�W���k�T�������ɇ�bĭx�W�.o �(P3'�"���y�![D�aل�z�3a�al\���1X�os���8��tj�T�k�dN3�_Γ��G4soH�)�=�O��#�RfK�� �4����:�h�G������!��%�E���5�V �)�H��������)]�:?��A��1���u�;<�]s��j��6���2�A=�)�t��ͭd�Z�I��d`
���6��^<^<�|S�"A��^Vv� yw��e2�Y%���������	#1��	���f�^;�L�b�b�=��ա��on$U�_6�Ki0��L�����le	�^?ؑ`���W�v4������v��x�H(�y���^��g�h��4rդ���cg������	p�C��[.�1��x�:n"DI�"��W0/�]���q��Q.��9�D�#8�(듭t���rܶ3�K��2���#����}_=M�yT�$i)�5S�B�JR��3.��F�A�K��I�p#-�陥0�L���}f��ݻ��@��a��i3��,��)�M�lEK�<�f:��?���������+;L�l��Ŵ�G@EC}Gā,��V!���x1�=���    o5�	&�JxY7��^�m���Rv{<w���"*���z��˃+�~��Hq�M�\ֳG��n=hpdls��"G�.��N��'�(�A���sƠ_l<��:
�����ҭu��x?�=� ��V�nѳW5�b�v6���6��P��jF�j��+�� ���#�ƣ'�f'��76;b��Ɠ����q
�j���<�-�����2�;o�щ�+;�K�i3f�_x�I̭�s�WM�P��x.�@�������q0�k��Q�����3���L'�&����&S���]T�[���auW�/���D9D�=է*�:��]���H,%�O���`Y����X@YP�=����ʕ�7΂kfYd:P!Va���[t��9s�8��ʑ|����6�bĝ�I\�i�������2�N�u	��`��{(�ݮ*�a�jn5U�h�XO4lU0�b��78�m;F��\�Z<���Z�2����W����,�kuQW���@�n�{V����"5J�p!^g�G��?��B��i[��P��J+�$qY��r�����9�;���cic��w���7q�qq���h��#*S�T4%G��c��h{<��A=bfX7��ß��a�cز2x��w����'��%v�&o���ݿ�L�PZ��K+O�MI�������z!/��Y�m�@�p���녕�+B%�;r|���̑�������&i�P�������5n3[�p�]��Sk������J��d��T�k�N��(UY�S�R��\����C����hڣ��l쏣�.���{���Ga���8��ٍE1Rq���v��v�=�&�>Aa�M�|5'd7���|�V��gYAH�����(�N�����n�)Kl'��p�p�d��E1��\�v���'�M_���5j�g��'q�^�E��}��76P��b��a6rHp��x�E��0eYA��50d�Q����2EA�]�B�;{��dU����~=��)�$ �E�b�@��	���@�;���]������0�ʬ���,��ut�%?��|ӎ�X�+�/U�W�rZ,�D��o5.}[�s�-11~'�}|��,?��z]��`0u� �v�J:9d���&M�� ��H!�H�
<2��h ޕ�ȔA�C��v�K�JFp�@�V��E:I�Dq��
�k;L߱d����@ :��i��W�}J�\u��U~K��&�x��E`8�/�,���ޖz�,��.;(xS�%��Y��tHW0=�K�	1+����N���C(���,�����k�.���L	DɘD��q[Spݗ�u{�c�U��(�p�3
${_`W�IkV�zɤr��'�|�[g��|W�u�s�D�Ly���߂�P&[By���]�J����������"��(�-����f��`��~�i#���p��
>V��@11��G,�c���k2�yes���9Yŷ�����{�i�^U��4�$9U���3Sˍ���f6�Y�OA߼n�1�m�����M��[���q��0Jp��q��K��9[,�g>Յ:횲�?i ����˞����jlhD1�0"M�� K��w�o�}��GA_K����+����#"d<7ծ��Sf��gt�G�Ľ�� �i�v�9t�#���N1'�*s�y�VY�w�5��k��F�.���������F�8\��{C�8T ����:�j5�^Ma��<߂9����ʙ5l��#�b}���;����j�ՒL�M�IV�r�*?^���x�`�ɲ��}�m�L Dn�Җ�U��'(����MA��Ch���fzl�z-�{2�iAT)sħ/�(���Y�$~��r�o=�_Me��~eH4q��q`�C�h@��[C�/i���Δ��k���Hh6���v>}L�U�4��
@`ڶ��֭?&��d8���.��
>V���邳k��b�`=���f߲��@�״8r��+�b��ى��l��_>hsQ�Q�%Q�v�l[��L$1�)n�ྩ"�*FDߍ߬�8�K������5N��Cޟ�M�n�6T�eկk�Y�/sD��H�_[:�g���}-Ӷ>�>��%-M	܁�;�b|]t*'t�+��<J���⛷���;}��~�=�<h�2���U�)�}Ap�����&��d�Y�a��A�G�Y�q������	������M�'��~��~xW�z�e	��@�=<�w�>c��hkY�� �Q�4�\�7BC^����1k7�7V߲����5�ċ{�I^�V��)E��c#Ȅ��;���p6��%���M� Q5Vi6Iˎ���:���mH^��I�a�.&d@�NY�!�p���X�y4P�C��IFa>���Z�SNP�r�E5ܖ¥�v�p������,��?"�2��d�⭛9����fs�$�y� RC"^\�L��Pq����F��\�砈��$�f�),Y��ex.zF����V!���S��)oG�{�6;��g�Q�> bi��ڟ�����a���6s�~��E��}�DUK��蛠��k}��@����P) ��*]�Ɓ�"U����ro4܈�`�ߎbVm��t��:>���wE�#M�o���#e?��{�gJ\gܖ�b/�e� m���6w�z]��b�Jn�� ������sr Ӱ��&�,����`�����^G�xh.훲̷K�C��^S}���:s**�v�^�MO�5t�zn�#�Tz�����-5���:q�>�Q� ���f�8TQ
�"�+!��]��{51s,���	8���\�@L����_��y�^�n���6XFG=�~�-��AXw>��H�/�3Vȁ(z�p��Z��Bw@�/Z�1D�rz���7T�]�.�K��c�}���z�l�Dc��.l��k��VW;��Z��3���zM	V7.h�Cs�����;B��o�(L78nf@�b�\?B��W�����d���g��Rt�`�3Pe�ܖѼ���HS�U<��n���Jکb��.�<�v�݌ޒ%"H_C���EGr'�:ѝ�a�Euy�b&��q��_w�eǣ���'3O$s�OVL�>���4��4=�!���W^p��k��"C��&��\�����1
ߑyLN�M�G��l����"�T��y��=�G����J�\�ذ��zsa���m"�� �.'�]���Z]ՃKw@"@���ת�1Y���/;ʻ��+�݆R�zH7����R	���x,��t�����H+�0GugV�ԏ��K6�a�xW�:ly��ѹ��9�ɂH�+�����G=��ȡM�Xq< 9���9Q�1�=V���ǡ�-�4�"7�Yׇ��Ɣ�����v�cN��@�;��8�p=t����]���V�!�i�0�#HX�O��=lC5M[h��US�����Y���Z��%&���P���W��҇(PFy*#o�P�U��/^�(H?��e@f?8@�uH�h�y't�uQ_�u�A?g�C����W�aݯ���-��J����b��:�*�ul�{�Fn�~����;�L���bw�ߟ�@ɱ,5�%��fg�����oG�x��n;@�
//FD�qH4X��O��[:Ϩj��c��3NE�(��V�L	�r'��S��Nǒ�g��X���a��W3�e\�8m�i,�ڷ�!c~�Tƫ��y�7vvH��Y��r���9U�tn�o��7�bE�A�6Yi�������ie��`��척�qU��i�f0�]N���p�K{���'t3�kL�fV�)b�	P��e�y��W�����!��3<���J-3��G+�/�u4���r��<Vi�"GJG����$�Ɲ�N��x����t�{�����tm�8������l��</�k��Z0�<�\ۈg��j�R��L�=�
�6>�Se|����~�;���ά|$���4������s9Ԃ�-ٱm~��Q�2k���u6U�4��<�s��q��)�yND�0�^�(���34�a;�`����b��}�~1�{���>��y�V��?Q�U�Y<�VS$m�RCΆZ�K��t;u�͇y\��.s�QU�
%$E!p�    �5��CW�W�ik��lt
��G�H�9l�9�,��v�Pzn��4���a	�$�I�by2�v:�X&��I�X��sk.=-����&`��T�X���f.�Q!M�+a,6�Ůe�v�ԪC���N��;��xi��k��ݎ��9#�>݇�߽���|{QMבq�)�糈%5�R��� '��E�g�m8P�ann�c�GA��,kD���~~��:حϿ[%O�D�f['x�syz^!'�-�%��ڄ0װ�D�A
�#J���rU�Bw�L�RW�`� ��n�h�%��
��;�i�yW��f&���_����g��u����!�B5��/�ƆW�-�Ŷ���6��MӟC�����p0`@A@��=)���'��5�*���H[jJ[������<�\�J
�\d���F����5YlNЧjtN,�۪�ε�rYo�@T�`����CI�O	h�~�k����Ŷ�4>�-��ԭ��#cƵ�&�{|*�,x���SDa�F��3e�s�v~(ֲ��]�����b����0Qd��s�w�J���Ⱦ��m�ӛχ�i��4޶��-�xؗ�*`� ̆�f�|ˋ&�Z8�q����Lmq虞\�1<��#o1i��'�1��nu�}�D3�_�&�m��a��"iED��YS��,���[���<�<�V�\��|Ҝ���ܦ�-�?��bpʋd ,�h�:2Ǎp���1_3L!ySL,p�N���)��\�ü��t�
ȧ��b�Fb��0�q4����A*s��b�L�A��K��hF��?+^�$\C�4B��R@Ǽ�{wS�5�[
�܃�13-Re���Y0��� ���,0?O�8���Kf�'3Ŋ��������V��R�@�愸k獳|�5N�8���+�1VL�#�b�6o
[^J5����j�V�) �ܑ��'X��=A�G�*%"o���vS����y�jrp�%���܎�/F��\�8+(���WUv��
8I���ZfX�4�<h��e됈��7u ������W�'Ne��3���I|��Bj���k����8ea�hs:���)��~xP����.�����݆2!�I�7�
��Y%6d��]L�T�g.�-������-���,S����:̪�����~��5s#f-9����
 4�d�S�O��)��pYC��d�V���z����g��[��2:`�pq�\-�w{q��zD�/Q�0�"�X��t������e�����)��MWǥ�Si����jK���}*(=���3�6�?m��,�K|d���Y��p�ڑ$��Y|�nvX"G�'��0�4����#����le����@?E�L;�_�!9���(�.VQ�y-&jx�ꭇ�!���oNg�9��$W7!���l^P=���_I�?�?�6A�)���W���d�6���a:�ܛ�>��ג���:�>�=2�?	5�(���
���$|��y�������>׻4�?l����N�ό��K�"3��
4U��<��	�4b�����r|{��s'ϰ�Ә��(��)�!䞊�$�Ă��-�����g������~����wI��Ү����m|�����G�!�X��Y��ǈj�)1&�QO��1������G�9�X�;6�n�������P�=���/K
sNU��E����M����G�s�O�DvT_����Ս�?���1	��T[�jH߰�
z��)��*���6շ_��#�P
���K�A�0(T���� kc�qp�բ�ͺ�=������C�>s��	o���ш�cA͉�ê,����8Fٞɢ������F�W$ȧ�yD�6����tpԖM@*�?-�����9�A�0 e��V��r���oW9�A�E���?��x�,��������Ou�(�{��@sC�$K�����=$&~?DI�c��ĉ������x]�(��#!��k���t�+�|ʏ�'��Pk���۱�І��h��e?��jn2��|?G��5�����u�	#O��c(ұar��o<$��0�����N��;�!�#�O�[g'��=[��ו����nw�I�o#dI.D�̮�PP(���`�x9Egʼ��(Xk�U�{�'g�W
a�f_����+Œ�}+L9���$��$*��SQ�ї,&���^��h� �H�f�E&�;�od-.o��I��"F[�`�B4����,�2�T�6zJB��^d�`�>[q��4�$Ii5��~�d��=� n���)��{-�M�]���b��Ի�*@#���򪏦��l诌��w�!������M�Nͫܥ�=Ό���R���>f4���c3�$
b�d1U��^ d�ߏ��;��dq�U���b��W�-7ʨ�":��5ļs�ua�����o��YJL��.Ŭ�܌xj��ds���k�u�ѕ�/2s�(d��2���7���;ň������f��@�Ⓜ�6�+��9*��-��U�8���q���C����<���T����cnF;�������OJ1�
Yf��YJX1��S�1�[��ynǟc>���U<r��s,��07�z�/9\>��.�U[@��Ī����ay�oA���&�Rh���F����z�D���>�E1g�D{���s���qTd��DG*��ѫ��19���E1o��=�b���aq�-r|�ጩ���g�i��=2$����i1iV��S�XB���j�M��s֌L�5�
�?��V.4��,�HÐ�\E*^*n�RHu�W��m����M��� 4�x�Xx��ǿAK�&WG"N�`����֡s�����I�p���O2a�D�Z|�4ɚ�a6��(V;�=��&~�\^�SEWWlv�U��%%��"�\�e�|�HӶ���D��`�!�d�ᬇ_�I
W7|2��&��+b�<$F�� E��0kM?y���:�q
G�LC�m���N>`9k��I�RV�-],YF��_8�R�����,�2��m�Y"WS��%%}��]o@��*��|G�Y�X���<q2��V�˴��MN61y"����|����s7�4ɠ���Й�RǞ S�E��n��;^�@�ھ�ŜۭnR�5��9�%��qO�}R�.��Ġ�2)���p�4�s����O�,�P �p`�b���d����V
t�3�]&�op>*�Ͽ;_�?�$�ٳ�tP�
߮�eG�5m7A�������Vt?�t T]�)���
��0`�}&US�m�Ϸ/�mvՕJ2b�a�e,h��$1p��C��M�:d��T��bʜ�-�w�g
�o[�p��l�3^\*�����%Q���g#�cBNScK�A��?�"GU�^����g
������mg��#ʅ�OW/��sqNԐ�5���M,+u���e 9��P��ڲI��T�
�( �����$�˕�����?�����<Ѓ0��,�ZG�����$E��Q/[�wL����(�X��-�[�g8�W͌�o3 �g�%��d���� �d?`�s�а�eg�k{�>\��&�h��{��)G�D�d���8n8���/bc���2~���;O-��+a�;=�0��5ќ�j8L0�?'e5��0�n#*����է�&�B��ٲ�3�g���Ѡi`b�D%Y�V����J U�Tl&�)X�!ټ�t#d�qI�K#ب�?��Ƭ˜�Z��v�9�A��ᐟ���sW���1w X3�@�͡�g�52�������hNk��YBT��s'�d�Д�o�ǽ�K͍O��2}��a$4%�s|�*[��#�Ҹ@����$��6m�؍�o�7�iն�A&�^�8�����H� sTґ��.��(z\��>.���C�}veo�L��e��	߂�4ˢp�n������_'�5֬�ćwٖ���Q����¸��O����h��ؤ2���L ƅu)+�:y��s��۹Q%�D���l���u5QLg�?�$GL��Z[�\d�1#��w{��Fp✬yq�R���J��}�ىT3�����4Ug�Y.�#Ч�8�^�!�g
�� 'T�E�q#�YI    �|��3V��J`����X�^e˱�چ	��z���yC��K4]٘i���������/��0�������g�	Q�J�q#�)/u6wǀ��6}g��Zm�E��$���J�EOE�fKmM�px��;LO��a�$�0X��y]��R��o�2�]M��})���'m�Z����sX:�mKL�)6����q0^�)�ۏ��̕%���O�!��qO~	e�l�;̞sX���'I��޸�-���9>d1���&�c�w�<��嵡E���)	��(�J&J6��g��(��d�8ճ䰻�;�q[2h����(�O"����9�-(�i�nK���W	�~�-?Hَroc{�6����!�>�i� `��6[��Bwp�Zq�tJFבT/rw��+S��29T|��������n����B�ݷۢpjow��kf:Q?�Z�dL9Fd��߉���MTǩ����������M�$��(�[w���� �}�;@_e"S���Y�������3%Ac�������)I,�Ԝ�9��-E��
���`@8Zo��9|���oQ ��t,d菑��������v�����2*�nR��fc0�(���m��t�C���Y��>2�ȱ�r*�~~cG!t�Y2��~&d��]�Xm5Y�����ڒ;�[��Ftl�����T�w�0g�&#�S7"�f�ƛ�Rd��55)�X��5[��mt��zc���)�/Ɣ��c�f=�ZQO�u��5n�84m�x8��C��g�Z���ϕb��$dv[�	��\� �+"����rU��e��fP~Fz�uHy�6��X���1r�č�Ӛi;]�ݍg��M9K"�D}��oRz���s8[���9����#�-y�*��d-��C���'�s�:� Z��d�oqNǑ����Luă����y�G4Jؑ=K���)�@����ȻT]ݽX��EK��M�)A�mÐ��vS$��x��f���}�g�p	��*_k;
L��VJ��Nrco��&���2�|�P4��J3�i�p��Y9#��]��!�j{>D'�b��^��:��h����������	���ɚ������y��ojʈ0`�Jx#8F�M,�
�d
��_�(�U̿:Ƹl;�*���
q�go���'$�[JBK�#�Z����e�����S��q)h������.�ޅ��� ���J�����]XL�T .����*�7}](�^GH쳰���*��^K��o�d$�����%Z�t,5�j7Ӣ�:ZV�@�<�A�3�2����1}B�[wY=�~������-��1ۥ�r�4�������;^sj�����ʰ�� D�7k�J���mO��.<��H�����K
�����Y�ۤe�3���ܳ��t�����&� ����E�.m!$���KJ:\I��^"�*�e�#h�SXpZ�#���-�4����G \8����ί�Nu&䗘�wkM�a�g���+���!
$~d��|YP1�:Xĵ%:˼�, �f�$�ٟF'��`��6g��L)|f�r�W���<�Xzx��y>�v���_�Ȝ�`���1�U��m�@�Mb@yx�^ݙU�
�����:��Ƽ�LP�c7�)6#�71��@y�4mC���N"�2S�%�V,}�U�~݄��:^K�N�c���$�S4���&��f�8��Ҵj,5K<"1)�
�),�'-��#}nޟL���: T0�\�c���T6dw����%XLҥ\�J;�Pǈ�N%L[y��X�4��aD�_C��M�:=Y���<$\��/p,�Q��fKX�6�30��ȥa)��,��~����$� 󞰠=��:a�M �ۢFج-�؉�U�i�a�ӞO� �t����<w�a�Ȇj�#ALB�ȿv��t�l	��ףQ�]��w�۷ѥ����C�&hJ�пWSL΍�P��0�[3���`�y�u3�'�ϭ#���WX��@��0XZs--���^�0��/�	é�!E�~1�:7�N�F�~�@����?��02'/�;��	Ze3
��F	�O&��^R&6%&MT��F=|)��c�����!��P]{�>n�3�\�u-�()�i&r�@}�A������KY-s�[&��if��Ϭʍ} /�����47	E�I�Q��Ȧo��t�5JG��e����{1�g&�J�����V�1�+iq�����m�j&T���+�O�F�&��R��#�ಠ���"z�.��J$7��F�!h�JޘO&+2�Aw�hd7%��<֕*!I��1Tw2��h͕j&�<.��7�i�l��h��@��Պc�f�G�5Lwg*���D0 {^1w�����U�T	��Z�I���uk�'idh�v7X�I%�zbˉA,������)�]�"����;�X۲���r�f.F��h��"�%�L��T���:Zǔ��m*�K��w��-��̻UG������?r����\��~vO�9ng=�2Cr�'h��{�Yn��5%��l~�e�4-n4�ձ�1p�0_����86(�F�Yv�Z��i�.+?��7w�WJ��R�}�T�ٺ��N�s���1!����6�춐�%s6wm�6^qƙ�plKp�\V�F$������4r�)�'�/6�ӱ�gq�ؐ���)}����yM�AK,�]%��j�` ��]q	Q�4=����)���L�䑯��	տ��Ѧ*S+KF7��oV!�����e�i�EY�t�)���u�Hc��ޔa����S������Q|J�5X����(�ޘ�jP��l����E�ٯ�C%�l��������W�ݸ=T׭�34%ټ Ux��-������"���LbC��M����"2��ɢ�=ʱ����ρG��Tf>?�5��]|M�ٗ4[��LYa?s��.��ӭ��i�����B���(M��$0��~�w��J�P���E38d��%��C�d���bYsu�
h<g�l+4�:7�X�M�la�1��}{E�.��/������?�k��v���z���&x�%��a߶���?�ި;ּ�k"���Cu.>F8�'C�����Դ�s�I�0��q��<TiD�=Zb��aa�|l�Op�LrV/���������U���R9�n�jŘ�b�Ϣ�a����uAs�M�A�5v'܂�!��=�	�k��Ǿ��r���h�E��bH��n
Z�_�"�o����N��?���S�.~tJL�nb;��sV��b�%�$XV$�ٙŁ_C�Ny�B�ո˒�ՐϽn�T�Σ���q<����nM��.
�YUYm�e��a�B���� �4��I�"�� Y���!JD���Jx��5Uױ�)�I���h��\MLΝ�&�2lm�A��&2^�lʅ6�#M��4�/i����C`l��2ȡI�c"nJX��A�E�>Us�t����C�`6�U��^t>Cf  ��E�>�6��B��z����+��]�y�'�D�#���'�T��LZ7r�8��[���Q�R�2�Z�ft:_���w�o�1��U����9�1�C�5i?�oG��S��"�����&�4"�/ŃH�u�PR��Y.��c�SC���J����dv�<�YT];D���2�e,��Mf�W��<fy?0�>�"�W���K0��`��#:��8Q��m���	<�# F�KFJ{�͉��l���g��5�q�����q�u�� ��؅�v�0TE���a
�;�<<7'L�T�o�z{.Lф*{�K�(뮬*Ʃ��Y�هf��)�!�c8~\�ܟ����%H��9�ӆl�2�*L9%*4홱Z �[.��vH]�i Ò3���c���U��D
��lO�{~�Mg����R�J"K���P��>�	�axe�[�bA��47���
b�����q[�$_3�a0����c�1<Bf>wʞ����b�L	.�V�T���E�g���)$��(҃��ע�៖V�
���y�/{z���� �&�XA�̐>,/y�Z�4|�v����b��ႄ|��ef���x�_�&s���YD^����K���Nǔ��.:    %��:��N6��;8A5&��Y�n���Z�KR�8�c�q$�O�}V̔���D��僑�w�<����ﶦM{�[>����Y]N&�D�g���-F����p��GsjY�Wr�m1rp����e=t���WM��+l&�P��X ���YwS�Yl\\Iօaj�uM��^:7��5�c3�(j�s��^��,�M��� |f�mt]�-�������K����w@�D�����lG�$��9�+� ���=�4� Q����ܺ�SK��ir����9�gfDUfV�"5ӑ��]�뱻�1���%$8&�A��Lb���7(�%/`9)7�}ȴ����F�mS�g����(���;ȝ�&F%��r�nو+2�����p���O-��kR�8c3�Jq+�{5Z13u2��k���z�CF��{������
=U�Q\��k���7*)��VH��G�̀��D1����;��<S�YFq�㌲�����p�.w �=m�� ��-�K�a��徝e�K���A֋@��"�y��<&�M��m�s?�$5S9�kr�v�8JkdEak!]��7��Lt <Tuk���~tA�û�I�I*��&�hw���;�@@|guß�6zS4_�w�n���E�	z�N�ѱN��̓�Q0:1�:(8�9�G�L%H�����HR�5�j��Mv1 4�����g"9Ym���$0ّ�ɪd��O&�X�	@c�Ҵ�p6Κ�'|��!�>a�ĒL��T�6Sށ���� ,�~���P3�֚�0gU��ՓG(i����	;�V+�# ӱ��mD�qD8�+�l �g�!��1��6��'g�AN��82�Ui�@7�.�a.\t����bڹ���W%l���H�A� ���JQ�h�a*�oJ�<BV�z5RΓL�&yaT�._1�X�<�^����f&&ڳ�!�>|�A�p���=�@z�U���(��0jcm���
�����̮d:L��0�*�3�1�A�䀾7�r��)O��嚦t��Fid��q���=�I-��v�e
��Sd�ʠ��a�Ġp���;R�l #�Jγ�ÁFɧ��j��-#��yt���f"|(۬xӸ;��+��$��v�UB�-��V!̜GLK�ro��Qy��(���2r{��iC43�p�Oy����c҉x�����X'��Нe��t`����Z�!���-Ar�5Y)9=��:$���䁅�D�F�ī���FoJ�"�E������Rʂg�����-R�VWaO����Yl��AI�IJ%^����߀���6(�.��Ƀ�s��ײ@]#I���h����c2�|e9�g��>���&��D#�t�3(C��u�Q���I����#�g�����(Z��<��N�c�+V�+ѽ��kX�=���EQ�)�$\�K�X/9��[3?����|8@��B�x�P�������g�*�d���ޔ��ܬ�B�Ooݴ���9�W�V� I�Q����,��f�$0V�O8��ڊʰ�o.B<�Ԃkty�}d3 X��$	G�{�@�FϬ���[�9XD�XQbD�7�F
Z�q�n����R�ν�<�)�	4L%�pSխS(3i�<|&�4J����|�F� !k��M.��X�����3	�&B�>"���>�E��V�I4����h73a[�J�-1�-����	!���4��h�����5�d&+�������@:T�����O�k�9f1p��s���g�b���O7��^��m��<��)�&|d�����
P��HO��ʃ��AZo�c�V�Nէص����1��͎�1��ϙ���GY$v��r6

�5�)����j�C��r�Z��~TvO{�wf�|U�����ܛ�8u�@2�����O�"�H�G����#5-H&=���q�X��-Qf �a�-�!.>��
N7���o�zۣe�d�N�j7쾜U���RI��|�T��zcp4��<��� _��S㉺»�?&(�����b!]����ɏ����x��.�-����M�'�Ӊ&��M9J�i�ɭR�g{�������G�a!v���"V��'�_�;�2t�8NBߙf�9���}b�ǌzWsG{&OQ}Ku���x�؟�c� ���{r���s�����e�4�5hƙ�h��aot�W�w���v�>;D���fƦP7��M*< ���.�22˦̈́�z�,�&j�{�xx��9L3HȬ��F���x�0I΁���p�^!�+� ��'
2A�"Ff�L�O|���/	A��J.�P#GQHO��=��(9!(���z��I��I?��{5�J�RZH)�(SSh�=;�YsH�և�AW����w�
=�Y.&�2�S��Ԩvrl�W�>yw�u���6jV䤽�u/��BȀ��tΞ���M��������A�d�W�/��
c2�}�z��ݦHGsꧭ�шޢ�.�kC?:�ue&��Q[4G�P�n���~k�bn��Za�P�RV�M��<�*8�Ui�K�-������[�GO�'bMT�D��A��́�r¡���`�P������6����;�qS;�e���Вp#CF�V�Q�V
PJA�'#p��i�0 �||�����2�%�(��7r7!w����m��ysMxU�HŤ6�cQ��D�{�Y���
,5�D�c�Q�m~e��x�	��������l��C�:��:!eg�zA%[W	�f���z�D��F%�>+�Su�&����"��>^��]{�2Um��/BoWn\-2H�6�lJ5���}�BIT�����hcRv3A�>I 5+����:	�cae����\7�=q�M)Gv��2da����y����i��^�rȇ��X$�t�\`�c�h�xf��;e� a�%BO�	O��^};	�D��������	�	�c�T�ԅ��*���TTB�� Z���at�p.�1���;<�w�7�:B�0+@�.Xt�pD��c3Ie�V��/N���x�y��$-���Q#����WcEy7=�Ćlz�1ԝ��	αO�D�MDBe�."���D����*=�g;5�B�;���1����*!$H�#�qHW�[m�$�л��z���h�v`�R�cz�	�ˬȇC�<��y]�����E�{�Y̐�˸�<�^a���J>3�Tcޣ"�:k�HQ����7�X�&�XcOןu`���e���V�=Rfǘ���w'LU!]� TcL�N�@��?	';m�?$���@$���Mz��:� ^}V(�F ��oW�0�@��61� Q�1Aw�F��)϶k�=�\�H�����l�33G��{�W�G<ʭ�6�2s��E)�t�Ǉ�c0�w���d��-�RLcg��$_�	��p(��<��&Ic �^P����Bu��!L��<'��Nz:k���ۤҡ��Խ�#[�٣6<jVKR�ЇdzwX D:M(���tO�	�Z�%f�w�)ϦB��b�7
�7�"xC��ޙ]#�R'����3�c�Ų0�p�kp�R��+��X���D�z�{M���(B
2�
�&ߢ4��#����Y�).����!�p�I�5�w�)��y�3 �D,�Eΰ���Ԡj�qAK��`��JV~&�%y�ȿ����[�뽫�C����͜i�+���!k��Z)(�ı5��q�����<�<���$�xT7bbg+ђh���E�
�$B�Ф�lވ���P^�ol�C ��*	+,�p���e�a"�}*�����ݩ�򔖙�z[%=��y�%��C{����$]=%�Ǔ���c�0궰Hr� d>�=�"���Ӷ�����;C�i�0RLe%�Gݳ�N�x u��<a�i��p�M�e�'E���$��S)P� ��g�'[i(΁�$�{{�%W�8�(�I^�2� Ӭ�i��BU�I���P�d���[s be�1�0�#U|�+�\��EQ���_�&����,�god(H����y*�x�`z<�L��5��ʍ�鿇� ��:P�!�����§ᡵ�-�+�\�5,T�.��    ����B�55�|�x7�2#ye?���cGJ���*�z�LMI3d��mf�ء-$b�d�`p�k���C.&�Ji�U�l�q3�M�A	�����D�.�'��D������=�z2,G4b�ɒ#3�L	U���1��Ǵn��ष��u��T�Ֆ�Hi�&�*z��	���C!Ց	lA��+�-f!r&� %Ұi��!/~���#��c_ � ��b'ґ쨐��C3ud��\�^6��nٱ�G�9�a�F�Լ2w�"�`b��忏�A�K��R�ￊ6�X�c�Ԛ`NCO�0�ΖI,�tV��Ϣ�Q�k�ʯ:�XU��*�у��W(���X�ј�P$�>�C����\��Q K��h���em7��f=m��%�3w����~�AVB���ȧ�>�RU������[��
~�p�c�ˆ�͊�|<� ��m��\w#'���wF�C��@�y4�GM7��<��.��'��$.�$�F7�9���?�DHc�V*� 0v�@�dr��%�M�/*et��
��w��2w�$��@O��ؽd�6
�[���\�e��j�.�������er�m�M�� Wk"�w�d�W�LX��6�v W'c�"�Բ���V�Xr�����՚T Q�>��)$-XSf�h���^2q����f�'mb����j��ᗃ�i2h�P���{$]He"ё5�'�xɶs��.%������~��3���@bK���5�P��ð��7�g�mFθf˛�۹�Ȃ<Y����[c�&!4���=��0�t�^D�⛋\GKj�:�#�̀�˯����Dl�99ƇFv�J���%*��JcC����c�k�`
.I��4�T��]�gz�4� ՠ�nb3�ޭ����Q��$3'��L�T�Dm�7~A�Q�F!�cT嬃3F�Y�t̃rS�8W�'ꫣ^������:T:6>��h������ _���	��z��L:Q����z[� �5�=��d��%6iZJ���aRP�1l��2�*I%-�@�'��Z��\=����U��Ĉ�Y��{���,�fe'�~�=�e�Ț�a�A�>�
�y�G�2Z֞K�}$�5�s8rf�Aa�aO�/%�8i? �3��Ru��
]���]��e7y��
�e�� h^~G�N8)����
�̀��Y����l��{�o5n\{l<���K�( ���f@#��t01�J�c��^z�E�\��Y�J�|%E����0�mM��f�Q�DQ����3x���
� F��(�awiPfh�4CO�����0gT8@d���%��)��l��QS0B��F#�6O�9{(��H*:����C��͜��X4�]����2����vib8���d����xd��gv3B��D:RY��fc�A�����2^dAM��L��8n�� ���y��D����&�LE����^���LMC�U0�@=�F�:���$�v>�>�X:0TA�4Q{E�n��q!�E{��[��~O�%���x���	�6#m���+Cw|�1sW�OsIN$5*�ރc㣸'Agf��3�]�G��6�P�:X�U�Ć�SeE�J���5"��y�7.���;I"��p��[�?I��M.�q��cQ��}�RVŗ�~��I^�_����6�5��9N��A��z�>�͂o]$���tT���dv,��ّ�(AB^���q��m�lu(��A���io���ٸl�o��$k���i�)��T>S�Y��꒍�sI�S��7ݍ-�����V�!�2����#G
%�m*�Eҳ���(n�M�Y����+���D�c.� �����"M!P���Q��0��51V�� �*�jHδ�Χs*|)Qэ#��&%5G��9~�`v�������:$��6b�s7x�QP���m��AAV�i7�l�ޤ��p�c�
5���I!�5�
��,+�O�)}�����2``���=�����x�qW;(nrcU�JO螁�E�ux�ag9M���-�.&�/�t,�������(���`Ǫ,t��I}�^� +9��e�1w��0ei������bf��؛~� @���K-}Q<�)=Ǎ`P�*�����I�'��2(�����H8��я>����M���cz��f�g�o2ł�J.E;��h�4��9ւ5\���	t��AlA�-YOo���N=�1�Ɲ�� �1�L�5xQh��=�\9�֢�vy�+e)H���.�Y��t�(�`�m�@��@��}��C�R�z�ח`��-|Ll��:���:		}�%���˛#�8*�PR`��$�?��	�t��y�#��Q�h��� Eq�uNr��U�����([42��C~�<��׫ v��_`��7���S�)r����\�U@�K�u�؁�g��n��� )�ɫ٥Q"`��ڊ�瑸����� �������0f!;^��h8�ñw�e��>b�	��&a:�I��Ͱ*?�̞�� �LRV�N������ O_��d�|�D�	[�������	ܙ��	�u�y�
��p�Ǣ{�W�{ظ�Y�`c� �	8r�7�̄���è(��M����q��Xl�r*�%F]�lAK�?�w��ןn�������|ww���_.�x���?-[׿?����ջ��7˥���_ַ����O?|�~�����o������O��O�����i���a����o�>��~���?�tk�~w��G����t������o�,}|����y�ھ�~}cou����G�9|:,/�7�Y}�3r�R2B�@PUWrU����O��h��6��
�-����؜����hd���S��ʮjf�;q��e�SDnnS��O�}�\H={@��U�A3r��J���k��~����E`o ���H6nv2*i�>���69�G�g�G��t��?pa2n�w��Ӄ�GK;���0�����m~?�ap��x�JctE�[�S��C�i,C@������ �<�!��u�ƻs�X��� ʰ���d̢��ߗi�`���O��k�A��s�7Փ~C��F?я�Y�����V�&�DĊ��DO�����u�Kd��7F���QL	��t�>v@��~3���hHR�}�� Ȭ�<C����2��塟u��4�pZ�������]��T�+8~��18 �	�pX���1$N�#�lO��i�;p���e�k�D ;�m��O�?7;������EE6�5Qw�QӶ7>d��Fb8��5H�%8qF۳�օ�
p��F�R�]���
8�7]G��C��]lz$6�����+e�MnNR裙?�G��Z��L��9��'c!J�Qo뷐� Ο�v�u
�5^�a�F�"k�ǫ�����$��[
rv��2`nP����{���$b�^
DuK��4��ȯ��CdB�ȓ�I�L0ѕHQݻD���l�/�s=�����I�Ut�w�g�Wx�zv�k,E��+�k�QyqP8��%ZBTy��m�"��J��S���T&Y$>���@7ۘ
��C��$I|&C������fX=`����(u��ό������y���4Uj&J����.f�TV�op�Le�ΙF�������*�!)Љx����2�����F������}�bm�fg=����d["�,<�4���c���±��C���+2 ���w:a9��d�aC�፬�!2�&��N���j��cgW惏�-"��D�F,�nfF��O���ǫP`�(�3�N�a�RAu}�����@����LT]�XMeK#�&����a��L�g�Į2�'mqC���sқ����Tzd�TYVB���, r`_HS��,��H���y�Ə�6���#���Mϐ^u�!��2X���(k7*"o���
�A��z�m0�.��k�Q\m���ڷkP�� �_R	��3%�&�9U0��amFщ��̻��ޖ0bQU��qz���`�7ԵjS��HN4��g��]?	>���ي�D%OF+�5��W���tYp����F�_&1U_��� �:-aXz;[��    �f�'(�+t�j�ah�[Ů���GY���@����\+�͈�Bć��3�zM\od�uT�69��{��H(�$�,����2���L�R�>��:(o>��?��+���v�l`"o������נ�̜(��}����%�{OP��a#:$�-Ip��#�"5Y��l��=��,�(4݇ȣ���u9�MI�	�42�>��AȾS�P��i�:'"����,2Uh�*�`�l��ڍYQ�5Je0�[D�� [v�O��ǡ�+���3\{f?�c��< �	4��D$��&��SSJ��{9�б���!h��A`eP�� �	I3I�b������(�^ʉ?�
�vK"�?�����kN\jh:5S�w��/R���%cH�����'/�j�^�t��H��j>Siz�_����lY9vY��5�E�:�81�=��WYD�/b�(6�B/���3印X:�A}~��0(~�8fb���U�D_]l��Z1�ۧc'g?���ec�A�J�������a35bu���y|�r�Y8nf�(I���Y��cz�BK�3�K6���6$L�4�M����a[���V�LTȎ���,�W6�i�PUd_�(9�+��2�82d��yD�:��H"�7�ENc���T0wR��F��T�.���?@����=�s�>֚�!��_B�噄F�(�Y� �[W)�=�
ɗ�$�bDM��r}���C�ڱ����$��_�R�6㽢b~��g�Eo����
kF��y�s�<��r�y~V(i����)��*�>�z�N�3�hӕ�3ig��ȥ`��S([���˦����z O:�ֺN���<ơ�E�Y$1�U�T��,bSu��ģ�R\�tB�7�~`$������/��)�4T�I������
��^������d����L�T���>[ɨ��L��fYo�K��@��Q�W�Q\�,?ibk�����[aT�~KM�xS���^�����l�o8ԑ�\C���Z�{W��v����h��rU��c���nP���R�̹T\�c&�]d�2��J�p�y� yJw����P>&��w�z�qP^�H�j�t{��R��f[����(i	d[[##֤ j]�i�(xj�b��v)��՜�8N\�2;�s��)� r���
�J�p��Άy�t6E��LP��Me����e��DF�B��:s��Yg˓����<	�sgN���=�gـB�jv�j�R�7��r���<�T�JP�cDz��q�:�g	n����W�1��٦��7��b��YI3!�����0A7�>(�N�V%--�D�	Z#�TyY(�F
�`�s��rٚ/�m�����`]ʡ�Bo���w��d�[��!�)3w�=��UvU2���玁�2�����evB�4L`R�\I�V��o$�Z�0��8��@�������2'I�8FB��C�O���g�1���LGTg��}���'�.���<�..���� Mz�A���M�7����K���Ps�nQ�/Q� ����S5����(vy�g��з�w�@3{d?��ó�CЈg��}���՛� ?mz�4�*PF:Ϊ�N\���$��z�
{��:yg���A�hǂ�ܥR�p�VtP:��8�ȹ�W���#���	z��6.\��g�]�{.������ӌu��j1�����'��`!p�����.g+�e�>�6I�_�ḵ��5�.��g"����[�J��V�e%�����2��:�{#�,��>�%�}��Y�ֽf�=�m(�h�Q��\ix���0ʖ̊�̯)B��4�ds�$a"��kd��xPc��4��DN�f�����ѓn�J�8U��L��3��M�N0�!2��.��M�w�s��I��d�Y��y��O |R�N��@w�%�.P|."z3f��
�D7�K�A(���me���Iz.��]3�@#O���:7yJ�b�!�ߵ&�
�zc<�9S ��KP*c�rk�L������ߌ�����z����X!g������6	m�4rP1���Q��O��n���ۚ��{��@��ʗa3J&���$.Gyf�d�����[D��k�-+b�$�Z�cyE~/G����8�=�$�WYʉ�����KF'm��h��9J��40>q'�~��1@���Ɗ	م>�OF��Իg����_+����u�n3�~$� H� >Ӕ6�
$ơ(��`I@�R��|)f�Fi*&L*��������n��.T!E��Ls� B?%e���e�Ԩ���'��=�*!�N�WuJ� `&�p��tV�m�XZF�.Z��CW�6lCW�ơ���h'5���:�u�(H%Q=���nw�-������j^~��d���0���s�����wGe?�y ��$�Ctjo�_�g�mk$c:���bŞU�A*�mz�(�7�%�A�Jzc��+��O�]��;��q�Yn�>��3��uOt��2��lߧ�rďD�Z�iLD
��yPa�e�'ps��%�ƝJGcZ��Ĺs_{���=��P(�3`6
T��΃9���i���h/�@�#-��m�,��G78��"�7��4�愸�7(n!ʴ	~��Mt�Y��H/�(�*��V8Yt��BC��t�x��BƐ�w�`Tp�P �V_;�\�h�<�������,̈?2�A�¤YT�Y�A��M��� L�I�u�P/�
%�[$ٴu�I�` N�Fm:�lR���S(����)
ݯY?�h��+�r�ps�Le�{ 6��S��U}|L���Q�B-���0�R�����#�w#>��c�4�3�#�������T��u1�\�.�_�믙g�οq蕹�(g@ 
�.�n����k�L�$EPS` ��(�	�̒�"S�˰I�t��&�ל^bv���i	;vD�����7>i�DN�k ��q�U�2��7��pR�h��f�BCr�Q?���Z ��P��f�9��č4��I@�6��X�D�{48
!B��wC����!ُ�ؙ�Hw�($��1��Tf��Y���【{`�j���Vj�;'Z��(fU\[g4�E?Uw�ӽ��ϣ6�3�>͟1�Oʴ�D�A�Л,�,�/�@�F
TMK**��GA2 6Q�^y��K\6�6�#X�����F��y�e��a�=�\$f(�����J#,��,QnRE��v͛M��Ҿ�M��-��֮)j�L#
��V��Z���cO��l���"ݺpW|"OW۰�3�OXum#yQ��Q���&�
�1":����"�s��U�
zGPƗ��bn�J(�P=�Fٺ�Al�H���5�v"�) i��ڥ�A|��%�4�8�},�k�cާ;z7ĉ��"�, 49ܒ���]����vjr~����X#S���R�!��iF1J7�x��w������V�:�NG��M�hY���("�&�F�*�sfn\%h���3m�ߘ��$b�Q��� |�7SA�F��&gC�mAA����4�<�AXj�s�	�8�h��K�f���(@��:fAuq����=�+��K��U�g����'��ϐ��e	��}�ҵx�,'OB�h<f��{zO:h�<��E�I��qPң��Xh�V�2���Ao�0�J&��H�h��-�A> ��>H+������4$��q�sb�v��e����~z�BḽM�!�n$PdjvV:��rj=FE��sǞ����8�$�+Q�U�)(o�BU'n��582�����-=3�{�E�M�����[�QrgpJ�����.��e�A��Rm�f�C�2M���@���}��B�:P�YL\���F�.�Au�.2�PB|�)�}"i���n�N�L�6����)z�����|�>R�Q�Z�܉��ܷ�������d�t�Lzsr�h��F�nC z��Ζ���П�wQ�g1i&ck���������C�f��=��Wp$'��_ ��r�z@�Sr���^wI�=S�*���A:e��c�$���}�@|Բ� %Xo    �w+�a�`Ϧ��7ɝ��5Ff3�����*͒��(�������$R�f���ޡ�Bβ�2|�g;�b����I��Ɏ0�I�n�M����Ը@�jji��ی�+x��8Ʀ�-졥�=��=8��,\�)�-�FZ�I[���A�����T�j��������?�fzV��n��^��Y�>�YON�O� 鐼���M�&�^!���Ү�A�K�y/�^'�-Ȝf����Ħ>�FG(�g3?�t`LS0��e��$	�9�P�	p^��z��̀������@�Ԣ� �c� �T�(��[�a@�[}cX���I�-�#]�-)7���(��N�E�Aqs���P�j,��h�}Rfv���$"DA�fj<��dm�Ra�P�dh �z�'X�+�y���e�s�9��!9���C/�v�~ʠ#�zYBa�*&O��e�����U�h�@w���漵�#9�a�*� �I�LD�ԩ�F�pg����B���̤m�C:8�plTL�~ܶ�2LơO�xME���gD1��|Mi�y�T!�!�o�� ��"�������2FI��IĬd���*�E _�F���uڡN���dO��a�I�Ȭt��2k���G��V@7�F�Ɨ���f�������(���Q��7� *�&ʰxs⤈f��{ڸ�`����v#�3So�	�� x8MJ���|�����(C�����l���ڠI0�:^Q�
��`�I

��f��ȼh�l�7Ƞ��UQA��gV}u ����܌	�:�(���e���ٷE���{M���!��,e!.�lŉs!���X��y�H$��KC?x�o���,O����t;�&Ãr�"��@A��-z{���5��Aj�pX�>~T��]��l�<���^�	��H'<kr�N�C�Y��%��"@���N��=z�:�\����o��j�Ә�3ȟ<sO��;��d�J�LN����iւ^���f��DE2����Dz��\8���S?�6�bg+,�z�|W>'ǜٳ9��q��{q���uw�2
�2V�G��aY�8��p#��(��-��g���ЧX�9o�ɟ�Ӓ�W�29/p���14f�;ZV�sX���H�Lq��X�՚#�i����(��|ee��	�RHX��iή1�"g⢮\B{�/`�ׄDkjS�M��Br����6�vdR�\�T8�G��,�4~�Z�Y�z�,�>�.a(�N� �%t).XB����1Y.�$} ����;g��c����	 �Z� -���Y�`�zI}����@�f�����}}G"�h��{�|w�!u�\�m����,�赒O�LX��Q�'�X��n|���D��6q�4��;N��V�����r�&2%�pt��	��,쀍s�ˡ�Q���N��yEʤ'_�btn�;��h��� � �$�j�8iAguiBu�{4Z蔎��Nޖ�'0A��&�?� ����h�-����}�3�L�dhg3�"c��F�7�!���Ƭ_m_�l�����v�ksًވ�b��]/~��駏���O?�|{��z��jw��������n���q��������?>~����o��4���������>������?}8����O������W�z��p�����n_}����r�W�=�o-$����*�j�c��]����v��+i���"\�?L������ǻ��ow?���+.�ᢥ�n����oJ.W�8]؇@��.�������*�V�.ü�K<yݨR/������ث�/JYޮ����Ӝ��
�R���|�/a7�r�-�]���~��E�]�`����גZ���|d�9�tѼչ����-z�-y��/�������|u�ay�ۏ�Ϲ�x���������1/�*-�=$Uܵ�����8�rٕN^_	���O?��������E�<�1�:\�C����j�vg��Z���b�PƋ������Z��+��k���_FZ����gۿ|������_�χ����������|����_i7m{�����m\�m�y��<l�~Z��>��������|�����nub���>)SJ+)��޼�������>�����}��䬋}r�r��u�4<��C�M�_=]_�DGI�v�Q-zz��>��/�|7o�㮾��}���vc�'����Xvs�'��1K��l�����/�8/�汆\�?����k�밯7SJ��X�s�s_���:��Zޭ���F^��'J�9V����h������c�yt�)���[�5,|�m��Ƚ��{�d��Dy�e^ܱy���u�����J���cyծ[�ƻv����v�O�e����v��&�z�ӎ������a��]+���n_%�I��ڮ�c�G�����oϤ�}'�Lt}�}��)��V>r����=���3Q����uҖ����օ_ݭ{&�;wg��ӟ��d^b��T�I��ɋ���R��?�A,�r̻i*'��A,n��g*i�-���t��C��	�c3w�O� �_� �z�'�͗��//��Z�Ǜ�tS�k�J��l�we���%��L��7�g��Ӟ�	1��c����L�>0�g����뤭q�,�;�9�I���L4~��}��a��[��E|����iqn�7Z�'��q	y����El�ś���|���Q��_~���˝��o,t���t]ZZ�~d[^��y��b�_�I�$����Y���2�]����F�|q�vaQݏ�
q��-�o�s�k��puW���4��;�!q/�(hYީ�v<�.���������+������6�y�t�jޅ�Bܻ�t��8_�i���'�	��χ7o>���pZ��>.^�t{�Z=J��+/�&o|z��r��4>�G�n��/���N��X�B�%�^�_��뻻�x8<>(_�v�ٹ<-@hs>y}]�"���v��X�|��`,R���]��M������KO/=#�w;��s^��O\���*���T[�)�!�*���U�:�ڣ@謟���}O>�SB����//�1ޖ��X��2}�H_����C��\����Eק=�������o2=���C�sQ����qѺ[_����K�G!ӹh��'{�f���_�����G"�2���m�Shƈ��]���f����������:�����]ܗ��MI�����������ˢS٥)��n����Y���(���qLc���9N�4}%�Y).�,�Ň?u�(1s�ɣ����*i���C_My<�!�7�%�;�6*��D�����:���'�J<~��"y5�Ա���c��R���g�D�˚p��!p�e��ǯС�o��x(75����P�L���'��n��\qݬ�������v����t��Qb�VZ�L�Rw�a	^7J��������؝z�,,Zxɋ�|7^]]�޴#8Ӌ���㙨ۙw��'�����7�����/��zy�^ޯg�77��u<B��"��z&z��nL�ң_7z�����}��W�\��x�n�����N/Eu�s�8� Rɧ.�z������~u����B���?�y�8���p�'��Ğ�����|s��#��bh�䳜����L�y�ȸ����>>�B'�����4+���8_�Wi�}T�Pw��jus�3����(��u#�t���/�_����O��k����]�����PW�j��� �F��>r�o���o�˼ؗVN^7��o�����_߿�S�/��O|�����>��UY��S�L{���;��&uQ������W�����E�?_�vB|��}�����<_��p�>�>۱���D��u#Q o}���ߧ�؏�M^�4�#Oڅ�*�#w?'u	�_7�D�����l���H�^��\�Tb·G�����{��l���޿�a1��o���y������{{{���R��e��k/�O>�9i�N^7�e���ϯ?}���	�����w���ś��D'"ɗڲc�?��Z�[�t򺑨� 7^_]]me�+W�SIo��!�Z�C�:<��t����N���F�J�z����WQ;����7�W�ܖ� M  �6��蓿Q{߿���S�]~��u�h3]��o�޿�����N]�ߴ�����%�K���g�|ɗ�-�%��n�/�d8b����.���궄�Wnn��@�/$����ր��t�������mx��%$/�O���봚�{|������j����G͛�;�a�.��$�\�G��o<kɏ~�xZ�K/L�=��%�w����?x<auM�q�9_�,�ޛ�Z�џ=q.:~�|�����Y�ޗ��I��E�͗q�����u�g�b����ȫ:�����������}m�*�pxrv���<��Qva��R;V�����o�{�ʏ��ѥ�y7o˵��X�/}��_M؏���Ϣ���>��w��q�C�� �d�,\����.fg�4]��*�n���7[VtQ����xZ���2�Vooo�#���fn�}�w ��}�Y+?���=����n����,"����,��S�~����-*tz)��%�|r�8��8��nr?]|��������^޼����a�7ŵ��/-�G��X�7��%��o��p��'��9�����~��5�W���SϦ˗ot*3}13�Z��+�9��gS諷;5���g�29�T��J��l�C�K]y 2n.�v�Mk6df�X�_:����N���o��tW���d���o熺k�u���o�{�ҏ��)5��\��H�?����Z��_=�+���z���I���gQ��o�Ї_Q<����Ц�#�us���4�	�j?y�*�Ƌ��HL�ዸ*��H�/�����0�6�����R���(����~�M �ǫ��<kՏ�T[Ȳ���F�x՛����#?y
&�/�t煉�����"��>�h�<)�w�G��V.qً�bj�3)�.C��N^7.����O��<~ᇀ˕��BLs-w��h�Gli�^��noy����2�]����x���]޼>�{������i��6������&����!���/m�}�)�T?®�G���V7.����o�z����+epq?ޥv}��xu�t������,Th�k��x��ԃ�F�x�ߗ����|��4��V�Y/��nc���]z����T�~��=��8O'�������>���$�c/Cl!0y���.1�ru%��o)��;���rL��>�n$�K�x�*�=�:/��-&�U"�ͭO�(����o�Ļ��ڳ�Y���hi��E����ǠɃ�8Rf�����l��X�e^�m~�qD��#�<�zu;�gE�g���g���6�e��m�����;�6\p��o��k���qnwaj�g��~�����'q��!�@	�P��?G�˅Gs�'�O4�}����׿O��D��vw�������
O�/�D���$��>��H��Ė���</z+��n<1u}�������/�����]�c|�J8�F������
�<{�&8�u���������^�����ߦ�ۗ��nn[�~T�v�v��}ϲ��&�M��u,:,���U�p���4?���]�z�۲���u�:<e�7w��v^�_~߫�.S]$.���UG�l���f�����#�il1ޕ8�K��>�9H�g?�e�_)�i��?��� ��      �   �  x��YY��8�w1�V�o�w��	��l��q��TRJ�(CE>���L%�o��}�s7�{�4?�͵#4c�024��2���1���Ko��w�J86��D�n���&��v�>�G�PP"qaA*�m��D�2Z��N�\��Z���L���S1��X�ȌU1��j�����;d��.��&+	+pU���~�`��[7�s��=2��'b6ɴR"���(%�����?�|�����[�|v�h�_�i|=>�%ppd�X����0U��Ua# ��#Jh�H�d�ƥ#͟fi���	dw���
���yc�Y��� �d�k%D�������vf��[ۛZ��l/��z�o��S����pu����v��1���K���/Rp"�4'3�Sp*�"WjOb�������������,�����<o�q�]J=F�I�s��������<�e���x���p"S��|8�)�}8�)G�>\�)��}�*���p��+�^'�dpw cx�f�$������ht��`ᩴ��C�dͳ���:(���n�:�U^��J'�(��k��y�ݔ�/�	 ���L8D@�C�wEh�ҷ�1�@>�x�ЙM �X�GjuY��(��1{�6-?�f��{��lw�֛G!B+�G���0J&0SڝW�4�}3\��oǇ������*S<�Z��n^�m���y��E����7�V��:0� _y��!1���D�@u�{^b���r���	8�p�3$�gH�ΐ�3����
4�EX"pMa��5Y���C@�v���Aa�86���O���K���	�{v� �Ƕw.C;�)[�f`�J�4A�X�v9!ġ������t:NfE��k�F�����>>�|{#�i����g�.������/�������-�H�ϡo�ǒood������]߲�/��<C~p��&��M��3�7g�oΐ��!�!�т�G�'�J�X0�x
�"���Ue�@��]F��
ɁrR���x��r��N�FH��
M0Ү�V$hZ�zu��Xa�����CH⥒��x�1��0~4C�� _͟�֤�2�5��ý��p]�a]7����/GKv��+�f��d�]*<Ib�䄣�W��K(/9Z@J����m��#���9u�9A���q��u4�>Z�K�9u���ƬW9����r�l�㙊Ԩ�IME��B�k�R��Xݮ���-BT)^��)�v�n�Ǚ��m��)┯21g��	"A���[���P��P^c�`8����K" >HU���hQ3H ��E6��T�)H@�:��\ ��J���0h8a`��$h�`Q](����G�����~�׃Q
R2�#C?���4·H4����)7H�'��H�M��u�I��ج�e��,�����      �   �   x�e��
�0����}��&m욛/�ɣ���&���;7B.6�E����=�l�c��j�V-��C�BK�"�g��ףE'�p����;jp}���0W����}��r����$���N�	��vݓ�	b
��c^�&9      �   J   x�32�4���Ғb������"N(e�ed�N�I�M��g�&� % �oj^)H���4�,�׈=... �*	      �      x�3�4�2�4����� ��      �   ]   x�3�t�K��,�P�H���L��4202�50�52R00�24�24ӳ�4�)�D\F���ys���#ԛ+ �[���7�4����� �      �   �  x��Y�n�6�v���Ŷ[�R,YNbO�@P`ڠ�b0l�@o(��8�H���Wy��hoz�˓�|���Ylљ]l�F�@!�������d�F�³/��k��.�=���[��jY�L:��e�M����3�r͜�*��0��UeM�˨0�؅�򿥳�x�|��n8I��$='�����ZX�8>~cXk�Nq�x�ZËZ8��;�J֘\*AS�K�Nr]2KD�@�.krV���Zjz�Lɪ��h8O�	����<;j��t���$�Ҍ%��$Yd�x����OX�,��"9�������E:���(���_������6���tQ��1D�T�&��t�j��L�N�b�5�E��~elÜ�kY [�F��Y�W�J0gX���[q-���F�4:�J�ucv�yS
wE��0MK�f�r�$���6ܱN{�P�Bh��X�5eX��ͷ�Ć+�!�,9����v��4�y̤����	k�28s]�
+[���R���Sx,u�l4����c�t���y��R�-��
@q��-����}m�h��j1I����#hM��4�β��1����x�-|D����#�>���W��r�����
�a/9��(`����z
Tykt��h��5���
8�:/��=+��\�Ρ�  U�[v���R�\	�7tvDV��G:w�s���`w��O�q2��4�RȾ�Q^Y��hw"��邟+Fc0T
���t�؝�1�B�6���,����C`kY����ժS���{̿�hr�r�WB�zوq�,X�H�Yi:t����Htf7�S���3 �(E���B�!f�e�
���Uppõ����N���쫞SC����Xp%�Q�P��.�烔���͆]0e�U���!S�"��l��/����krQ�l�_ɪCT(�5G1 "�a���&�Xc��SA?�e	C�K�B���`����B����PWYX��-j��"	D:pMȕV����)�$4�m(i�~FRd�n�M!���j>l�]!�,���Vxj[�����
����{��w���9�v{�0���������v�G�5��V�OЇ}�����3^,��lys��������O�����ҝ�ס{�������5��Pܹ��Ao.�d�`����PGG�W��0��5�F��l\���I0k~»��/�j�m+:��?����������tP,���k]����?v���.�k�!H�E����AL��ê�$������.ū`/&�B,��i����Z��/C��!ٯk$:�m��-.�ᆞ�A�Jۓ������Z���I��C�.������?L�a����^�~�2EJ�8����59{���W�I$��xP�k���1@2ߍ!�8	U9A��O�m���U�{)lo�yF��^Q����cZ�N��"�|�٢�l�|��*��||��rK�B�J���M݅#?�28�V��P b_�]����/	FQ�a1p�Q����3��1���Y@&�������T*O���d���Yv�����i��Y����_rF��N�Gć��"Z��z��
�H� ��A��{a��{a��{a�i�����������.�E
���[����3�Yz���ÿ�g�k�?�5�����w؄���fOק��$���@w_��W��*�p�;}r���I���`p��}�|��u|pp�+��D      E      x�3�4�2bS 6�=... ��      �   !   x�3�4�2�4�2�4�2�M�l3 ;F��� 5|      �   3   x�32�4�4�,�H,JM�+N���M-ILI,I�4�22�4�44�!���� E7�      W   %   x�3�4�2�4�2�4�2�4�2�4�2�4����� 5��         6   x��� 0��7��0M����ב�(j%N��p��7LCW�L����ޑ�e�	=         �  x�}T[n�0�vN���%�e�����"N��K5�,KJ��2����px�|�O2D/F^��d��(#x����G�G��a��h0
���o:�d8��t�����c�	`�[~�����S���"����|;o�,\� �A�m� �������t�O�o��RfH�&�mG�
�>�Y���H�����u8~�H��&8 ��C4�O-]�Ii/o�ڙ�܎8�҃ǖ^Î���hz��D�k�l!�N])n
�n���u:N���m��)�6v$�!��;�&� �o��=�2�����f�M׏���h�G���-��вhe�B����k�wq�V�g����v�v�=n�����ǅ_i�-�X�QHqqYA��0����$� �j�-q�
�7+�����5��#N>k��^.M�lKb
zMu�Kq��)����l��.NԨ��2;i�p$��/�����Fg[�,�t_aX�R�r��[&HEK?�A*���X����?������q�         �  x��X]s�0|����%����׾PLc�1� O'��{r�� ��x2G��q�w:���|�s;������K�S�J�=�W���uy���}���ǟ#R '���}����ܷ�~��i���]��� �`7]��Lޯ�� AP ���K}��i�U�6	v	�uk �	��m
ۣ5p&�ѩ����T����p8���f����)3��<��-�>�>������V��J����w;��<H�"���E���ZT�l��D��5�6R+'�ʯ�hwm���vHq��w:	�,�ө���xB��X&��L�#�?m�v�4��Z�g�g5R")���Aʩ�Uu_->I#�D�����i~�)r	���1C7���^cP���!응Ѿn��yx=��g�I����,{F4�F+�*��Z�H [β%��ks7͖�"Wі�l�H	�D[#龜��Fe�~�j�z3+m~�m������Yr��螳��b��q	
�NM;døk�pu�ޮ�i��B�	<�]���g�~��I��oWktt װ�(4�|ϰ�Ҳ?GX�H�?�>�6����X�����b�J�;����%�ʔ{���ԕlș},�/fd3���50���lY����K����g��
Z�s�]�Q��� ���g�]���SWo�&�4%Z42���jD�Q$N����=@�E�x&�>Fd8YA�Q��Tp�|�a��^R�'���(��P)�&���^���vob>�è���-87��.b�/5�{���3�:�����]�C��T���/������!����Q�\�v>e#Մ��g����V��Fs���1cG��u_)c@�Di����O"�WP�p@G=���}��Q_��jY|�D��K�����4|���K��[�]�M %�%��ݰ��:&g<�\��Xq%�8����p8�&7:�         E   x�ɹ�0���Q��������al�Fn���b�J��͎G&3�9�8q���Ŋ�y��~��=         S   x�3�t�4202�50�52U04�2��25�300�*nfh�CܘӐӐˈӱ��(]��������!qs�j---����qqq � �      J   Q   x�3��U��+.I�KN�4202�50�52S04�2��22�3�4�)n�i�e�霟W����Z�� c=s,A�A��qqq ST2      	   �  x��V]o�0}�_qU�a��6	��1Mմ���i/&1�j�3�A��~�	���aBy���܏sbgЛ�ә1�J��4DQ(��8�7V�-]@n�u���e�5�������M���e�^K�?��Jj����ec�JZ2�����#��a�r}zl��@ �\+iA�E)��N�Z���W/K�E�ګ�zD0l}9��߲��ބȍBB�2�^:K)<a�P�XTX��}m$m�����%����
�����G4����%)��<
0�3>&1�'�DF4�1���`.�{�6���ݢѾ��7y&�cc崛Ӎ���ו�e6��-M\-48��䇋���Kk]D����l�x˓�r��{���%��%c�^L�F��8��Ȍ�ӝ\�D�����K[[�$p�ң��o���^xVO���"��`VF�7jڽQ73��ó�O��sS~�(a){�gc�#cG����'go���A�P����2�f������wk�kj\;�/V,���NiT��ҳ�yP��h�T>��Uyې�U�m�Rh�(ځT�c���K]ҵT�M�bTvI#���4�[y��	;���$��4K�$�$,|x�8��ݾ���&ȑ22.�;.>�
� 
9�l@�����,��\��;����y��1�/h�0B��8�H<�G}8~�~����z�      
   9   x���	 0���0��4���>�A2R�Z��j�c�5�Ї��4Ӗ�ŗ~��e�	6         �  x����N�0E��L��6��M�!ڤ�g���+�Օ�{37s�q@�2�.O�)�v�2�4�m�I}���6Hj+R#�R;�z �!���>��i�mۮc~�_�q?��e=�^�Ɩ�B�q�
�q}O��S�	{�����R'��c��s9�����O�KS~[�S�IG��N��̥[���z3jv�����e��Ƨ��SSw�˽�3r���3��R�hHm;8�%�����^��}�T�3��lr�H::r΃f
9�}
Z
��M$$m���1$��%��@m\��Fm|=[�	�7Y�HB��r�V󫣐��崗��-"��z��gdÞ�������ul��%ڰ��R�M��B���$D�A�ivh!m4_@v�R�W/�&>g�����a˱�����]q�y;%^��k���$D���kvol��'���(�`FRӍ�d�����D��-aĨ!�z�&i�^�	B(=hq�9�9C�����f���l�O      B   =   x����0��UL YG5��p�ɸ�ZYGqqqqsss���////�N_r��"�d�      X   %   x�3�4�2�4�2�4�2�4�2�4�2�4����� 5��            x�3�4�2�4�2b �H�q� 4�x      K      x�3�4�2�4�2b 6�̀t� 4�x      H   !   x�3�4�2�4�2�4�2bS �ȏ���� 5`�         �  x��WM��6=˿�@��bB$�雱)��GZt�����ʢ@R�d�ߡֲ���v�4���f�̣X�|4[H�]Gh�n��vV; �4�צu�w�p�{�ғN`��-1�Kgz��oe�sˮ�~g��#O�)�;Ol�+W8ikڰ Mx��2͖�$��X��)�E�3�9��Y�0��[�4Yz w�o���+i�A{P��H�I+$�@:kNz�(� R��/������-2�՘~;�s �)�<l�n�o:07;O�/��w��|%
��2���s<��[����V��"��4��f���z�rZ���2Y����6����|L>������c���l��u�#U�v�7����ju ϰ!�����tdt�����<��Ȉ�rF�X�%-3���b$�ح�����xEj,g��xr.���O���G����Y�\M��R�f8e�#N�"����(�?A*?�q8��*q��2�N�O�iq�����tA��m�Iz}���1�N���*2�EF���k#RZ՗����;�/�y��:���|lЎ�F7@��';+��l�A�AX�ن����u(Vnoy8?���X-fcF�zb�i��,�	,�"�/o�b�7�6�$^�����e��QJ�m\3|f��*4M����4K>���@~�7`[����ؐ��1�zoø_��k%��Y�:RC�1��_�D�ہ
��ļ�-q^��|9.��B�1���YE�bƦX�{=b2<t��f�ـCM��&פ"_�PG��cY^2��� >{���x��?κ�L]�i>ߺ���:i�󅠕�6E�f&@Y=��!^ET��e�����TKe��sN�4�C�_8�ɽi�zˡ5��t�rc����[b7���+
�����y��=��Ћ��߬�Bd��,�������#],���W�      G   �   x�u�1!D�z8̊1`�.i)�l�I���;��/�����ֱ��^��s����`"Q�"���U���hC�
����6EuL�q{l�Yԁ
*���Z� ��7Q�+aqqa����ZX\���)M���?����      Y   D   x�ɹ�0İxY�G�N_/�)l���lv{:=v��8�RT,�9�8qe2�Ŋ��xx�i��            x������ � �            x��}�r�6����Sh���S�o�v[1;���3�=��v�Իq��PP,J���I�d�C��z�$w �/�f�1�.1�DH|�	$������&�/�"o����Fyt�T����fWEMZj�P&��Y�ަ��Y�T۴�Q�g�/v�zq�0(��E�4M��ԋ��W��6�ʒ�YS���u�5I%?����7�	t�������m��I���-nH��:�e�yQ5z��V�B�W��/����Q�ba�_$�A�"b����"������d5b+�~D/Ҋ3�B����$��A�Eq�)2"zp�֩T�$�bJ�Y�HX����$"#��Q�v��
�BM�Ԑ�Շ�
{Y��(�q�X^4>W$(�D�!���Mު�����G˨�<�&@lZ��:�U5������Kp�8�[Wb�"�\�eD/����ˊDŮi�����@�@>l���@�x�d�������I�˰Ԃ���SN�Ѐ�>���H��+����ć��gE���/o��>�z�y��I�6�̫I�N��i�Ҵj�A��PkU���M��"j�%�4�J̝��MNN�!���E��g	I>$d��|����jI�i^���E�*A��}碸M@7(�Cv����A�nv|�^��7���|BZ�B��w��C`��SS#�
���p@7�ݱ�ʊ�6�"#�hY��-�H��*Y��7;d��C+�'�0*	���a���<��6���bş1\cى |c�v�r�	9Ւ�2^����\��t-��D��z*���`r���1�=� ݽ�1�/����$���}z�<{x�q�ek���FY�ʦTn�(�}H��w5@W�&v%�Y�wBL$�3�y⏠���V*u� &��&�"���fJ)w-d�����`2��j5fߌ1fQ�.l�u��	���¬���zI�>�!"e��'u�����ƈ~������ �
��` za��%�g*l��h���d	�;gg�/���")�h����9�	��Q�V�cK�N��n���R�W��iw1�8�,��X��Ga�o�����Kۚ�!B�2�%�a����k#^�l1��v/Q����1��� ��	��t2��EԣX�	o����$��L�����,�)��iI�t�|�W��Tu�.�x��Bޚ���Z).�,i������T��������0?���F�����eQE�)���U��̠���i����Q�բd������|�-��.�O���F�-��dy�K�5X�95M�^���!��<�51�>$/j����� ��*��e���_wi�������=��*5����{�6���5ҜG������໔}EG��T�<Cx�?\o�վ;X$�֭W������Y��:�Ҋ0�4)�n� :}�O��&�.�~������:4���Z���R���;$�'���y�����\�	�K
N���=E(�*?�|(�IvA��JA�EK�����O;�feD��&+���5.�
?R�[���d���X|_��6
)�(㏧)(#�ex�a�$��Cc�����)r���������<eǼ\I�N�#�{�=�'Rh]��ܫ:�ń�@�fy���L�A��e��@�I;��̐���/�~C��ᏍY�NM��I��%P�]��ӡ�_�^1�>x��s�lV�Y�f���m��pC���@C�bw�� Qnk;P��HP��L�k@M;Rj��J�wt����6�STE���%�L�YKotP�G);}h�M��6*K:�Y��nȣ�W޿��Ձ��-�(:���s���(��Q��x��;G�]���.�vc4������2=��!(o�P�!'��Qf��#����a������6� ,�m���6��]fO����3��׻,[�j��޷N��Q�90Es�>1��� %J>2���ǲ�eMm�-3�W��\!�x.�"Z��SK��	�H҆M��6b�+�`�K
yճ'n##���y�'�.����v�G���N�}��Jȋ��sol0��o��f��x��i�n��To��[��ڦc����	����6ʜ_�U���*�K����<լ����l��k���_���DIEUnx�bQ��O�F���T@�����#�x���J��y���K�����Y�C��+o�Fo�9��ZA:�^ 늂�����Q.�Utݼ��?���6�!s�GW�`h��8��+�Y&��N�aVb:;a��`쌇_�_N �H�?��?���%t~���7���	c����M��{;Ay��3�A��<Y� ���D�a����QGb}0ssx������͊�6'�}����c�P��kCYtڒ4bی>:id.�[
��U��oh�A�"-�9��a�(�g�h��E�R���2S:1G�� ;v�v������%�C����jٌ��i���_�um�Z,a(�k��:�$rN�]��<��{x<nى�Ӯ�p�q�q�֗-lD�g�b2ռicbt�q�I�k��k�hedLPH�<� ���< �E��w����"���2�i�e��Qެ�/ܼ6p2�+��:rg#�YzY�`��[Zc�XDj���!��=�u���t��;�!Ki�5u{Z��DDYV�'k�	�9��E���X^F���v���@�M��<B=��,MjX�8�{�p�Y��e3��S�����+�bN�jJ�j��ƀ/\�b���ը{ǂ��6�&o_�ǒ�d�u?��t�Gnnwͦ�V�~��}�k�����iㅔ���8O���M+m�<ݣ�!�����TXW�	P����)ࣀ{$#/��T��k���<5���:�=+=�@2�пmrX�y;��<eQ���w��E�'���_�kq5� �ke/�V�sX�"�'<�D� ��@\lKTSk'��D�+;�z�H�d�~�+�fWs^���u��j��=��|);[��0$�۾�O\���7H!׫:)���6$Q��Ɍ���4�G���G%k�k�TE���]�#�WQ�|I�hW�7�M�+J�C4�ڟ����,��h�&�$�-��Z�\�vmV!��x�l�B}��o�i�Hw�:g�z`�'������H���j�X�i��o�¾Nۤ7�����_wH��ڿ��H�d�?�Fy]T�2��[��\�N������&)�?weYT+UV�zc��G����{o�D"�.z����f������#�fJ�����w~J�S�������OKs�K�J���#)��p�K7�Mےy�;j�?�_��/�˝L�ǰe*�j���k���\�}��(��-Te��/���?y��믿	�U��������3d�L��Fs���>�T�� *�M��3��7�K+��0��Vn���zl�'�Ҷ��	���k_Z�-����d����yB�P���6T&e�t=@ي� (" �?�7@��c<R���.u��E�E�����TvYf՛�L�m�g� ZS�iR�I]�WG�S@�*��3x�L Լ��Y�G��3�EA�T+>[�~�K]$f�T�^�t����Jg�MW�K��}rU��>@l��0B�#d-瀣�)H*�P*ݏ����G�Q��Yb�PR�C?(?M;�k�n�++}����.���F���}1��,͓��_�Q>Tl�'6���V�E�(��{�)�4������H}��H��-��>��o��ߒ|�0��
�_��j5�/����0���~� �'��`��V�4��4��Ar��c�#�h�?�b�.�[��2��۲�m]؞x=���Q���X�%>7_���ɆdFM�;}х-��J1,�r�2�#O�kI�͐��� �f��$7���1��$G(�h� ��&�2�-N��1�o��/{�EO�b�0-P����"(����C�`=���3XϞ�s�ZE�<I�'��L��Y��*�pu;JK[P�$�
���+Zv)y`�dK\�f&>V^'N%��7��9#�ř��,�T�o^q� w�֥�ui[�B�b�C�N�J� j
�?�`�������Џ����O`���R�GQ�%�C�_ռb?��|��.�    g|u��^�PK�q�]9S/,��pܣ0N���*Z�G�S�T<�1U*ꀫt�ܐm���@Zv>������Q+�i6Yk���  ���Z߿G����*��7	��~�E��/d�U���@۷q]�aam9 �P�==�>7�� �}�n�"4����cE^V�U?A����ۤA�@�2a�BSH�U�Mp��Х6��f�H���S�}O �V���1|�I�c��~`�V���vۭz���V�{��g�������6m�s���F�7B��o�x#�!���lW
{�ۦ{��7t8[�C���S�\�����)]ʬ`��Z��WP�{��#�s<�4�q2����:��'�h��k���x�{4}Љ�ӡ����ҋj����G�'h��C&_J�[��$yXѲ�듆yǧngf6�Dt{�1�j��)au�k#�m�G�(��$�E(�����
!y��+�������]��6����v�Hd�6�C���|F|��e��x�bR�'eҶ|�-��@�m<��ݰ�! ��^~*���\���;{�=z~�^��=�WW=��Լ�W'���] � �OK�' -��e���X�X��n�z|V\�U��7��}��Y\T�e�5��,�g�cÀ�Q$���Y�.�I��\D�T�w֏|�e:ߗ�HK_���F92�%WH,"��/�q�~�(o�,�j��5��U�jB��&�.�P7T^��[��C_"?����7J�D=G�����/�)%i��0��?/�S���
/��-^�/�<� h���llú�nq.����ӦN�RՈ���$SVʊ3��(#�M.��M����'5`>R�d���lZ(��(�}H��w��xS���	D��]d�tQ&��TUx�%@|�R�+(H�� �����Ĳs���U�&����b/�im{�Df�+�se�3'z�Uf�_�G����hy�L�@0:B?1�Q/��:TU$]K�!��̪s�j����)'hhA�Nūl�2�Ò~�L�ߺ����L�>[$��q&X��YyÌ]�TQ� sǯ;Jr�nk֐�i��.�
� 7	g�(�i��Ҭ�d�ҿu���!����U��s�
|N_����+1���&d��k<OM��1�5R�������� }�a���!n����ZD�z�L��Wo�lvW]��}�m� �>��LȰM㪨��C�{��m
����U�B�u+Bs�6�m� �D�+��GT�M��ʶ�*Q�Ge�%��^ҹ�������O�w�t�C��Ӷ�@Ϧ�7�O=�+i��G��w��������Q]fi��6G!�e+O�^WIM��7y�REv��wW�{x��a���yyi}݅��$o���-U��6�"'-`��18,y����V\��1��j��7d�V���Nm5�4�uXsɭ�H�"[kbz(��!�	U�n=�L��n7�-Wdđ�&�e��=5�tJU�g\f�$[�������{�<^(��U���W8|G�	�O~��$�-���bY%e���p�2]���C���K.Y1\E�u��;,ʉ$
��]����&'�ޭO�MԜ �$+��G��Y��8�z8�������?|^��_r�?��O�������9��%����#Fq����D/$'��^F>�	����8i[H��rE,����r��ݏ'������_��o���o���M���+����i[��MTۈŬ�~��7I,97��Wq\���DL�����.*Ԝdb5��9�'6�]�ۜ�#���{B�wu�S�D���,�oO�W�^k�
���J�􎐰��������N�G�7����pZ�O��N��"�ٮY\V|N���
���%��O{A����b�{������{1�=?��e_��;+�"Z�0��f�f�f1K�f�Q��%xuS/�Cb����:��H>��]��O���|�8���I�Y�|��C@��EB�-j�Y;F�!���6E��j����^�0viB���5��G�6��q�z�F��E62�f��>�!e�4�Ze��j�=7�d���BA�����ITb*�ݤ%�����GRμ�����e����O��Z�Ɯ�0Lߊ90�RF�U�kV.$w���=���\yO8	 Q��$�J}��F�B���2�0X���h��P�<�;�� ��i.�|�c�6��d�ճ���p�ɖn#`zDy�u?����.PwM�JQp'ǡZ�_m)q<V�ș���Nhݛ�sG��'�S)��\ju�K)y���)ɋ{�y;�����.]�ƚty���IWg���C�d���a<��D�t ���p||���々���0�0�W_�{� S����@��@O�eB��:��d	j�!5TK��#�*7�r�C�g �w�M;0I�/�4��V��:� �z?Ƹ�p[N�T���'p���:��@�žꩣ��zY���;-O��˔Z/˕FNk\��T���s/�K;�v�ux]�迲���j�A�dW	jnR�'�������a~L��Qv��W`�O/�i�Ϭ��;f�I�C��#gM��CY��^�U>��2^y�CV���8���ж�]4����D���'��-�R:��0��Y���'}AI^l(���ͺ��fץ����M�Z�{5��Dh�߰�PU�ՃJ��	T\�6y�p)�á��e~@ ��~D�N�i
�����<ʎ���U�T���a�V��,m������I��,�|�i;��C�=�\��7�SΣ��h���3���T�^q�֧���a^�wk�U�U�a����T�X}�X�x�1M��Ҽ(�`��'�u�s�䞟�5��TT@.��Y}=سb�.�EYz���aat��R,�X��"�|��n��G/�o�u��4��!#��8?�����>$x;@�>YL��'Ƌy�/��W��x��:"�I�w�g�f�Q���!�Q����X�����kHj��Cb���"wx�*����4�J̝ڵ�v�xF�Ң��Ks�u)N�.�4����UnB�,�A��,��ojg��~�fD�vT�&oV��:�����iU7o��&� �N�n(wDl�����Yd��Ӽ8nQ/9������'��)g��-z��e�)�#$x�Y%��iJ�!"g�?�#��(��ê<�P(58�gTeiR�
�i^�T0w�0�#������eQ�-'0�����1���J�d��1�8\N��R��$  ��m.~˶xY61���(��S�Ͽ�� �C����C8<�p�8�4���s	uN;������DT|�h���v��6d�Ǉ1�s�_A5�'A�����x��%xq�)g���^�M��	��q�BT���\`�[����+��񌗘�c������6�2�$!�>��q�h\�A:�^��Z�E�F�6��i��7Is_T x��d�h58Y�9�og�	�^	�J^��o�v�M��) H�֙��c���F�}�>n,܍؄Ͳ�W�v��N��|!��yi�^8nx���/�0v���U�6`�1����9�0�9�YO��T�Xg�I�L1����~�ַ#fKp�dΕ����3%�<�C{��=^y�����P��X;I8�)��!��:�~o�ɒ��v��hױ�%��H@b��ӉXg���:F�J�$��t�����a�b�l���W��||�G�������Z�d���������*�0t��O693 ���uR�s��W�sa,�@�%jZ�Ƕً ����=���%��'y�[�m�!��~�ˋ�o�����l�Ə��b9�E���_GZN�!���U	�W|J�D�ծ���^��=a}��eW�V��Q�Z���D��dkkN���Rn��y�����N��t/�j��M��y�a ��7�ײ����kht�2��"�mP1��c����8$k����u�X�i��a��Ѳ2����P�xwk�<d�!	yΩ�M�^��;�V#&5�B��{�ߎ �zWb;�Tf� b � ����jP���FK��k�-^�d���G=�yZ�c�,���<>������IJ��À\��#ל�u�����]Gd �  �@4V�=)Tu�H�KuF��7P�' `!̴ ���f�S{��Eg�׈�o��*�V�5X!�U��&KsP� �a�*���n��9%��㨠����OEc��N)*�� �9	Dp?����h�c*(ŋJ2��"�qB2�U�[�� Y%�i���Yf�0x' 2�|i�3���2P�ɔ�w���UU�nOWw;V���(��j��K���%��;ww�!�L8����{�L�y��)7Q��b`��N	cNc�8F�1,O�G��VDB���n��@�oj�*Τ�����+�E�*�J��f�A�0�Q�^ާ�f�ze+H0 �Ȝ�����K��x�#`��"���Ia臡?`�?%�"�fAO��6p�?p��l�A��|���|�9��:�([!*�N�3�'�L��f~�VJ��_�Mz����8�9@&�����3�O*9�3�#�k��.�'!�/��ڌTd�W�J� r�u��q��5��,p<��H6�1���q�+ �u�a?CI�aRCi����l+_�A1�l��T0������]X�l�����58���w���^�S)秱��~�.��y��^�5�f$R�qs5}���C�	�`�x='�f�� ��K?�s�|�O*��[�ԢcЯF�%�7����d�W�7k�@ ����W�"��:,1���`��kq�,%���B^^]�=G#���Z	�H,�pd�S�kк)t�JM+����wZ�-�~��l�
���oR2��`D-����um32�d)���c���Tu�,6��Uc�ҷ#�M�t[f�|3���99�f���v�ol�a#a�Uz��Gc�d�#hNˠytwU�5��CEU���Tf)�V�XM��w��vuR��2��i]�ZWⷸtޡ�W=��߯�*D8HYc��_�A��Mª�R��@q ��)(	��a7�se��$r>�B�E��lw�X�;U	���T�!�'�i�>Io���M��Mv�����vL�������O����+v%�)W����yo����\Ymz�"�{�>����wf8����i�&Pڧ���>w�8=�KY�(X7`���)Ի9��4�؂RFUe8��� �����~5���Sg�Y�K�-P�$8�D��7�A9�L?��~l>Ԉ�UT5�ò���P�/�ǱD@�sر"o��k5�$�~	��˽f~j���S@؈Nr$98'��M��^ƥ
� �?��;��O�'-xa<��-/�Q?Sq���u?��m���Js���5"��џȚ�I5-�9�zweŜ�%b̟�!�=t��C�M}��Q�Y��1Ѿr�"����5>�fE�U7Bh�'	k6-�9�X�~<��䦨^S��[�"��1�}B��*�qɚ~8O�����h�r��z���>~�ſ �]��x�d$��IU���H>����wͦ �6��A�-$��#��G4�F�-����G�w�0��ݷqJ74��	�T;?��.8S���_��1�=h1N�8K,�\F�'��m�~4�O�;�e�c�YG�Ѥq��[b��>�6��|E��)�}&��%GQ��m���W%�'T,v��uU�vG.�N�;Oq6X�`}���}���^�o��:&_a=��X{�'��Y=�ɍ�Ψ���am4���Ϡ&vN&�H樏l�F��!�w����^8�� �z���8��e��8���y���EE��69Ű
��=�`q/q�[�f�Ý�>��ƚ�`��ݾ�� ���{���I���`^��}mD�
��oA��b�m�Cx�jv�gۺ���Z�& }��3��*��,�*��}EWC��0��2�q�!�ImQ"�5����|�سvF�ʯ��1g�ڧ^q�yU0�,q D�&umI�a$?���Ӻ��rx]�P���X��o:�Y��E��x@ Rs�q%�PN�����v ��8�"�X�v��؞0i2o�x�%f���st���s>��l��A 0}�н����4�q��:��'�r5'��)��?��R|����5�nڥ�7.\{�b��x�Z	_SB=o�=&?�b�MF'�=2;�a"�s�yJH!T��K*uBp��`<��������˾L���vh��A��:b�>�輔ݒDҼ�l+��@�9iOq��ٶ�	���l $=	����u@��*ˢ�e�D#��P�v���H�C�Saa;́�æ�-��!3�%3\Y��������R��;�x���XMwS��sN^��2����QO�۔p·o~֞�}q5_@��*ֻXJ�l[N\m�쉁{��nh�6쎠6�B��\�v�~�!�A!�,B�y����ܴ��+�Q�sV^��#� /q���VT�D����7�; �xGM/����e�ktF�Vz�b�!���ۤi[�>n�B~�\v������ZnNj|ݙԸߖ���-h��s/ƚ0v�l��S&���~-'�診I�&/��X�։��ޑ?�;�$�M{׺�S�zT�����P�9o�9��>+�n(�'h��1�(7E���e��r�Ɯ��K�7��[Ya�n�k�+gG�ĝ'V�Ɋ��"�F|�3�V�:�����̙����� �s8_�:�4&_I�l�I�Ok�
םP�3@�yo/�y�D9~��6��xpVg���aZMO����sޗ� �dk#"z�׻,�d�t��̫tPk�-�����	jJ�B�r�7�춆�-��^�&$?k،���_�i��-���O9��2{ă�9���p�H����EF�k�L��˜Ie��l�6L��������e��W���?<ЊO\����N�����u(.,T��K���*\Gb�����KR�ݵ���6��JH���)�ic��_�*��LQ<�=��6:of� ���ii�8���g��w�un���9�ѻ�M��\��E��HU� �V*�t��>���U�$�            x��K��6���H�<I�'^ۙ[*�iS��{�u� 
���g2I�/�����D�qf�@w�h|�@�ûo����h�y�������q���qyH�H$�R!��6w���I��w�������k��{�ɯIc;YK��Ͼ����D�CZ0ى���G��.�U
M�򏔻�{{��<����m|.~�?(��z�I[�n�'^D��+Lx��
d�dSJ���iC⟉�R���R����!��|E���P����W�F��}�+
2~��#�Ok�������N{�dGèT�%��֪�>g}��W+��ܣķ�dwb���Ģ�q�����DН�}u���?m���]�*t�`7 �vUJj%[6�mB��!�]���޿Ld��T^����V��/ԣB����O�����~��k�}�.�?���@(��_�k��˾�B������lȂ)����/嚂%a��釟�*�!u������q���h8�uZT���ι���i�HQ��9Cz���	�T�]��y�����,�t��x�g�u�ah�"Q��������x'���DA�{HL=�����E��X�+~`-M/�l=�>�<
Ts��1;�#�!&P�ƴ��ӊ�{t0�H
�L+Rv�
���
���PZ�]������ ���{���&��I���V1c�%��L!q<���Az���.�"x����߳�\;�d����-���r��!��q�j
MM�8�B0�x�xa;q�:��k��p�*�=�U�#���� �H';("�WE�N��Jo��,���X��ό�8�j�3�%���9QAd  �#3�k���ۏ��q�x�;O�0�֪2l�l�vAfn���m5s���k�a�o:��1�bC�-0α��s�{Cx��h� �r��p�W�@��ڶ�E���Um\@A�"g�9;�A9�:��v�&�Y�Yܔ|�{y������.��L�z,�_8���w���u�9� �KRw��-��o�-EXۿkh��]�f�P�M^
r�#�z+\	x��DطW�c!S/�D�S�y�H�1�n��8�go��c���f\e��ő��D�^4�Y}kQ���i�����+���+f�KBڞ?��>��#U/�<JΖp�*�S���Z�M�Bc���m���H�5��x����kp�Q�G��v��㸉$;&����=���j="H�y(��
�&�Z�f���${�h���aiV�o(@A'�b�T�r ���A�0�`�Y��&cV�]�F�����PH��l\$2�5#����ђD��D���'\�E����V������X#��E��6j�qy/K^���) >芬�s!�h���s�؅�>vő�����e��UH���l�_f��� �^�6b���������[Y����Ec��m���H5��(,��c>�
�kX?�	Q�(^	��]�Y���T,kF^|��Ӥ.l����c{���q�x,h01J����ĵE&U�$E�K�p��Ѹ�V)��K�`��a���{�7 ���O�K�A3�m+b�.wC�z�$� ��W�v�ut����/$Xü�M��7k$�q�8�l�Xֽ��g��B9}j��U�{U/o�*�L=wf-H(i��f/=*V�Sd^������¯$F��T;�'�0�,/�T�"G�'�	}OG�bs�vE�� nj��ܴ����	y9�%R���˯�6`훰F�~
֨�7(��Sf"�W��
�^�>�ayݘ���ojd0m�� �$u����51k15:K�����~���k�7�	�f�D���r=�To�s�&�t���H��-�`����.v�=���~��s���c{�&�`��hx�'�yx���=u��ON~?��7�y$Mt���p���e�����]�����;@GF�y�6bŁ!�s�{�`H'�HA*P^ީ\�&��r��:�"�~KܧC�c��ױV4�v]Gݭ����I0~}��2�:����@u��E��HɮyN٥��X���C���tk��,A��G���(�� ��ƨO�_�O�i�c���}�[����f=Qx��ArE<� ��^�O�}�H���S]-=��^�ěޝʒ&ue�R�����.
���N���?�1�Ң4�25g�A�ס��(�?�����4����	��s<�����d6��]u�]�}:�rRj�>�]$�K<y��G[��tq�P.ɭ|���G.&��;�7b�2� ���\��p�b�ҋNp����K�Y�.��Z�\���a�~ek���6]� ���j�&��||^��=gO����|��V���$�Py����\�w(u|�2w^S�;{:O�>�w�p=]wUQm�8� ƹ����y�Q_�����#{��at�v������Ӆ>q9�l�O��Xe�8|og�V6</�,��B���esBmX�>�@�g:�D����(.��3��P�d���L_�}v����\�v�.x�|�S�R���܎�)�0�:7��zI� {��*�2�X��A�C���2i�ݫlIX()�O�Z��O�a� ET$o�9�s��o+�&�<oI��b�TK�;�Dq"�2����R�����R���k�!�+�vW}Г>�7����z��/�;|�yjҮ�o� =�MJ��4��#����D��Z�(�T&�����˒�y��5�^��Z�:�c��Kz�z@���1ؑI�8$gR����e��	��b����\9$�m�����X_Q��N��O���/�n����4U�Ϩ�U�!6[��V9� k�umK>)�ދq�nn�@����v�yN�a��{��Z�Ⳛm[�]����Q�L�אzɁ�'�/�*��Uh���i�g"\�'sM�=��u-�o8��@���;a�>�Ҏ��9G�SV[�9��zF�m�P}�n=ɐ���#��,8)��7�Y�۠��2
�-�גJ� ���|v�;���y��z�(�J|{tugV`,�52I7�,����f-�4(��籵; �e�@7��{�=>��K ')�LZUf�97V3�&�Ժ�4�V(2�����#^?]��u�je�!������C��1�1��o��Ww���3����E��cx�=V����i���Ճ`4��[ʛ�H�J>Y��J?�7�i;*hzn���.V��z��ņ�\ N.���f�:���[Yh4��f`-5s3�\�l�M��c��2�|L�hZ�(-یhC�H_�4>�5m�:­�s�ڀ#���5UQ���hH+
ƴ���A��8+�iH�t�\2�5�kk�k�%Rr��n����6R�����F��=��(:u��jw��[�a�.CR�b�Y�v;����>��S@w%��#�/���}+�}F�	ɋx{�e�8:�ő�v�v�Z�~�
L���ƀ��N�t�`����e��q��O�C5��V�!Tú����ic�&���g�NK>o7T�}�N��zҞ*Bӥ��|!|��g��N���x�[��sV�!݈d����^J�Z6Y�VZN�\p�SS��4��p�4�X-E��V.q^ܚ.Eױʃ'0za����U���!G�i0vunG������S��E��#Y�$�C�B�t��j�� �j��a��r�)�SKە����ׄN�mc��|v�M�7�B�2���΅FA�m�i�_/������}�����F�{�nu���-����J����H�F��H�]V�s뵻z5/1�m���z��4'�z�[i�2�Z4ˏ�':nw%��[Lg��,:9��7>���n3���]�\f L������Z3��9��}��n��%&��q�F�@=;�n�S�EA�)Ѷ��S���YS�R�HpJ�D�4%Z���An�����4��ܟ��bl�ݑn��K ��z~�F��7������nz6�D�fY1�g�Ise����@��v�����Y�˿-�âV�� �7�"�ZJl!�@�9��>���G�'�:5�O��EuA��� Ғm�E�>��he8R������p�Vo>��ͰH��[��jΚ�"�Bfe�ɿ;I\WjU�Rg���B΀�� �b�E���Y*�Q �  կ���Z)��O�ɢ���P�i ��zl�IO�|*U�!�G+őK������Bp�մ~!��4`  ���lc�D�|X��"�Y+F�1�l�	G0Z;�D�jQ#����v� ���6A5M�Q�)���M�����v����aO}�A ���:���[�T]'b
1�ZL��$����!��l"��0@U5�Ǔ�tp�hD4!�V��=%"������졩�0 4�5�F����h�iD4!��M�}�'�5e�oxj��~rҙ��[�Q�n�'��n�;�˜i����-7yU��iDh�tX��Z|�.��W��b�΋�h>u���C խ�6�L�̇W�fD�l�(�/��ZPPHZB���z�r�e����}����iRl¨�D.���G��
�j�Ep!���#;�i_�� �2�����UE���["U�1��Z3���1	g�Wu)�a�c"���@�����jj\���K�5�͌ju{��4
�QU=��'{>�*�G����( ���ǋ��@�6�B���<�?�2��g����ȓV����! �I5��T��i�hB� j֊�8x(f<y5$X�O�i����#]��TS��B@�Pё�m��{ϴZm>�:��ȟ�|[�ѓiN�����r����o�����Ço߾}|�����������?||O������?������w������7o��{#!            x������ � �            x������ � �           x�ՒMn�0F��s���SJ]Ej��t��48!�(;�Q��'�!�*� Y��{�7�|r�vh�*$<�^�.���M��N�W����AB�ۜ�೙OGpFI�.a����+��=�2.f-���f,�񳭛a���V��B�l[��c�.�t�0��J�X���Q�=�V�jqO���΄/�Ə6"��1��LD<��؏��,�B��K�vM�Y.��.�,�����$�>�.]�"��0���O�W��FDȅV6O����k!���_}Y	,         G   x�3�����,I�4202�50�52Q04�22�2��3�4E��*�Y[X���b7��4�4����� c��         o  x���mn�0�'��2�7�Ct/�?qSv	 pV���C��8]�c���y�xF�MW_NU��e����l���j���}B�6�-݆��D�ۑLS�Y��I���?[�8ەd��xRȤ>��xS�S�Y�/~���T��+���:��B���*�;s�p}}T����!�B�0����kyb���`j���3-)"K��#�4�����(v�k�i&@)���R����1��Y5Cu�t0�Ȧ���@3�����s���T������O�H��F�B&u:dI�y1�L�з�K�`�U�o.+.���T���EbS�����p�E�M9H%�:B�+���~�ԑ��:���ඈ�*-�&gI��tnv/��s���\J��<��\�Ħ�S�oUZ��M��5/��ϒ���$�|0���x�C�:�xl$<�.I5�<�M�lI���	G�:��4�q$D��p.�A�XR�$bI�y1�`Kv�qm���9��J��j�S�xKa؂�ϙP�{�O�a��R�'2���m���s�Tp_E3M��fI��~���5ǫ[۸������wKAΊ�>�v�麺*M�ྊ��]t)�>��a����?"�      !   S   x����@C�s��z��:�9�_��cV�}��k�wߌD*�x��<r�q�B��q�!b,D�%j\���J�(q��Z��O#      "   �   x�u�A
�0D��)���D!;��x�nb�j �Rϯ����Y=f�Z�z�R���F���JӘ�N�&��H�C�*�Q_L��u@v�8��gy�}DC��>�aF��?��9�}�o�$pX X6������@RE=      $      x������ � �      &      x������ � �     