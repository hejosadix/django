toc.dat                                                                                             0000600 0004000 0002000 00000154756 13457160162 0014466 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                           w           django #   10.7 (Ubuntu 10.7-0ubuntu0.18.04.1) #   10.7 (Ubuntu 10.7-0ubuntu0.18.04.1) �    C           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         D           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         E           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false         F           1262    43494    django    DATABASE     x   CREATE DATABASE django WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE django;
             postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false         G           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                     3079    13041    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false         H           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1         �            1259    43526 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         django_user    false    3         �            1259    43524    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       django_user    false    203    3         I           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       django_user    false    202         �            1259    43536    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         django_user    false    3         �            1259    43534    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       django_user    false    205    3         J           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       django_user    false    204         �            1259    43518    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         django_user    false    3         �            1259    43516    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       django_user    false    201    3         K           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       django_user    false    200         �            1259    43544 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         django_user    false    3         �            1259    43554    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         django_user    false    3         �            1259    43552    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       django_user    false    3    209         L           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       django_user    false    208         �            1259    43542    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       django_user    false    207    3         M           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       django_user    false    206         �            1259    43562    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         django_user    false    3         �            1259    43560 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       django_user    false    3    211         N           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       django_user    false    210         �            1259    43622    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         django_user    false    3         �            1259    43620    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       django_user    false    213    3         O           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       django_user    false    212         �            1259    43508    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         django_user    false    3         �            1259    43506    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       django_user    false    199    3         P           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       django_user    false    198         �            1259    43497    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         django_user    false    3         �            1259    43495    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       django_user    false    3    197         Q           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       django_user    false    196         �            1259    43653    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         django_user    false    3         �            1259    43665    store_documents    TABLE     1  CREATE TABLE public.store_documents (
    id integer NOT NULL,
    description character varying(2000),
    type character varying(40),
    "subType" character varying(40),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.store_documents;
       public         django_user    false    3         �            1259    43663    store_documents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.store_documents_id_seq;
       public       django_user    false    3    216         R           0    0    store_documents_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.store_documents_id_seq OWNED BY public.store_documents.id;
            public       django_user    false    215         �            1259    43714    store_documentsdetails    TABLE     j  CREATE TABLE public.store_documentsdetails (
    id integer NOT NULL,
    type character varying(40),
    price double precision,
    quantity double precision,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    documents_id integer NOT NULL,
    products_id integer NOT NULL,
    user_id integer NOT NULL
);
 *   DROP TABLE public.store_documentsdetails;
       public         django_user    false    3         �            1259    43712    store_documentsdetails_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_documentsdetails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.store_documentsdetails_id_seq;
       public       django_user    false    3    226         S           0    0    store_documentsdetails_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.store_documentsdetails_id_seq OWNED BY public.store_documentsdetails.id;
            public       django_user    false    225         �            1259    43703    store_logspricechange    TABLE     �   CREATE TABLE public.store_logspricechange (
    id integer NOT NULL,
    name character varying(2000),
    price double precision,
    created_at timestamp with time zone NOT NULL,
    products_id integer NOT NULL,
    user_id integer NOT NULL
);
 )   DROP TABLE public.store_logspricechange;
       public         django_user    false    3         �            1259    43701    store_logspricechange_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_logspricechange_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.store_logspricechange_id_seq;
       public       django_user    false    3    224         T           0    0    store_logspricechange_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.store_logspricechange_id_seq OWNED BY public.store_logspricechange.id;
            public       django_user    false    223         �            1259    43676    store_products    TABLE     ~   CREATE TABLE public.store_products (
    id integer NOT NULL,
    name character varying(2000),
    price double precision
);
 "   DROP TABLE public.store_products;
       public         django_user    false    3         �            1259    43674    store_products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.store_products_id_seq;
       public       django_user    false    218    3         U           0    0    store_products_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.store_products_id_seq OWNED BY public.store_products.id;
            public       django_user    false    217         �            1259    43695    store_productslikes    TABLE     �   CREATE TABLE public.store_productslikes (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    products_id integer NOT NULL,
    user_id integer NOT NULL
);
 '   DROP TABLE public.store_productslikes;
       public         django_user    false    3         �            1259    43693    store_productslikes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_productslikes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.store_productslikes_id_seq;
       public       django_user    false    3    222         V           0    0    store_productslikes_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.store_productslikes_id_seq OWNED BY public.store_productslikes.id;
            public       django_user    false    221         �            1259    43687    store_tempcar    TABLE       CREATE TABLE public.store_tempcar (
    id integer NOT NULL,
    quantity double precision,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    products_id integer NOT NULL,
    user_id integer NOT NULL
);
 !   DROP TABLE public.store_tempcar;
       public         django_user    false    3         �            1259    43685    store_tempcar_id_seq    SEQUENCE     �   CREATE SEQUENCE public.store_tempcar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.store_tempcar_id_seq;
       public       django_user    false    220    3         W           0    0    store_tempcar_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.store_tempcar_id_seq OWNED BY public.store_tempcar.id;
            public       django_user    false    219         D           2604    43529    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       django_user    false    202    203    203         E           2604    43539    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       django_user    false    204    205    205         C           2604    43521    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       django_user    false    201    200    201         F           2604    43547    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       django_user    false    206    207    207         G           2604    43557    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       django_user    false    209    208    209         H           2604    43565    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       django_user    false    211    210    211         I           2604    43625    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       django_user    false    213    212    213         B           2604    43511    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       django_user    false    199    198    199         A           2604    43500    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       django_user    false    197    196    197         K           2604    43668    store_documents id    DEFAULT     x   ALTER TABLE ONLY public.store_documents ALTER COLUMN id SET DEFAULT nextval('public.store_documents_id_seq'::regclass);
 A   ALTER TABLE public.store_documents ALTER COLUMN id DROP DEFAULT;
       public       django_user    false    216    215    216         P           2604    43717    store_documentsdetails id    DEFAULT     �   ALTER TABLE ONLY public.store_documentsdetails ALTER COLUMN id SET DEFAULT nextval('public.store_documentsdetails_id_seq'::regclass);
 H   ALTER TABLE public.store_documentsdetails ALTER COLUMN id DROP DEFAULT;
       public       django_user    false    226    225    226         O           2604    43706    store_logspricechange id    DEFAULT     �   ALTER TABLE ONLY public.store_logspricechange ALTER COLUMN id SET DEFAULT nextval('public.store_logspricechange_id_seq'::regclass);
 G   ALTER TABLE public.store_logspricechange ALTER COLUMN id DROP DEFAULT;
       public       django_user    false    224    223    224         L           2604    43679    store_products id    DEFAULT     v   ALTER TABLE ONLY public.store_products ALTER COLUMN id SET DEFAULT nextval('public.store_products_id_seq'::regclass);
 @   ALTER TABLE public.store_products ALTER COLUMN id DROP DEFAULT;
       public       django_user    false    217    218    218         N           2604    43698    store_productslikes id    DEFAULT     �   ALTER TABLE ONLY public.store_productslikes ALTER COLUMN id SET DEFAULT nextval('public.store_productslikes_id_seq'::regclass);
 E   ALTER TABLE public.store_productslikes ALTER COLUMN id DROP DEFAULT;
       public       django_user    false    221    222    222         M           2604    43690    store_tempcar id    DEFAULT     t   ALTER TABLE ONLY public.store_tempcar ALTER COLUMN id SET DEFAULT nextval('public.store_tempcar_id_seq'::regclass);
 ?   ALTER TABLE public.store_tempcar ALTER COLUMN id DROP DEFAULT;
       public       django_user    false    220    219    220         )          0    43526 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       django_user    false    203       3113.dat +          0    43536    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       django_user    false    205       3115.dat '          0    43518    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       django_user    false    201       3111.dat -          0    43544 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       django_user    false    207       3117.dat /          0    43554    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       django_user    false    209       3119.dat 1          0    43562    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       django_user    false    211       3121.dat 3          0    43622    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       django_user    false    213       3123.dat %          0    43508    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       django_user    false    199       3109.dat #          0    43497    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       django_user    false    197       3107.dat 4          0    43653    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       django_user    false    214       3124.dat 6          0    43665    store_documents 
   TABLE DATA               l   COPY public.store_documents (id, description, type, "subType", created_at, updated_at, user_id) FROM stdin;
    public       django_user    false    216       3126.dat @          0    43714    store_documentsdetails 
   TABLE DATA               �   COPY public.store_documentsdetails (id, type, price, quantity, created_at, updated_at, documents_id, products_id, user_id) FROM stdin;
    public       django_user    false    226       3136.dat >          0    43703    store_logspricechange 
   TABLE DATA               b   COPY public.store_logspricechange (id, name, price, created_at, products_id, user_id) FROM stdin;
    public       django_user    false    224       3134.dat 8          0    43676    store_products 
   TABLE DATA               9   COPY public.store_products (id, name, price) FROM stdin;
    public       django_user    false    218       3128.dat <          0    43695    store_productslikes 
   TABLE DATA               S   COPY public.store_productslikes (id, created_at, products_id, user_id) FROM stdin;
    public       django_user    false    222       3132.dat :          0    43687    store_tempcar 
   TABLE DATA               c   COPY public.store_tempcar (id, quantity, created_at, updated_at, products_id, user_id) FROM stdin;
    public       django_user    false    220       3130.dat X           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       django_user    false    202         Y           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       django_user    false    204         Z           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);
            public       django_user    false    200         [           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       django_user    false    208         \           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
            public       django_user    false    206         ]           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       django_user    false    210         ^           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
            public       django_user    false    212         _           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);
            public       django_user    false    198         `           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);
            public       django_user    false    196         a           0    0    store_documents_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.store_documents_id_seq', 1, false);
            public       django_user    false    215         b           0    0    store_documentsdetails_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.store_documentsdetails_id_seq', 1, false);
            public       django_user    false    225         c           0    0    store_logspricechange_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.store_logspricechange_id_seq', 1, false);
            public       django_user    false    223         d           0    0    store_products_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.store_products_id_seq', 1, false);
            public       django_user    false    217         e           0    0    store_productslikes_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.store_productslikes_id_seq', 1, false);
            public       django_user    false    221         f           0    0    store_tempcar_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.store_tempcar_id_seq', 1, false);
            public       django_user    false    219         ^           2606    43651    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         django_user    false    203         c           2606    43588 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         django_user    false    205    205         f           2606    43541 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         django_user    false    205         `           2606    43531    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         django_user    false    203         Y           2606    43574 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         django_user    false    201    201         [           2606    43523 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         django_user    false    201         n           2606    43559 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         django_user    false    209         q           2606    43603 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         django_user    false    209    209         h           2606    43549    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         django_user    false    207         t           2606    43567 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         django_user    false    211         w           2606    43617 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         django_user    false    211    211         k           2606    43645     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         django_user    false    207         z           2606    43631 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         django_user    false    213         T           2606    43515 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         django_user    false    199    199         V           2606    43513 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         django_user    false    199         R           2606    43505 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         django_user    false    197         ~           2606    43660 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         django_user    false    214         �           2606    43673 $   store_documents store_documents_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.store_documents
    ADD CONSTRAINT store_documents_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.store_documents DROP CONSTRAINT store_documents_pkey;
       public         django_user    false    216         �           2606    43719 2   store_documentsdetails store_documentsdetails_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.store_documentsdetails
    ADD CONSTRAINT store_documentsdetails_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.store_documentsdetails DROP CONSTRAINT store_documentsdetails_pkey;
       public         django_user    false    226         �           2606    43711 0   store_logspricechange store_logspricechange_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.store_logspricechange
    ADD CONSTRAINT store_logspricechange_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.store_logspricechange DROP CONSTRAINT store_logspricechange_pkey;
       public         django_user    false    224         �           2606    43684 "   store_products store_products_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.store_products
    ADD CONSTRAINT store_products_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.store_products DROP CONSTRAINT store_products_pkey;
       public         django_user    false    218         �           2606    43700 ,   store_productslikes store_productslikes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.store_productslikes
    ADD CONSTRAINT store_productslikes_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.store_productslikes DROP CONSTRAINT store_productslikes_pkey;
       public         django_user    false    222         �           2606    43692     store_tempcar store_tempcar_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.store_tempcar
    ADD CONSTRAINT store_tempcar_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.store_tempcar DROP CONSTRAINT store_tempcar_pkey;
       public         django_user    false    220         \           1259    43652    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         django_user    false    203         a           1259    43589 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         django_user    false    205         d           1259    43590 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         django_user    false    205         W           1259    43575 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         django_user    false    201         l           1259    43605 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         django_user    false    209         o           1259    43604 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         django_user    false    209         r           1259    43619 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         django_user    false    211         u           1259    43618 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         django_user    false    211         i           1259    43646     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         django_user    false    207         x           1259    43642 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         django_user    false    213         {           1259    43643 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         django_user    false    213         |           1259    43662 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         django_user    false    214                    1259    43661 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         django_user    false    214         �           1259    43725     store_documents_user_id_1d9e5598    INDEX     _   CREATE INDEX store_documents_user_id_1d9e5598 ON public.store_documents USING btree (user_id);
 4   DROP INDEX public.store_documents_user_id_1d9e5598;
       public         django_user    false    216         �           1259    43777 ,   store_documentsdetails_documents_id_99f7ad89    INDEX     w   CREATE INDEX store_documentsdetails_documents_id_99f7ad89 ON public.store_documentsdetails USING btree (documents_id);
 @   DROP INDEX public.store_documentsdetails_documents_id_99f7ad89;
       public         django_user    false    226         �           1259    43778 +   store_documentsdetails_products_id_dd10dd32    INDEX     u   CREATE INDEX store_documentsdetails_products_id_dd10dd32 ON public.store_documentsdetails USING btree (products_id);
 ?   DROP INDEX public.store_documentsdetails_products_id_dd10dd32;
       public         django_user    false    226         �           1259    43779 '   store_documentsdetails_user_id_dcdbb15a    INDEX     m   CREATE INDEX store_documentsdetails_user_id_dcdbb15a ON public.store_documentsdetails USING btree (user_id);
 ;   DROP INDEX public.store_documentsdetails_user_id_dcdbb15a;
       public         django_user    false    226         �           1259    43760 *   store_logspricechange_products_id_ab8bc707    INDEX     s   CREATE INDEX store_logspricechange_products_id_ab8bc707 ON public.store_logspricechange USING btree (products_id);
 >   DROP INDEX public.store_logspricechange_products_id_ab8bc707;
       public         django_user    false    224         �           1259    43761 &   store_logspricechange_user_id_7c31896c    INDEX     k   CREATE INDEX store_logspricechange_user_id_7c31896c ON public.store_logspricechange USING btree (user_id);
 :   DROP INDEX public.store_logspricechange_user_id_7c31896c;
       public         django_user    false    224         �           1259    43748 (   store_productslikes_products_id_8bdc81d7    INDEX     o   CREATE INDEX store_productslikes_products_id_8bdc81d7 ON public.store_productslikes USING btree (products_id);
 <   DROP INDEX public.store_productslikes_products_id_8bdc81d7;
       public         django_user    false    222         �           1259    43749 $   store_productslikes_user_id_7b9c7228    INDEX     g   CREATE INDEX store_productslikes_user_id_7b9c7228 ON public.store_productslikes USING btree (user_id);
 8   DROP INDEX public.store_productslikes_user_id_7b9c7228;
       public         django_user    false    222         �           1259    43736 "   store_tempcar_products_id_5de83f5a    INDEX     c   CREATE INDEX store_tempcar_products_id_5de83f5a ON public.store_tempcar USING btree (products_id);
 6   DROP INDEX public.store_tempcar_products_id_5de83f5a;
       public         django_user    false    220         �           1259    43737    store_tempcar_user_id_2d356069    INDEX     [   CREATE INDEX store_tempcar_user_id_2d356069 ON public.store_tempcar USING btree (user_id);
 2   DROP INDEX public.store_tempcar_user_id_2d356069;
       public         django_user    false    220         �           2606    43582 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       django_user    false    2907    201    205         �           2606    43577 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       django_user    false    203    205    2912         �           2606    43568 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       django_user    false    199    201    2902         �           2606    43597 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       django_user    false    203    2912    209         �           2606    43592 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       django_user    false    207    2920    209         �           2606    43611 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       django_user    false    2907    211    201         �           2606    43606 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       django_user    false    2920    211    207         �           2606    43632 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       django_user    false    2902    199    213         �           2606    43637 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       django_user    false    2920    213    207         �           2606    43720 @   store_documents store_documents_user_id_1d9e5598_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_documents
    ADD CONSTRAINT store_documents_user_id_1d9e5598_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.store_documents DROP CONSTRAINT store_documents_user_id_1d9e5598_fk_auth_user_id;
       public       django_user    false    207    216    2920         �           2606    43762 N   store_documentsdetails store_documentsdetai_documents_id_99f7ad89_fk_store_doc    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_documentsdetails
    ADD CONSTRAINT store_documentsdetai_documents_id_99f7ad89_fk_store_doc FOREIGN KEY (documents_id) REFERENCES public.store_documents(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.store_documentsdetails DROP CONSTRAINT store_documentsdetai_documents_id_99f7ad89_fk_store_doc;
       public       django_user    false    2945    216    226         �           2606    43767 M   store_documentsdetails store_documentsdetai_products_id_dd10dd32_fk_store_pro    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_documentsdetails
    ADD CONSTRAINT store_documentsdetai_products_id_dd10dd32_fk_store_pro FOREIGN KEY (products_id) REFERENCES public.store_products(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.store_documentsdetails DROP CONSTRAINT store_documentsdetai_products_id_dd10dd32_fk_store_pro;
       public       django_user    false    218    226    2948         �           2606    43772 N   store_documentsdetails store_documentsdetails_user_id_dcdbb15a_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_documentsdetails
    ADD CONSTRAINT store_documentsdetails_user_id_dcdbb15a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.store_documentsdetails DROP CONSTRAINT store_documentsdetails_user_id_dcdbb15a_fk_auth_user_id;
       public       django_user    false    226    207    2920         �           2606    43750 U   store_logspricechange store_logspricechange_products_id_ab8bc707_fk_store_products_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_logspricechange
    ADD CONSTRAINT store_logspricechange_products_id_ab8bc707_fk_store_products_id FOREIGN KEY (products_id) REFERENCES public.store_products(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.store_logspricechange DROP CONSTRAINT store_logspricechange_products_id_ab8bc707_fk_store_products_id;
       public       django_user    false    218    224    2948         �           2606    43755 L   store_logspricechange store_logspricechange_user_id_7c31896c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_logspricechange
    ADD CONSTRAINT store_logspricechange_user_id_7c31896c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.store_logspricechange DROP CONSTRAINT store_logspricechange_user_id_7c31896c_fk_auth_user_id;
       public       django_user    false    207    224    2920         �           2606    43738 Q   store_productslikes store_productslikes_products_id_8bdc81d7_fk_store_products_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_productslikes
    ADD CONSTRAINT store_productslikes_products_id_8bdc81d7_fk_store_products_id FOREIGN KEY (products_id) REFERENCES public.store_products(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.store_productslikes DROP CONSTRAINT store_productslikes_products_id_8bdc81d7_fk_store_products_id;
       public       django_user    false    222    218    2948         �           2606    43743 H   store_productslikes store_productslikes_user_id_7b9c7228_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_productslikes
    ADD CONSTRAINT store_productslikes_user_id_7b9c7228_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.store_productslikes DROP CONSTRAINT store_productslikes_user_id_7b9c7228_fk_auth_user_id;
       public       django_user    false    2920    222    207         �           2606    43726 E   store_tempcar store_tempcar_products_id_5de83f5a_fk_store_products_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_tempcar
    ADD CONSTRAINT store_tempcar_products_id_5de83f5a_fk_store_products_id FOREIGN KEY (products_id) REFERENCES public.store_products(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.store_tempcar DROP CONSTRAINT store_tempcar_products_id_5de83f5a_fk_store_products_id;
       public       django_user    false    2948    220    218         �           2606    43731 <   store_tempcar store_tempcar_user_id_2d356069_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_tempcar
    ADD CONSTRAINT store_tempcar_user_id_2d356069_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.store_tempcar DROP CONSTRAINT store_tempcar_user_id_2d356069_fk_auth_user_id;
       public       django_user    false    220    207    2920                          3113.dat                                                                                            0000600 0004000 0002000 00000000005 13457160162 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3115.dat                                                                                            0000600 0004000 0002000 00000000005 13457160162 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3111.dat                                                                                            0000600 0004000 0002000 00000003744 13457160162 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add documents	7	add_documents
26	Can change documents	7	change_documents
27	Can delete documents	7	delete_documents
28	Can view documents	7	view_documents
29	Can add products	8	add_products
30	Can change products	8	change_products
31	Can delete products	8	delete_products
32	Can view products	8	view_products
33	Can add temp car	9	add_tempcar
34	Can change temp car	9	change_tempcar
35	Can delete temp car	9	delete_tempcar
36	Can view temp car	9	view_tempcar
37	Can add products likes	10	add_productslikes
38	Can change products likes	10	change_productslikes
39	Can delete products likes	10	delete_productslikes
40	Can view products likes	10	view_productslikes
41	Can add logs price change	11	add_logspricechange
42	Can change logs price change	11	change_logspricechange
43	Can delete logs price change	11	delete_logspricechange
44	Can view logs price change	11	view_logspricechange
45	Can add documents details	12	add_documentsdetails
46	Can change documents details	12	change_documentsdetails
47	Can delete documents details	12	delete_documentsdetails
48	Can view documents details	12	view_documentsdetails
\.


                            3117.dat                                                                                            0000600 0004000 0002000 00000000005 13457160162 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3119.dat                                                                                            0000600 0004000 0002000 00000000005 13457160162 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3121.dat                                                                                            0000600 0004000 0002000 00000000005 13457160162 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3123.dat                                                                                            0000600 0004000 0002000 00000000005 13457160162 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3109.dat                                                                                            0000600 0004000 0002000 00000000354 13457160162 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	store	documents
8	store	products
9	store	tempcar
10	store	productslikes
11	store	logspricechange
12	store	documentsdetails
\.


                                                                                                                                                                                                                                                                                    3107.dat                                                                                            0000600 0004000 0002000 00000002265 13457160162 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	contenttypes	0001_initial	2019-04-21 21:27:30.895371+00
2	auth	0001_initial	2019-04-21 21:27:31.326789+00
3	admin	0001_initial	2019-04-21 21:27:32.046848+00
4	admin	0002_logentry_remove_auto_add	2019-04-21 21:27:32.177975+00
5	admin	0003_logentry_add_action_flag_choices	2019-04-21 21:27:32.190957+00
6	contenttypes	0002_remove_content_type_name	2019-04-21 21:27:32.227211+00
7	auth	0002_alter_permission_name_max_length	2019-04-21 21:27:32.243239+00
8	auth	0003_alter_user_email_max_length	2019-04-21 21:27:32.261608+00
9	auth	0004_alter_user_username_opts	2019-04-21 21:27:32.28257+00
10	auth	0005_alter_user_last_login_null	2019-04-21 21:27:32.304339+00
11	auth	0006_require_contenttypes_0002	2019-04-21 21:27:32.317006+00
12	auth	0007_alter_validators_add_error_messages	2019-04-21 21:27:32.341314+00
13	auth	0008_alter_user_username_max_length	2019-04-21 21:27:32.404024+00
14	auth	0009_alter_user_last_name_max_length	2019-04-21 21:27:32.433203+00
15	auth	0010_alter_group_name_max_length	2019-04-21 21:27:32.4467+00
16	auth	0011_update_proxy_permissions	2019-04-21 21:27:32.475525+00
17	sessions	0001_initial	2019-04-21 21:27:32.571942+00
18	store	0001_initial	2019-04-21 21:27:33.181258+00
\.


                                                                                                                                                                                                                                                                                                                                           3124.dat                                                                                            0000600 0004000 0002000 00000000005 13457160162 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3126.dat                                                                                            0000600 0004000 0002000 00000000005 13457160162 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3136.dat                                                                                            0000600 0004000 0002000 00000000005 13457160162 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3134.dat                                                                                            0000600 0004000 0002000 00000000005 13457160162 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3128.dat                                                                                            0000600 0004000 0002000 00000000005 13457160162 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3132.dat                                                                                            0000600 0004000 0002000 00000000005 13457160162 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3130.dat                                                                                            0000600 0004000 0002000 00000000005 13457160162 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000122666 13457160162 0015406 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7 (Ubuntu 10.7-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.7 (Ubuntu 10.7-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE django;
--
-- Name: django; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE django WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE django OWNER TO postgres;

\connect django

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO django_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO django_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO django_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO django_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO django_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO django_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO django_user;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO django_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO django_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO django_user;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO django_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO django_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO django_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO django_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO django_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO django_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO django_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO django_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO django_user;

--
-- Name: store_documents; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.store_documents (
    id integer NOT NULL,
    description character varying(2000),
    type character varying(40),
    "subType" character varying(40),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.store_documents OWNER TO django_user;

--
-- Name: store_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.store_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_documents_id_seq OWNER TO django_user;

--
-- Name: store_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.store_documents_id_seq OWNED BY public.store_documents.id;


--
-- Name: store_documentsdetails; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.store_documentsdetails (
    id integer NOT NULL,
    type character varying(40),
    price double precision,
    quantity double precision,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    documents_id integer NOT NULL,
    products_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.store_documentsdetails OWNER TO django_user;

--
-- Name: store_documentsdetails_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.store_documentsdetails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_documentsdetails_id_seq OWNER TO django_user;

--
-- Name: store_documentsdetails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.store_documentsdetails_id_seq OWNED BY public.store_documentsdetails.id;


--
-- Name: store_logspricechange; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.store_logspricechange (
    id integer NOT NULL,
    name character varying(2000),
    price double precision,
    created_at timestamp with time zone NOT NULL,
    products_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.store_logspricechange OWNER TO django_user;

--
-- Name: store_logspricechange_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.store_logspricechange_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_logspricechange_id_seq OWNER TO django_user;

--
-- Name: store_logspricechange_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.store_logspricechange_id_seq OWNED BY public.store_logspricechange.id;


--
-- Name: store_products; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.store_products (
    id integer NOT NULL,
    name character varying(2000),
    price double precision
);


ALTER TABLE public.store_products OWNER TO django_user;

--
-- Name: store_products_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.store_products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_products_id_seq OWNER TO django_user;

--
-- Name: store_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.store_products_id_seq OWNED BY public.store_products.id;


--
-- Name: store_productslikes; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.store_productslikes (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    products_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.store_productslikes OWNER TO django_user;

--
-- Name: store_productslikes_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.store_productslikes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_productslikes_id_seq OWNER TO django_user;

--
-- Name: store_productslikes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.store_productslikes_id_seq OWNED BY public.store_productslikes.id;


--
-- Name: store_tempcar; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.store_tempcar (
    id integer NOT NULL,
    quantity double precision,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    products_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.store_tempcar OWNER TO django_user;

--
-- Name: store_tempcar_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.store_tempcar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.store_tempcar_id_seq OWNER TO django_user;

--
-- Name: store_tempcar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.store_tempcar_id_seq OWNED BY public.store_tempcar.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: store_documents id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_documents ALTER COLUMN id SET DEFAULT nextval('public.store_documents_id_seq'::regclass);


--
-- Name: store_documentsdetails id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_documentsdetails ALTER COLUMN id SET DEFAULT nextval('public.store_documentsdetails_id_seq'::regclass);


--
-- Name: store_logspricechange id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_logspricechange ALTER COLUMN id SET DEFAULT nextval('public.store_logspricechange_id_seq'::regclass);


--
-- Name: store_products id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_products ALTER COLUMN id SET DEFAULT nextval('public.store_products_id_seq'::regclass);


--
-- Name: store_productslikes id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_productslikes ALTER COLUMN id SET DEFAULT nextval('public.store_productslikes_id_seq'::regclass);


--
-- Name: store_tempcar id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_tempcar ALTER COLUMN id SET DEFAULT nextval('public.store_tempcar_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.auth_group (id, name) FROM stdin;
\.
COPY public.auth_group (id, name) FROM '$$PATH$$/3113.dat';

--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.
COPY public.auth_group_permissions (id, group_id, permission_id) FROM '$$PATH$$/3115.dat';

--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
\.
COPY public.auth_permission (id, name, content_type_id, codename) FROM '$$PATH$$/3111.dat';

--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.
COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM '$$PATH$$/3117.dat';

--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.
COPY public.auth_user_groups (id, user_id, group_id) FROM '$$PATH$$/3119.dat';

--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.
COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM '$$PATH$$/3121.dat';

--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.
COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM '$$PATH$$/3123.dat';

--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
\.
COPY public.django_content_type (id, app_label, model) FROM '$$PATH$$/3109.dat';

--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
\.
COPY public.django_migrations (id, app, name, applied) FROM '$$PATH$$/3107.dat';

--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.
COPY public.django_session (session_key, session_data, expire_date) FROM '$$PATH$$/3124.dat';

--
-- Data for Name: store_documents; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.store_documents (id, description, type, "subType", created_at, updated_at, user_id) FROM stdin;
\.
COPY public.store_documents (id, description, type, "subType", created_at, updated_at, user_id) FROM '$$PATH$$/3126.dat';

--
-- Data for Name: store_documentsdetails; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.store_documentsdetails (id, type, price, quantity, created_at, updated_at, documents_id, products_id, user_id) FROM stdin;
\.
COPY public.store_documentsdetails (id, type, price, quantity, created_at, updated_at, documents_id, products_id, user_id) FROM '$$PATH$$/3136.dat';

--
-- Data for Name: store_logspricechange; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.store_logspricechange (id, name, price, created_at, products_id, user_id) FROM stdin;
\.
COPY public.store_logspricechange (id, name, price, created_at, products_id, user_id) FROM '$$PATH$$/3134.dat';

--
-- Data for Name: store_products; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.store_products (id, name, price) FROM stdin;
\.
COPY public.store_products (id, name, price) FROM '$$PATH$$/3128.dat';

--
-- Data for Name: store_productslikes; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.store_productslikes (id, created_at, products_id, user_id) FROM stdin;
\.
COPY public.store_productslikes (id, created_at, products_id, user_id) FROM '$$PATH$$/3132.dat';

--
-- Data for Name: store_tempcar; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.store_tempcar (id, quantity, created_at, updated_at, products_id, user_id) FROM stdin;
\.
COPY public.store_tempcar (id, quantity, created_at, updated_at, products_id, user_id) FROM '$$PATH$$/3130.dat';

--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- Name: store_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.store_documents_id_seq', 1, false);


--
-- Name: store_documentsdetails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.store_documentsdetails_id_seq', 1, false);


--
-- Name: store_logspricechange_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.store_logspricechange_id_seq', 1, false);


--
-- Name: store_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.store_products_id_seq', 1, false);


--
-- Name: store_productslikes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.store_productslikes_id_seq', 1, false);


--
-- Name: store_tempcar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.store_tempcar_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: store_documents store_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_documents
    ADD CONSTRAINT store_documents_pkey PRIMARY KEY (id);


--
-- Name: store_documentsdetails store_documentsdetails_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_documentsdetails
    ADD CONSTRAINT store_documentsdetails_pkey PRIMARY KEY (id);


--
-- Name: store_logspricechange store_logspricechange_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_logspricechange
    ADD CONSTRAINT store_logspricechange_pkey PRIMARY KEY (id);


--
-- Name: store_products store_products_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_products
    ADD CONSTRAINT store_products_pkey PRIMARY KEY (id);


--
-- Name: store_productslikes store_productslikes_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_productslikes
    ADD CONSTRAINT store_productslikes_pkey PRIMARY KEY (id);


--
-- Name: store_tempcar store_tempcar_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_tempcar
    ADD CONSTRAINT store_tempcar_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: store_documents_user_id_1d9e5598; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX store_documents_user_id_1d9e5598 ON public.store_documents USING btree (user_id);


--
-- Name: store_documentsdetails_documents_id_99f7ad89; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX store_documentsdetails_documents_id_99f7ad89 ON public.store_documentsdetails USING btree (documents_id);


--
-- Name: store_documentsdetails_products_id_dd10dd32; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX store_documentsdetails_products_id_dd10dd32 ON public.store_documentsdetails USING btree (products_id);


--
-- Name: store_documentsdetails_user_id_dcdbb15a; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX store_documentsdetails_user_id_dcdbb15a ON public.store_documentsdetails USING btree (user_id);


--
-- Name: store_logspricechange_products_id_ab8bc707; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX store_logspricechange_products_id_ab8bc707 ON public.store_logspricechange USING btree (products_id);


--
-- Name: store_logspricechange_user_id_7c31896c; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX store_logspricechange_user_id_7c31896c ON public.store_logspricechange USING btree (user_id);


--
-- Name: store_productslikes_products_id_8bdc81d7; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX store_productslikes_products_id_8bdc81d7 ON public.store_productslikes USING btree (products_id);


--
-- Name: store_productslikes_user_id_7b9c7228; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX store_productslikes_user_id_7b9c7228 ON public.store_productslikes USING btree (user_id);


--
-- Name: store_tempcar_products_id_5de83f5a; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX store_tempcar_products_id_5de83f5a ON public.store_tempcar USING btree (products_id);


--
-- Name: store_tempcar_user_id_2d356069; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX store_tempcar_user_id_2d356069 ON public.store_tempcar USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_documents store_documents_user_id_1d9e5598_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_documents
    ADD CONSTRAINT store_documents_user_id_1d9e5598_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_documentsdetails store_documentsdetai_documents_id_99f7ad89_fk_store_doc; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_documentsdetails
    ADD CONSTRAINT store_documentsdetai_documents_id_99f7ad89_fk_store_doc FOREIGN KEY (documents_id) REFERENCES public.store_documents(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_documentsdetails store_documentsdetai_products_id_dd10dd32_fk_store_pro; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_documentsdetails
    ADD CONSTRAINT store_documentsdetai_products_id_dd10dd32_fk_store_pro FOREIGN KEY (products_id) REFERENCES public.store_products(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_documentsdetails store_documentsdetails_user_id_dcdbb15a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_documentsdetails
    ADD CONSTRAINT store_documentsdetails_user_id_dcdbb15a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_logspricechange store_logspricechange_products_id_ab8bc707_fk_store_products_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_logspricechange
    ADD CONSTRAINT store_logspricechange_products_id_ab8bc707_fk_store_products_id FOREIGN KEY (products_id) REFERENCES public.store_products(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_logspricechange store_logspricechange_user_id_7c31896c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_logspricechange
    ADD CONSTRAINT store_logspricechange_user_id_7c31896c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_productslikes store_productslikes_products_id_8bdc81d7_fk_store_products_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_productslikes
    ADD CONSTRAINT store_productslikes_products_id_8bdc81d7_fk_store_products_id FOREIGN KEY (products_id) REFERENCES public.store_products(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_productslikes store_productslikes_user_id_7b9c7228_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_productslikes
    ADD CONSTRAINT store_productslikes_user_id_7b9c7228_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_tempcar store_tempcar_products_id_5de83f5a_fk_store_products_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_tempcar
    ADD CONSTRAINT store_tempcar_products_id_5de83f5a_fk_store_products_id FOREIGN KEY (products_id) REFERENCES public.store_products(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: store_tempcar store_tempcar_user_id_2d356069_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.store_tempcar
    ADD CONSTRAINT store_tempcar_user_id_2d356069_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          