toc.dat                                                                                             0000600 0004000 0002000 00000154444 14103163760 0014454 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       "                    y            eretail    13.3    13.3 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         ?           1262    16658    eretail    DATABASE     c   CREATE DATABASE eretail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE eretail;
                postgres    false         ?            1259    24947 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false         ?            1259    24945    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207         ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206         ?            1259    24957    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false         ?            1259    24955    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209         ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208         ?            1259    24939    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false         ?            1259    24937    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205         ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204         ?            1259    25133    authtoken_token    TABLE     ?   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public         heap    postgres    false         ?            1259    25175    cart    TABLE     ?   CREATE TABLE public.cart (
    id integer NOT NULL,
    user_id integer,
    total numeric(10,2) NOT NULL,
    date date NOT NULL,
    is_ordered boolean NOT NULL
);
    DROP TABLE public.cart;
       public         heap    postgres    false         ?            1259    25173    cart_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.cart_id_seq;
       public          postgres    false    227         ?           0    0    cart_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.cart_id_seq OWNED BY public.cart.id;
          public          postgres    false    226         ?            1259    25073    category    TABLE     ?   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(250) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
    DROP TABLE public.category;
       public         heap    postgres    false         ?            1259    25071    category_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    219         ?           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    218         ?            1259    25049    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false         ?            1259    25047    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217         ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216         ?            1259    24929    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false         ?            1259    24927    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203         ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202         ?            1259    24918    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false         ?            1259    24916    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201         ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200         ?            1259    25151    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false         ?            1259    25213    django_site    TABLE     ?   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         heap    postgres    false         ?            1259    25211    django_site_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public          postgres    false    229         ?           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
          public          postgres    false    228         ?            1259    25164    order    TABLE       CREATE TABLE public."order" (
    id integer NOT NULL,
    transaction_id character varying(150) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    cart_id integer NOT NULL,
    total numeric(10,2) NOT NULL
);
    DROP TABLE public."order";
       public         heap    postgres    false         ?            1259    25231    order_cartproduct    TABLE     M  CREATE TABLE public.order_cartproduct (
    id integer NOT NULL,
    price integer NOT NULL,
    quantity integer NOT NULL,
    subtotal numeric(10,2) NOT NULL,
    cart_id integer NOT NULL,
    CONSTRAINT order_cartproduct_price_check CHECK ((price >= 0)),
    CONSTRAINT order_cartproduct_quantity_check CHECK ((quantity >= 0))
);
 %   DROP TABLE public.order_cartproduct;
       public         heap    postgres    false         ?            1259    25229    order_cartproduct_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.order_cartproduct_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.order_cartproduct_id_seq;
       public          postgres    false    231         ?           0    0    order_cartproduct_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.order_cartproduct_id_seq OWNED BY public.order_cartproduct.id;
          public          postgres    false    230         ?            1259    25241    order_cartproduct_product    TABLE     ?   CREATE TABLE public.order_cartproduct_product (
    id integer NOT NULL,
    cartproduct_id integer NOT NULL,
    product_id integer NOT NULL
);
 -   DROP TABLE public.order_cartproduct_product;
       public         heap    postgres    false         ?            1259    25239     order_cartproduct_product_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.order_cartproduct_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.order_cartproduct_product_id_seq;
       public          postgres    false    233         ?           0    0     order_cartproduct_product_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.order_cartproduct_product_id_seq OWNED BY public.order_cartproduct_product.id;
          public          postgres    false    232         ?            1259    25162    order_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.order_id_seq;
       public          postgres    false    225         ?           0    0    order_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.order_id_seq OWNED BY public."order".id;
          public          postgres    false    224         ?            1259    25081    product    TABLE     ?  CREATE TABLE public.product (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(250) NOT NULL,
    price numeric(10,2) NOT NULL,
    stock integer NOT NULL,
    is_active boolean NOT NULL,
    image character varying(100),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    category_id integer,
    CONSTRAINT product_stock_9dd2302b_check CHECK ((stock >= 0))
);
    DROP TABLE public.product;
       public         heap    postgres    false         ?            1259    25079    product_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    221         ?           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    220         ?            1259    24991    user    TABLE     ?  CREATE TABLE public."user" (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    username character varying(50),
    email character varying(254),
    phone character varying(20),
    gender character varying(10),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    device character varying(200)
);
    DROP TABLE public."user";
       public         heap    postgres    false         ?            1259    25004    user_groups    TABLE     ?   CREATE TABLE public.user_groups (
    id integer NOT NULL,
    customuser_id integer NOT NULL,
    group_id integer NOT NULL
);
    DROP TABLE public.user_groups;
       public         heap    postgres    false         ?            1259    25002    user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.user_groups_id_seq;
       public          postgres    false    213         ?           0    0    user_groups_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.user_groups_id_seq OWNED BY public.user_groups.id;
          public          postgres    false    212         ?            1259    24989    user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    211         ?           0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public          postgres    false    210         ?            1259    25012    user_user_permissions    TABLE     ?   CREATE TABLE public.user_user_permissions (
    id integer NOT NULL,
    customuser_id integer NOT NULL,
    permission_id integer NOT NULL
);
 )   DROP TABLE public.user_user_permissions;
       public         heap    postgres    false         ?            1259    25010    user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.user_user_permissions_id_seq;
       public          postgres    false    215         ?           0    0    user_user_permissions_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.user_user_permissions_id_seq OWNED BY public.user_user_permissions.id;
          public          postgres    false    214         ?           2604    24950    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207         ?           2604    24960    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209         ?           2604    24942    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205         ?           2604    25178    cart id    DEFAULT     b   ALTER TABLE ONLY public.cart ALTER COLUMN id SET DEFAULT nextval('public.cart_id_seq'::regclass);
 6   ALTER TABLE public.cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227         ?           2604    25076    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219         ?           2604    25052    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217         ?           2604    24932    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203         ?           2604    24921    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201         ?           2604    25216    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229         ?           2604    25167    order id    DEFAULT     f   ALTER TABLE ONLY public."order" ALTER COLUMN id SET DEFAULT nextval('public.order_id_seq'::regclass);
 9   ALTER TABLE public."order" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225         ?           2604    25234    order_cartproduct id    DEFAULT     |   ALTER TABLE ONLY public.order_cartproduct ALTER COLUMN id SET DEFAULT nextval('public.order_cartproduct_id_seq'::regclass);
 C   ALTER TABLE public.order_cartproduct ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231         ?           2604    25244    order_cartproduct_product id    DEFAULT     ?   ALTER TABLE ONLY public.order_cartproduct_product ALTER COLUMN id SET DEFAULT nextval('public.order_cartproduct_product_id_seq'::regclass);
 K   ALTER TABLE public.order_cartproduct_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233         ?           2604    25084 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221         ?           2604    24994    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211         ?           2604    25007    user_groups id    DEFAULT     p   ALTER TABLE ONLY public.user_groups ALTER COLUMN id SET DEFAULT nextval('public.user_groups_id_seq'::regclass);
 =   ALTER TABLE public.user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213         ?           2604    25015    user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.user_user_permissions_id_seq'::regclass);
 G   ALTER TABLE public.user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215         ?          0    24947 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207       3204.dat ?          0    24957    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209       3206.dat ?          0    24939    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205       3202.dat ?          0    25133    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          postgres    false    222       3219.dat ?          0    25175    cart 
   TABLE DATA           D   COPY public.cart (id, user_id, total, date, is_ordered) FROM stdin;
    public          postgres    false    227       3224.dat ?          0    25073    category 
   TABLE DATA           Q   COPY public.category (id, name, description, created_at, updated_at) FROM stdin;
    public          postgres    false    219       3216.dat ?          0    25049    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217       3214.dat ?          0    24929    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203       3200.dat ~          0    24918    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201       3198.dat ?          0    25151    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    223       3220.dat ?          0    25213    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          postgres    false    229       3226.dat ?          0    25164    order 
   TABLE DATA           ]   COPY public."order" (id, transaction_id, created_at, updated_at, cart_id, total) FROM stdin;
    public          postgres    false    225       3222.dat ?          0    25231    order_cartproduct 
   TABLE DATA           S   COPY public.order_cartproduct (id, price, quantity, subtotal, cart_id) FROM stdin;
    public          postgres    false    231       3228.dat ?          0    25241    order_cartproduct_product 
   TABLE DATA           S   COPY public.order_cartproduct_product (id, cartproduct_id, product_id) FROM stdin;
    public          postgres    false    233       3230.dat ?          0    25081    product 
   TABLE DATA           }   COPY public.product (id, name, description, price, stock, is_active, image, created_at, updated_at, category_id) FROM stdin;
    public          postgres    false    221       3218.dat ?          0    24991    user 
   TABLE DATA           ?   COPY public."user" (id, password, last_login, is_superuser, first_name, last_name, is_staff, is_active, date_joined, username, email, phone, gender, created_at, updated_at, device) FROM stdin;
    public          postgres    false    211       3208.dat ?          0    25004    user_groups 
   TABLE DATA           B   COPY public.user_groups (id, customuser_id, group_id) FROM stdin;
    public          postgres    false    213       3210.dat ?          0    25012    user_user_permissions 
   TABLE DATA           Q   COPY public.user_user_permissions (id, customuser_id, permission_id) FROM stdin;
    public          postgres    false    215       3212.dat ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206         ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208         ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);
          public          postgres    false    204         ?           0    0    cart_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.cart_id_seq', 60, true);
          public          postgres    false    226         ?           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    218         ?           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 145, true);
          public          postgres    false    216         ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);
          public          postgres    false    202         ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 38, true);
          public          postgres    false    200         ?           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public          postgres    false    228         ?           0    0    order_cartproduct_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.order_cartproduct_id_seq', 102, true);
          public          postgres    false    230         ?           0    0     order_cartproduct_product_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.order_cartproduct_product_id_seq', 102, true);
          public          postgres    false    232         ?           0    0    order_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.order_id_seq', 15, true);
          public          postgres    false    224         ?           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 25, true);
          public          postgres    false    220         ?           0    0    user_groups_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.user_groups_id_seq', 1, false);
          public          postgres    false    212         ?           0    0    user_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.user_id_seq', 11, true);
          public          postgres    false    210         ?           0    0    user_user_permissions_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.user_user_permissions_id_seq', 1, false);
          public          postgres    false    214         ?           2606    24987    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207         ?           2606    24973 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209         ?           2606    24962 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209         ?           2606    24952    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207         ?           2606    24964 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205         ?           2606    24944 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205         ?           2606    25137 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public            postgres    false    222         ?           2606    25139 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public            postgres    false    222         ?           2606    25180    cart cart_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public            postgres    false    227         ?           2606    25078    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    219         ?           2606    25058 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217         ?           2606    24936 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203         ?           2606    24934 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203         ?           2606    24926 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201         ?           2606    25158 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    223         ?           2606    25220 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public            postgres    false    229         ?           2606    25218    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public            postgres    false    229         ?           2606    25271    order order_cart_id_key 
   CONSTRAINT     W   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_cart_id_key UNIQUE (cart_id);
 C   ALTER TABLE ONLY public."order" DROP CONSTRAINT order_cart_id_key;
       public            postgres    false    225         ?           2606    25238 (   order_cartproduct order_cartproduct_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.order_cartproduct
    ADD CONSTRAINT order_cartproduct_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.order_cartproduct DROP CONSTRAINT order_cartproduct_pkey;
       public            postgres    false    231         ?           2606    25254 Y   order_cartproduct_product order_cartproduct_produc_cartproduct_id_product_i_ea1d085b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.order_cartproduct_product
    ADD CONSTRAINT order_cartproduct_produc_cartproduct_id_product_i_ea1d085b_uniq UNIQUE (cartproduct_id, product_id);
 ?   ALTER TABLE ONLY public.order_cartproduct_product DROP CONSTRAINT order_cartproduct_produc_cartproduct_id_product_i_ea1d085b_uniq;
       public            postgres    false    233    233         ?           2606    25246 8   order_cartproduct_product order_cartproduct_product_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.order_cartproduct_product
    ADD CONSTRAINT order_cartproduct_product_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.order_cartproduct_product DROP CONSTRAINT order_cartproduct_product_pkey;
       public            postgres    false    233         ?           2606    25172    order order_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."order" DROP CONSTRAINT order_pkey;
       public            postgres    false    225         ?           2606    25089    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    221         ?           2606    25001    user user_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_email_key;
       public            postgres    false    211         ?           2606    25020 <   user_groups user_groups_customuser_id_group_id_69b568ae_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_customuser_id_group_id_69b568ae_uniq UNIQUE (customuser_id, group_id);
 f   ALTER TABLE ONLY public.user_groups DROP CONSTRAINT user_groups_customuser_id_group_id_69b568ae_uniq;
       public            postgres    false    213    213         ?           2606    25009    user_groups user_groups_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.user_groups DROP CONSTRAINT user_groups_pkey;
       public            postgres    false    213         ?           2606    24999    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    211         ?           2606    25034 U   user_user_permissions user_user_permissions_customuser_id_permission_id_2f47aad7_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.user_user_permissions
    ADD CONSTRAINT user_user_permissions_customuser_id_permission_id_2f47aad7_uniq UNIQUE (customuser_id, permission_id);
    ALTER TABLE ONLY public.user_user_permissions DROP CONSTRAINT user_user_permissions_customuser_id_permission_id_2f47aad7_uniq;
       public            postgres    false    215    215         ?           2606    25017 0   user_user_permissions user_user_permissions_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.user_user_permissions
    ADD CONSTRAINT user_user_permissions_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.user_user_permissions DROP CONSTRAINT user_user_permissions_pkey;
       public            postgres    false    215         ?           1259    24988    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207         ?           1259    24984 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209         ?           1259    24985 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209         ?           1259    24970 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205         ?           1259    25145 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public            postgres    false    222         ?           1259    25198    cart_user_id_1361a739    INDEX     I   CREATE INDEX cart_user_id_1361a739 ON public.cart USING btree (user_id);
 )   DROP INDEX public.cart_user_id_1361a739;
       public            postgres    false    227         ?           1259    25069 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217         ?           1259    25070 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217         ?           1259    25160 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    223         ?           1259    25159 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    223         ?           1259    25221     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public            postgres    false    229         ?           1259    25252 "   order_cartproduct_cart_id_e1c8f3fd    INDEX     c   CREATE INDEX order_cartproduct_cart_id_e1c8f3fd ON public.order_cartproduct USING btree (cart_id);
 6   DROP INDEX public.order_cartproduct_cart_id_e1c8f3fd;
       public            postgres    false    231         ?           1259    25265 1   order_cartproduct_product_cartproduct_id_5170ea9f    INDEX     ?   CREATE INDEX order_cartproduct_product_cartproduct_id_5170ea9f ON public.order_cartproduct_product USING btree (cartproduct_id);
 E   DROP INDEX public.order_cartproduct_product_cartproduct_id_5170ea9f;
       public            postgres    false    233         ?           1259    25266 -   order_cartproduct_product_product_id_60583b57    INDEX     y   CREATE INDEX order_cartproduct_product_product_id_60583b57 ON public.order_cartproduct_product USING btree (product_id);
 A   DROP INDEX public.order_cartproduct_product_product_id_60583b57;
       public            postgres    false    233         ?           1259    25095    product_category_id_640030a0    INDEX     W   CREATE INDEX product_category_id_640030a0 ON public.product USING btree (category_id);
 0   DROP INDEX public.product_category_id_640030a0;
       public            postgres    false    221         ?           1259    25018    user_email_54dc62b2_like    INDEX     `   CREATE INDEX user_email_54dc62b2_like ON public."user" USING btree (email varchar_pattern_ops);
 ,   DROP INDEX public.user_email_54dc62b2_like;
       public            postgres    false    211         ?           1259    25031 "   user_groups_customuser_id_246bd336    INDEX     c   CREATE INDEX user_groups_customuser_id_246bd336 ON public.user_groups USING btree (customuser_id);
 6   DROP INDEX public.user_groups_customuser_id_246bd336;
       public            postgres    false    213         ?           1259    25032    user_groups_group_id_b76f8aba    INDEX     Y   CREATE INDEX user_groups_group_id_b76f8aba ON public.user_groups USING btree (group_id);
 1   DROP INDEX public.user_groups_group_id_b76f8aba;
       public            postgres    false    213         ?           1259    25045 ,   user_user_permissions_customuser_id_3b468234    INDEX     w   CREATE INDEX user_user_permissions_customuser_id_3b468234 ON public.user_user_permissions USING btree (customuser_id);
 @   DROP INDEX public.user_user_permissions_customuser_id_3b468234;
       public            postgres    false    215         ?           1259    25046 ,   user_user_permissions_permission_id_9deb68a3    INDEX     w   CREATE INDEX user_user_permissions_permission_id_9deb68a3 ON public.user_user_permissions USING btree (permission_id);
 @   DROP INDEX public.user_user_permissions_permission_id_9deb68a3;
       public            postgres    false    215         ?           2606    24979 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    205    209    2983         ?           2606    24974 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2988    207    209         ?           2606    24965 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    2978    203         ?           2606    25146 ;   authtoken_token authtoken_token_user_id_35299eff_fk_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_user_id FOREIGN KEY (user_id) REFERENCES public."user"(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_user_id;
       public          postgres    false    222    2999    211         ?           2606    25192 %   cart cart_user_id_1361a739_fk_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_user_id_1361a739_fk_user_id FOREIGN KEY (user_id) REFERENCES public."user"(id) DEFERRABLE INITIALLY DEFERRED;
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_user_id_1361a739_fk_user_id;
       public          postgres    false    2999    227    211         ?           2606    25059 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    203    217    2978         ?           2606    25064 =   django_admin_log django_admin_log_user_id_c564eba6_fk_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_id FOREIGN KEY (user_id) REFERENCES public."user"(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_id;
       public          postgres    false    217    211    2999         ?           2606    25272 '   order order_cart_id_78089ada_fk_cart_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_cart_id_78089ada_fk_cart_id FOREIGN KEY (cart_id) REFERENCES public.cart(id) DEFERRABLE INITIALLY DEFERRED;
 S   ALTER TABLE ONLY public."order" DROP CONSTRAINT order_cart_id_78089ada_fk_cart_id;
       public          postgres    false    225    3035    227         ?           2606    25247 ?   order_cartproduct order_cartproduct_cart_id_e1c8f3fd_fk_cart_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.order_cartproduct
    ADD CONSTRAINT order_cartproduct_cart_id_e1c8f3fd_fk_cart_id FOREIGN KEY (cart_id) REFERENCES public.cart(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.order_cartproduct DROP CONSTRAINT order_cartproduct_cart_id_e1c8f3fd_fk_cart_id;
       public          postgres    false    231    227    3035         ?           2606    25255 S   order_cartproduct_product order_cartproduct_pr_cartproduct_id_5170ea9f_fk_order_car    FK CONSTRAINT     ?   ALTER TABLE ONLY public.order_cartproduct_product
    ADD CONSTRAINT order_cartproduct_pr_cartproduct_id_5170ea9f_fk_order_car FOREIGN KEY (cartproduct_id) REFERENCES public.order_cartproduct(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.order_cartproduct_product DROP CONSTRAINT order_cartproduct_pr_cartproduct_id_5170ea9f_fk_order_car;
       public          postgres    false    233    3044    231         ?           2606    25260 U   order_cartproduct_product order_cartproduct_product_product_id_60583b57_fk_product_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.order_cartproduct_product
    ADD CONSTRAINT order_cartproduct_product_product_id_60583b57_fk_product_id FOREIGN KEY (product_id) REFERENCES public.product(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.order_cartproduct_product DROP CONSTRAINT order_cartproduct_product_product_id_60583b57_fk_product_id;
       public          postgres    false    221    233    3020         ?           2606    25090 3   product product_category_id_640030a0_fk_category_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_category_id_640030a0_fk_category_id FOREIGN KEY (category_id) REFERENCES public.category(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.product DROP CONSTRAINT product_category_id_640030a0_fk_category_id;
       public          postgres    false    219    221    3017         ?           2606    25021 9   user_groups user_groups_customuser_id_246bd336_fk_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_customuser_id_246bd336_fk_user_id FOREIGN KEY (customuser_id) REFERENCES public."user"(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.user_groups DROP CONSTRAINT user_groups_customuser_id_246bd336_fk_user_id;
       public          postgres    false    211    2999    213         ?           2606    25026 :   user_groups user_groups_group_id_b76f8aba_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_group_id_b76f8aba_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY public.user_groups DROP CONSTRAINT user_groups_group_id_b76f8aba_fk_auth_group_id;
       public          postgres    false    213    207    2988         ?           2606    25040 N   user_user_permissions user_user_permission_permission_id_9deb68a3_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_user_permissions
    ADD CONSTRAINT user_user_permission_permission_id_9deb68a3_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.user_user_permissions DROP CONSTRAINT user_user_permission_permission_id_9deb68a3_fk_auth_perm;
       public          postgres    false    205    215    2983         ?           2606    25035 M   user_user_permissions user_user_permissions_customuser_id_3b468234_fk_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.user_user_permissions
    ADD CONSTRAINT user_user_permissions_customuser_id_3b468234_fk_user_id FOREIGN KEY (customuser_id) REFERENCES public."user"(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.user_user_permissions DROP CONSTRAINT user_user_permissions_customuser_id_3b468234_fk_user_id;
       public          postgres    false    2999    211    215                                                                                                                                                                                                                                    3204.dat                                                                                            0000600 0004000 0002000 00000000005 14103163760 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3206.dat                                                                                            0000600 0004000 0002000 00000000005 14103163760 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3202.dat                                                                                            0000600 0004000 0002000 00000004100 14103163760 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Can add log entry	1	add_logentry
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
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add Token	6	add_token
22	Can change Token	6	change_token
23	Can delete Token	6	delete_token
24	Can view Token	6	view_token
25	Can add token	7	add_tokenproxy
26	Can change token	7	change_tokenproxy
27	Can delete token	7	delete_tokenproxy
28	Can view token	7	view_tokenproxy
29	Can add category	8	add_category
30	Can change category	8	change_category
31	Can delete category	8	delete_category
32	Can view category	8	view_category
33	Can add product	9	add_product
34	Can change product	9	change_product
35	Can delete product	9	delete_product
36	Can view product	9	view_product
37	Can add custom user	10	add_customuser
38	Can change custom user	10	change_customuser
39	Can delete custom user	10	delete_customuser
40	Can view custom user	10	view_customuser
41	Can add order	11	add_order
42	Can change order	11	change_order
43	Can delete order	11	delete_order
44	Can view order	11	view_order
45	Can add cart	12	add_cart
46	Can change cart	12	change_cart
47	Can delete cart	12	delete_cart
48	Can view cart	12	view_cart
49	Can add site	13	add_site
50	Can change site	13	change_site
51	Can delete site	13	delete_site
52	Can view site	13	view_site
53	Can add cart product	14	add_cartproduct
54	Can change cart product	14	change_cartproduct
55	Can delete cart product	14	delete_cartproduct
56	Can view cart product	14	view_cartproduct
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                3219.dat                                                                                            0000600 0004000 0002000 00000000116 14103163760 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        7b562b26932f4fe1fc4d0774557ca4cf0040f678	2021-07-13 21:32:46.457+05:30	4
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                  3224.dat                                                                                            0000600 0004000 0002000 00000000116 14103163760 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        57	8	45.00	2021-08-05	t
58	4	73.00	2021-08-05	t
29	4	242.00	2021-07-23	t
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                  3216.dat                                                                                            0000600 0004000 0002000 00000000471 14103163760 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Apparel	includes hoodies, kurti, kurta etc.	2021-07-16 11:56:23.06+05:30	2021-07-16 11:58:15.805+05:30
2	Electronics	includes AC, TV, Laptops etc.	2021-07-16 11:57:10.453+05:30	2021-07-16 11:57:10.453+05:30
3	Grocery	includes snacks, masala etc.	2021-07-16 11:58:04.556+05:30	2021-07-16 11:58:04.556+05:30
\.


                                                                                                                                                                                                       3214.dat                                                                                            0000600 0004000 0002000 00000024302 14103163760 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2021-07-13 21:19:46.716+05:30	2	fenil@gmail.com	3		10	1
2	2021-07-13 21:25:26.47+05:30	3	fenil@gmail.com	3		10	1
3	2021-07-15 17:45:09.176+05:30	5	nilpa@gmail.com	3		10	1
4	2021-07-15 17:54:21.594+05:30	6	nilpa@gmail.com	3		10	1
5	2021-07-15 18:06:34.816+05:30	7	nilpa@gmail.cpom	3		10	1
6	2021-07-15 18:10:11.93+05:30	8	nilpa@gmail.com	3		10	1
7	2021-07-16 11:56:23.085+05:30	1	Apparel	1	[{"added": {}}]	8	1
8	2021-07-16 11:57:10.461+05:30	2	Electronics	1	[{"added": {}}]	8	1
9	2021-07-16 11:58:04.56+05:30	3	Grocery	1	[{"added": {}}]	8	1
10	2021-07-16 11:58:15.807+05:30	1	Apparel	2	[{"changed": {"fields": ["Description"]}}]	8	1
11	2021-07-16 14:00:36.27+05:30	1	Amul Taaza Milk	1	[{"added": {}}]	9	1
12	2021-07-16 14:14:09.178+05:30	2	Dukes Waffy	1	[{"added": {}}]	9	1
13	2021-07-16 14:15:47.237+05:30	3	Lays Potato Chips	1	[{"added": {}}]	9	1
14	2021-07-16 14:22:40.302+05:30	4	Tropicana juice	1	[{"added": {}}]	9	1
15	2021-07-16 14:45:03.345+05:30	5	Hitachi AC	1	[{"added": {}}]	9	1
16	2021-07-16 14:47:59.159+05:30	6	Electric Kettle	1	[{"added": {}}]	9	1
17	2021-07-16 14:51:35.019+05:30	7	Electric Iron	1	[{"added": {}}]	9	1
18	2021-07-16 14:54:11.767+05:30	8	T-Shirt	1	[{"added": {}}]	9	1
19	2021-07-16 14:57:23.392+05:30	9	Formal Shirt	1	[{"added": {}}]	9	1
20	2021-07-16 15:00:00.075+05:30	10	Hoodie	1	[{"added": {}}]	9	1
21	2021-07-16 15:02:06.706+05:30	11	Kurta	1	[{"added": {}}]	9	1
22	2021-07-16 15:03:47.176+05:30	12	Amul Cheese	1	[{"added": {}}]	9	1
23	2021-07-16 15:05:30.129+05:30	13	Maggi	1	[{"added": {}}]	9	1
24	2021-07-16 15:09:00.523+05:30	14	Dell Laptop	1	[{"added": {}}]	9	1
25	2021-07-16 15:13:28.335+05:30	15	LED TV	1	[{"added": {}}]	9	1
26	2021-07-16 15:14:53.91+05:30	16	T-Shirt	1	[{"added": {}}]	9	1
27	2021-07-16 15:16:26.357+05:30	17	T-Shirt	1	[{"added": {}}]	9	1
28	2021-07-16 15:19:28.638+05:30	18	OnePlus 9 Pro 5G	1	[{"added": {}}]	9	1
29	2021-07-16 15:21:02.989+05:30	19	Washing Machine	1	[{"added": {}}]	9	1
30	2021-07-16 15:22:43.882+05:30	20	Masala	1	[{"added": {}}]	9	1
31	2021-07-16 15:25:06.337+05:30	21	Wheat Flour	1	[{"added": {}}]	9	1
32	2021-07-16 15:28:22.317+05:30	22	One piece dress	1	[{"added": {}}]	9	1
33	2021-07-16 15:30:30.919+05:30	23	Cropped Top Hoodie	1	[{"added": {}}]	9	1
34	2021-07-16 15:32:13.453+05:30	24	Kurti	1	[{"added": {}}]	9	1
35	2021-07-16 15:35:54.429+05:30	25	One piece dress	1	[{"added": {}}]	9	1
36	2021-07-16 22:59:12.366+05:30	26	test	1	[{"added": {}}]	9	1
37	2021-07-16 23:00:15.078+05:30	26	test	3		9	1
38	2021-07-19 19:50:00.155779+05:30	2	Cart object (2)	3		12	1
39	2021-07-19 20:05:14.863299+05:30	3	Cart object (3)	3		12	1
40	2021-07-19 20:05:14.876275+05:30	1	Cart object (1)	3		12	1
41	2021-07-19 20:11:52.425402+05:30	19	Washing Machine	2	[{"changed": {"fields": ["Price"]}}]	9	1
42	2021-07-19 20:12:02.365582+05:30	18	OnePlus 9 Pro 5G	2	[{"changed": {"fields": ["Price"]}}]	9	1
43	2021-07-19 20:12:12.016084+05:30	15	LED TV	2	[{"changed": {"fields": ["Price"]}}]	9	1
44	2021-07-19 20:12:33.418586+05:30	14	Dell Laptop	2	[{"changed": {"fields": ["Price"]}}]	9	1
45	2021-07-19 20:12:41.630488+05:30	11	Kurta	2	[{"changed": {"fields": ["Price"]}}]	9	1
46	2021-07-19 20:12:50.131513+05:30	9	Formal Shirt	2	[{"changed": {"fields": ["Price"]}}]	9	1
47	2021-07-19 20:12:59.217832+05:30	5	Hitachi AC	2	[{"changed": {"fields": ["Price"]}}]	9	1
48	2021-07-19 20:19:28.22111+05:30	5	Cart object (5)	3		12	1
49	2021-07-19 20:19:28.233738+05:30	4	Cart object (4)	3		12	1
50	2021-07-20 12:02:01.974977+05:30	6	Cart object (6)	3		12	1
51	2021-07-20 18:22:46.236021+05:30	7	Cart object (7)	2	[{"changed": {"fields": ["Quantity", "Subtotal"]}}]	12	1
52	2021-07-20 18:55:20.971903+05:30	7	Cart object (7)	2	[{"changed": {"fields": ["Quantity", "Subtotal"]}}]	12	1
53	2021-07-20 18:57:01.484918+05:30	7	Cart object (7)	3		12	1
54	2021-07-20 21:34:00.380282+05:30	9	Cart object (9)	2	[{"changed": {"fields": ["Quantity", "Subtotal"]}}]	12	1
55	2021-07-20 21:42:40.120345+05:30	9	Cart object (9)	2	[{"changed": {"fields": ["Quantity", "Subtotal"]}}]	12	1
56	2021-07-20 21:59:13.497432+05:30	9	Cart object (9)	2	[{"changed": {"fields": ["Quantity", "Subtotal"]}}]	12	1
57	2021-07-20 22:03:05.282864+05:30	9	Cart object (9)	2	[{"changed": {"fields": ["Quantity", "Subtotal"]}}]	12	1
58	2021-07-20 22:03:40.910025+05:30	9	Cart object (9)	2	[{"changed": {"fields": ["Quantity", "Subtotal"]}}]	12	1
59	2021-07-20 22:04:03.752843+05:30	9	Cart object (9)	2	[{"changed": {"fields": ["Quantity", "Subtotal"]}}]	12	1
60	2021-07-20 22:05:30.69298+05:30	9	Cart object (9)	2	[{"changed": {"fields": ["Quantity", "Subtotal"]}}]	12	1
61	2021-07-20 22:07:34.610019+05:30	9	Cart object (9)	2	[{"changed": {"fields": ["Quantity", "Subtotal"]}}]	12	1
62	2021-07-20 22:46:08.415346+05:30	1	Amul Taaza Milk	2	[{"changed": {"fields": ["Price"]}}]	9	1
63	2021-07-20 22:46:41.673004+05:30	1	Amul Taaza Milk	2	[{"changed": {"fields": ["Price"]}}]	9	1
64	2021-07-21 00:21:30.986311+05:30	13	Cart object (13)	3		12	1
65	2021-07-21 00:32:27.512253+05:30	16	Cart object (16)	3		12	1
66	2021-07-21 00:43:00.108257+05:30	17	Cart object (17)	3		12	1
67	2021-07-21 17:42:15.508785+05:30	18	18	2	[{"changed": {"fields": ["Total"]}}]	12	1
68	2021-07-23 02:27:10.646811+05:30	19	19	3		12	1
69	2021-07-23 02:27:10.658791+05:30	18	18	3		12	1
70	2021-07-23 02:30:44.141836+05:30	21	21	3		12	1
71	2021-07-23 02:30:44.15779+05:30	20	20	3		12	1
72	2021-07-23 02:32:12.962149+05:30	23	23	3		12	1
73	2021-07-23 02:32:12.976621+05:30	22	22	3		12	1
74	2021-07-23 02:42:05.517888+05:30	25	25	3		12	1
75	2021-07-23 02:42:05.531026+05:30	24	24	3		12	1
76	2021-07-23 02:55:26.282323+05:30	27	27	3		12	1
77	2021-07-23 02:55:26.28732+05:30	26	26	3		12	1
78	2021-07-31 00:31:06.265187+05:30	29	29	2	[{"changed": {"fields": ["Is ordered"]}}]	12	1
79	2021-07-31 00:31:16.660553+05:30	1	Order object (1)	3		11	1
80	2021-07-31 13:08:11.037816+05:30	29	29	2	[{"changed": {"fields": ["Is ordered"]}}]	12	1
81	2021-07-31 13:36:48.565991+05:30	29	29	2	[{"changed": {"fields": ["Is ordered"]}}]	12	1
82	2021-07-31 14:41:14.241312+05:30	29	29	2	[{"changed": {"fields": ["Is ordered"]}}]	12	1
83	2021-07-31 14:44:24.298651+05:30	29	29	2	[{"changed": {"fields": ["Is ordered"]}}]	12	1
84	2021-07-31 14:52:55.233979+05:30	29	29	2	[{"changed": {"fields": ["Is ordered"]}}]	12	1
85	2021-07-31 15:25:52.628517+05:30	29	29	2	[{"changed": {"fields": ["Is ordered"]}}]	12	1
86	2021-07-31 15:35:24.629173+05:30	29	29	2	[{"changed": {"fields": ["Is ordered"]}}]	12	1
87	2021-07-31 15:36:01.973119+05:30	29	29	2	[{"changed": {"fields": ["Is ordered"]}}]	12	1
88	2021-07-31 17:56:55.843359+05:30	2	Order object (2)	3		11	1
89	2021-07-31 17:57:03.862214+05:30	29	29	2	[{"changed": {"fields": ["Is ordered"]}}]	12	1
90	2021-08-01 15:14:19.79366+05:30	3	Order object (3)	3		11	1
91	2021-08-01 15:14:35.932419+05:30	29	29	2	[{"changed": {"fields": ["Is ordered"]}}]	12	1
92	2021-08-02 01:05:14.81077+05:30	29	29	2	[{"changed": {"fields": ["Is ordered"]}}]	12	1
93	2021-08-02 01:05:29.395942+05:30	4	Order object (4)	3		11	1
94	2021-08-02 13:28:54.863321+05:30	5	Order object (5)	3		11	1
95	2021-08-02 13:29:13.573504+05:30	29	29	2	[{"changed": {"fields": ["Is ordered"]}}]	12	1
96	2021-08-02 15:22:50.977954+05:30	2	Dukes Waffy	2	[{"changed": {"fields": ["Stock"]}}]	9	1
97	2021-08-02 15:22:57.85249+05:30	1	Amul Taaza Milk	2	[{"changed": {"fields": ["Stock"]}}]	9	1
98	2021-08-02 15:48:43.101178+05:30	1	Amul Taaza Milk	2	[{"changed": {"fields": ["Stock"]}}]	9	1
99	2021-08-02 15:49:14.850546+05:30	1	Amul Taaza Milk	2	[{"changed": {"fields": ["Stock"]}}]	9	1
100	2021-08-02 16:06:37.843453+05:30	1	Amul Taaza Milk	2	[{"changed": {"fields": ["Stock"]}}]	9	1
101	2021-08-02 16:07:15.981743+05:30	1	Amul Taaza Milk	2	[{"changed": {"fields": ["Stock"]}}]	9	1
102	2021-08-03 13:34:08.582669+05:30	30	30	3		12	1
103	2021-08-03 13:34:18.862131+05:30	43	CartProduct object (43)	3		14	1
104	2021-08-03 13:39:19.878012+05:30	44	CartProduct object (44)	3		14	1
105	2021-08-03 13:39:30.433876+05:30	31	31	3		12	1
106	2021-08-03 19:51:58.574126+05:30	32	32	3		12	1
107	2021-08-03 20:19:02.082953+05:30	8	Order object (8)	3		11	1
108	2021-08-03 20:20:14.652372+05:30	33	33	3		12	1
109	2021-08-03 21:00:05.336209+05:30	34	34	3		12	1
110	2021-08-03 21:42:42.684259+05:30	35	35	3		12	1
111	2021-08-03 21:47:49.660736+05:30	36	36	3		12	1
112	2021-08-03 21:48:21.928609+05:30	6	Electric Kettle	2	[{"changed": {"fields": ["Stock"]}}]	9	1
113	2021-08-03 21:48:34.118692+05:30	4	Tropicana juice	2	[{"changed": {"fields": ["Stock"]}}]	9	1
114	2021-08-03 22:14:04.658465+05:30	37	37	3		12	1
115	2021-08-04 10:25:37.695746+05:30	5	c2bab3a5-610c-414b-9c68-c8ccb9e9cb75	3		10	1
116	2021-08-04 10:45:42.635114+05:30	6	99bb6806-2f72-4686-8934-243fb95d0b69	3		10	1
117	2021-08-04 21:03:44.93728+05:30	40	40	3		12	1
118	2021-08-04 21:47:02.219248+05:30	41	41	3		12	1
119	2021-08-04 22:03:42.664972+05:30	42	42	3		12	1
120	2021-08-04 22:17:04.802492+05:30	76	CartProduct object (76)	3		14	1
121	2021-08-04 22:17:41.224059+05:30	39	39	2	[{"changed": {"fields": ["Total"]}}]	12	1
122	2021-08-04 22:30:24.267612+05:30	43	43	3		12	1
123	2021-08-04 22:30:24.279921+05:30	39	39	3		12	1
124	2021-08-04 22:30:24.280625+05:30	38	38	3		12	1
125	2021-08-04 22:42:36.94015+05:30	45	45	3		12	1
126	2021-08-04 22:42:36.95209+05:30	44	44	3		12	1
127	2021-08-04 23:17:13.00542+05:30	14	Order object (14)	3		11	1
128	2021-08-04 23:17:28.246444+05:30	46	46	2	[{"changed": {"fields": ["Is ordered"]}}]	12	1
129	2021-08-05 00:32:51.360539+05:30	47	47	3		12	1
130	2021-08-05 00:32:51.385903+05:30	46	46	3		12	1
131	2021-08-05 00:44:37.621987+05:30	49	49	3		12	1
132	2021-08-05 00:44:37.637606+05:30	48	48	3		12	1
133	2021-08-05 00:48:21.974737+05:30	51	51	3		12	1
134	2021-08-05 00:48:21.995236+05:30	50	50	3		12	1
135	2021-08-05 11:29:18.623042+05:30	52	52	3		12	1
136	2021-08-05 11:29:32.473642+05:30	7	f601f5b2-3074-4c8e-8b23-9b52bff78f22	3		10	1
137	2021-08-05 13:48:54.72723+05:30	53	53	3		12	1
138	2021-08-05 13:50:24.371538+05:30	54	54	3		12	1
139	2021-08-05 13:54:09.723709+05:30	56	56	3		12	1
140	2021-08-05 13:54:09.745088+05:30	55	55	3		12	1
141	2021-08-05 19:20:01.529731+05:30	9	fenilk@gmail.com	3		10	1
142	2021-08-05 19:58:02.136334+05:30	59	59	3		12	1
143	2021-08-05 19:58:52.077628+05:30	10	nilpa@gmail.com	3		10	1
144	2021-08-05 20:02:15.562865+05:30	11	nilpa@gmail.com	3		10	1
145	2021-08-06 01:57:37.89514+05:30	4	Tropicana juice	2	[{"changed": {"fields": ["Stock"]}}]	9	1
\.


                                                                                                                                                                                                                                                                                                                              3200.dat                                                                                            0000600 0004000 0002000 00000000405 14103163760 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	authtoken	token
7	authtoken	tokenproxy
8	category	category
9	product	product
10	user	customuser
11	order	order
12	order	cart
13	sites	site
14	order	cartproduct
\.


                                                                                                                                                                                                                                                           3198.dat                                                                                            0000600 0004000 0002000 00000004720 14103163760 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	contenttypes	0001_initial	2021-07-19 19:07:07.235937+05:30
2	contenttypes	0002_remove_content_type_name	2021-07-19 19:07:07.243795+05:30
3	auth	0001_initial	2021-07-19 19:07:07.29406+05:30
4	auth	0002_alter_permission_name_max_length	2021-07-19 19:07:07.347436+05:30
5	auth	0003_alter_user_email_max_length	2021-07-19 19:07:07.363142+05:30
6	auth	0004_alter_user_username_opts	2021-07-19 19:07:07.368776+05:30
7	auth	0005_alter_user_last_login_null	2021-07-19 19:07:07.372764+05:30
8	auth	0006_require_contenttypes_0002	2021-07-19 19:07:07.374121+05:30
9	auth	0007_alter_validators_add_error_messages	2021-07-19 19:07:07.37911+05:30
10	auth	0008_alter_user_username_max_length	2021-07-19 19:07:07.383643+05:30
11	auth	0009_alter_user_last_name_max_length	2021-07-19 19:07:07.388639+05:30
12	auth	0010_alter_group_name_max_length	2021-07-19 19:07:07.399873+05:30
13	auth	0011_update_proxy_permissions	2021-07-19 19:07:07.403923+05:30
14	user	0001_initial	2021-07-19 19:07:07.459177+05:30
15	admin	0001_initial	2021-07-19 19:07:07.551679+05:30
16	admin	0002_logentry_remove_auto_add	2021-07-19 19:07:07.580758+05:30
17	admin	0003_logentry_add_action_flag_choices	2021-07-19 19:07:07.586516+05:30
18	category	0001_initial	2021-07-19 19:07:07.600523+05:30
19	product	0001_initial	2021-07-19 19:07:07.624334+05:30
20	api	0001_initial	2021-07-19 19:07:07.669723+05:30
21	api	0002_auto_20210719_1906	2021-07-19 19:07:07.695486+05:30
22	authtoken	0001_initial	2021-07-19 19:07:07.746761+05:30
23	authtoken	0002_auto_20160226_1747	2021-07-19 19:07:07.806243+05:30
24	authtoken	0003_tokenproxy	2021-07-19 19:07:07.808685+05:30
25	sessions	0001_initial	2021-07-19 19:07:07.827129+05:30
26	api	0003_auto_20210719_1919	2021-07-19 19:19:32.010963+05:30
27	order	0001_initial	2021-07-19 19:19:32.091231+05:30
28	order	0002_cart_subtotal	2021-07-19 20:09:23.495723+05:30
29	product	0002_auto_20210719_2013	2021-07-19 20:13:31.249982+05:30
30	sites	0001_initial	2021-07-20 16:11:24.686547+05:30
31	sites	0002_alter_domain_unique	2021-07-20 16:11:24.727345+05:30
32	product	0003_auto_20210721_1015	2021-07-21 10:15:18.387911+05:30
33	order	0003_auto_20210721_1015	2021-07-21 10:15:18.657155+05:30
34	user	0002_auto_20210723_0043	2021-07-23 00:43:14.958556+05:30
35	order	0004_auto_20210727_1559	2021-07-27 16:00:01.269624+05:30
36	user	0003_auto_20210805_1931	2021-08-05 19:31:58.361759+05:30
37	user	0003_auto_20210805_1952	2021-08-05 19:52:42.955382+05:30
38	user	0004_auto_20210805_1954	2021-08-05 19:54:30.893052+05:30
\.


                                                3220.dat                                                                                            0000600 0004000 0002000 00000002370 14103163760 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        7ou9rua4tt9pglnwuo839tx55watomhf	MmZlNGFmYmYxZTcyOTg3ZTI1NmEwZGNjNzBlMTVkOTM1YmE0NzhkMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMDE1NDZmMjY2YzE5ZDZkZDljYjkxNjljYTgwNDVmZDhlNGVhNzllIn0=	2021-07-29 17:44:42.429+05:30
og299l9qk4bwrt1o14nhfl0c8dtzkwa1	MmZlNGFmYmYxZTcyOTg3ZTI1NmEwZGNjNzBlMTVkOTM1YmE0NzhkMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMDE1NDZmMjY2YzE5ZDZkZDljYjkxNjljYTgwNDVmZDhlNGVhNzllIn0=	2021-07-27 21:02:37.864+05:30
wyq4aildufxac15fo70ti3ikjl59w8i5	MmZlNGFmYmYxZTcyOTg3ZTI1NmEwZGNjNzBlMTVkOTM1YmE0NzhkMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMDE1NDZmMjY2YzE5ZDZkZDljYjkxNjljYTgwNDVmZDhlNGVhNzllIn0=	2021-07-30 11:54:00.295+05:30
ymueocohu27k3fi9ocdzfluozjuowodw	MmZlNGFmYmYxZTcyOTg3ZTI1NmEwZGNjNzBlMTVkOTM1YmE0NzhkMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMDE1NDZmMjY2YzE5ZDZkZDljYjkxNjljYTgwNDVmZDhlNGVhNzllIn0=	2021-08-06 12:11:23.289502+05:30
\.


                                                                                                                                                                                                                                                                        3226.dat                                                                                            0000600 0004000 0002000 00000000037 14103163760 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	example.com	example.com
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 3222.dat                                                                                            0000600 0004000 0002000 00000000263 14103163760 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        6	djjevq2v	2021-08-02 21:52:25.774872+05:30	2021-08-02 21:52:25.774872+05:30	29	222.00
15	e3afsy9k	2021-08-05 15:19:29.929623+05:30	2021-08-05 15:19:29.929623+05:30	58	73.00
\.


                                                                                                                                                                                                                                                                                                                                             3228.dat                                                                                            0000600 0004000 0002000 00000000134 14103163761 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        98	45	1	45.00	57
99	45	1	45.00	58
100	14	2	28.00	58
42	45	4	180.00	29
41	14	3	42.00	29
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                    3230.dat                                                                                            0000600 0004000 0002000 00000000057 14103163761 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        98	98	2
99	99	2
100	100	1
41	41	1
42	42	2
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 3218.dat                                                                                            0000600 0004000 0002000 00000007204 14103163761 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        7	Electric Iron	Philips Classic GC097/50 750-Watt Dry Iron	699.00	1	t	images/iron.jpg	2021-07-16 14:51:35.016+05:30	2021-07-16 14:51:35.016+05:30	2
10	Hoodie	Yellow Hoodie/Winterwear	500.00	3	t	images/hoodie-1.jpg	2021-07-16 15:00:00.073+05:30	2021-07-16 15:00:00.073+05:30	1
12	Amul Cheese	Amul Processed Cheese - Block 500gm	245.00	20	t	images/cheese.jpg	2021-07-16 15:03:47.172+05:30	2021-07-16 15:03:47.172+05:30	3
13	Maggi	Meri Masala Maggi Instant Noodles Vegetarian	10.00	3	t	images/maggie.jpg	2021-07-16 15:05:30.126+05:30	2021-07-16 15:05:30.126+05:30	3
16	T-Shirt	Blue Half Sleeve T-Shirt	349.00	3	t	images/tshirt-3.jpg	2021-07-16 15:14:53.908+05:30	2021-07-16 15:14:53.908+05:30	1
17	T-Shirt	Crew-Neck T-shirt with Contrast Stripes	999.00	10	t	images/tshirt-2.jpg	2021-07-16 15:16:26.354+05:30	2021-07-16 15:16:26.354+05:30	1
20	Masala	Everest Kitchen King Masala , 500gm	275.00	13	t	images/kitchen-king-masala.jpg	2021-07-16 15:22:43.878+05:30	2021-07-16 15:22:43.878+05:30	3
22	One piece dress	Women Skater Dress	659.00	6	t	images/one-piece-1.jpeg	2021-07-16 15:28:22.315+05:30	2021-07-16 15:28:22.315+05:30	1
23	Cropped Top Hoodie	Women Hot Selling Long Sleeve Cropped Top Hoodie	218.00	5	t	images/crop-hoodie.webp	2021-07-16 15:30:30.917+05:30	2021-07-16 15:30:30.917+05:30	1
24	Kurti	Naari Yellow Viscose Solid Kurti	686.00	9	t	images/kurti.webp	2021-07-16 15:32:13.45+05:30	2021-07-16 15:32:13.45+05:30	1
25	One piece dress	Sanchya Women's Body Con Dress	500.00	2	t	images/one-piece-2.jpeg	2021-07-16 15:35:54.427+05:30	2021-07-16 15:35:54.427+05:30	1
19	Washing Machine	LG 8 kg 5 Star Inverter Wi-Fi Fully-Automatic Front Loading Washing Machine	41590.00	2	t	images/washing-machine.jpg	2021-07-16 15:21:02.987+05:30	2021-07-19 20:11:52.424405+05:30	2
18	OnePlus 9 Pro 5G	Pine Green 12GB RAM, 256GB Storage	69999.00	1	t	images/mobile.jpg	2021-07-16 15:19:28.636+05:30	2021-07-19 20:12:02.364565+05:30	2
15	LED TV	Sony Bravia 138.8 cm (55 inches) 4K Ultra HD LED TV 55X7500H (Black)	67500.00	1	t	images/tv.jpeg	2021-07-16 15:13:28.333+05:30	2021-07-19 20:12:12.015625+05:30	2
14	Dell Laptop	New Latitude 13 5320 Laptop 11th Generation Core i5	93080.61	1	t	images/laptop.webp	2021-07-16 15:09:00.52+05:30	2021-07-19 20:12:33.417563+05:30	2
11	Kurta	Blue Men Kurta and Pyjama Set	1550.00	15	t	images/kurta.jpeg	2021-07-16 15:02:06.704+05:30	2021-07-19 20:12:41.62948+05:30	1
9	Formal Shirt	Van Heusen Black Shirt	2399.00	10	t	images/formal-shirt.jpg	2021-07-16 14:57:23.39+05:30	2021-07-19 20:12:50.130769+05:30	1
21	Wheat Flour	Aashirvaad Multigrain Atta 5 kg	259.00	9	t	images/wheat-flour.jpg	2021-07-16 15:25:06.335+05:30	2021-08-04 23:16:15.417425+05:30	3
3	Lays Potato Chips	India's Magic Masala	10.00	13	t	images/chips.jpg	2021-07-16 14:15:47.233+05:30	2021-08-04 23:16:15.435391+05:30	3
2	Dukes Waffy	Strawberry Flavoured creamy and crunchy wafers 450gm	45.00	4	t	images/waffy.jpg	2021-07-16 14:14:09.173+05:30	2021-08-05 15:19:29.921629+05:30	3
1	Amul Taaza Milk	Fresh toned milk 200ml	14.00	3	t	images/milk.jpg	2021-07-16 14:00:36.259+05:30	2021-08-05 15:19:29.929623+05:30	3
4	Tropicana juice	Mixed fruit juice 1l	110.00	0	t	images/juice.jpg	2021-07-16 14:22:40.297+05:30	2021-08-06 01:57:37.891849+05:30	3
6	Electric Kettle	Stainless Steel Body 1.5l boiler for Water, instant noodles, soup etc.	625.00	5	t	images/electric-kettle.jpg	2021-07-16 14:47:59.157+05:30	2021-08-03 21:48:21.925541+05:30	2
5	Hitachi AC	1.5 Ton 5 Star Inverter Split	43699.00	5	t	images/AC.png	2021-07-16 14:45:03.341+05:30	2021-08-03 21:49:19.728476+05:30	2
8	T-Shirt	Believe Women's Half Sleeve Light Pink T-Shirt	250.00	4	t	images/tshirt-1.jpg	2021-07-16 14:54:11.764+05:30	2021-08-03 22:48:25.808277+05:30	1
\.


                                                                                                                                                                                                                                                                                                                                                                                            3208.dat                                                                                            0000600 0004000 0002000 00000001157 14103163761 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	pbkdf2_sha256$180000$aDJJMAUoZRcC$rO9qsN11JcarZUJ/uI6dxSmrAUFBbbq2EY+hlb9x3YI=	2021-07-23 12:11:23.286717+05:30	t			t	t	2021-07-13 21:02:02.28+05:30	keya	keya@gmail.com	\N	\N	2021-07-13 21:02:02.378+05:30	2021-07-13 21:02:02.378+05:30	\N
8		\N	f			f	t	2021-08-05 11:28:22.397715+05:30	\N	\N	\N	\N	2021-08-05 11:28:22.397715+05:30	2021-08-05 11:28:22.397715+05:30	6048854e-69cd-43e7-bece-7298df1e9c58
4	pbkdf2_sha256$180000$iRgvRi9cixhg$muiECEKMv59bKRhs+P1T1jHLdQweQKVzjLVf3TV+ebk=	\N	f			f	t	2021-07-13 21:27:45.003+05:30	fenil	fenil@gmail.com	\N	\N	2021-07-13 21:27:45.003+05:30	2021-08-05 13:58:37.642729+05:30	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                                                 3210.dat                                                                                            0000600 0004000 0002000 00000000005 14103163761 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3212.dat                                                                                            0000600 0004000 0002000 00000000005 14103163761 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000122040 14103163761 0015365 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE eretail;
--
-- Name: eretail; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE eretail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';


ALTER DATABASE eretail OWNER TO postgres;

\connect eretail

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO postgres;

--
-- Name: cart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart (
    id integer NOT NULL,
    user_id integer,
    total numeric(10,2) NOT NULL,
    date date NOT NULL,
    is_ordered boolean NOT NULL
);


ALTER TABLE public.cart OWNER TO postgres;

--
-- Name: cart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_id_seq OWNER TO postgres;

--
-- Name: cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cart_id_seq OWNED BY public.cart.id;


--
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(250) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.category OWNER TO postgres;

--
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_id_seq OWNER TO postgres;

--
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."order" (
    id integer NOT NULL,
    transaction_id character varying(150) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    cart_id integer NOT NULL,
    total numeric(10,2) NOT NULL
);


ALTER TABLE public."order" OWNER TO postgres;

--
-- Name: order_cartproduct; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_cartproduct (
    id integer NOT NULL,
    price integer NOT NULL,
    quantity integer NOT NULL,
    subtotal numeric(10,2) NOT NULL,
    cart_id integer NOT NULL,
    CONSTRAINT order_cartproduct_price_check CHECK ((price >= 0)),
    CONSTRAINT order_cartproduct_quantity_check CHECK ((quantity >= 0))
);


ALTER TABLE public.order_cartproduct OWNER TO postgres;

--
-- Name: order_cartproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_cartproduct_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_cartproduct_id_seq OWNER TO postgres;

--
-- Name: order_cartproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_cartproduct_id_seq OWNED BY public.order_cartproduct.id;


--
-- Name: order_cartproduct_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_cartproduct_product (
    id integer NOT NULL,
    cartproduct_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.order_cartproduct_product OWNER TO postgres;

--
-- Name: order_cartproduct_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_cartproduct_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_cartproduct_product_id_seq OWNER TO postgres;

--
-- Name: order_cartproduct_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_cartproduct_product_id_seq OWNED BY public.order_cartproduct_product.id;


--
-- Name: order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_id_seq OWNER TO postgres;

--
-- Name: order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_id_seq OWNED BY public."order".id;


--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(250) NOT NULL,
    price numeric(10,2) NOT NULL,
    stock integer NOT NULL,
    is_active boolean NOT NULL,
    image character varying(100),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    category_id integer,
    CONSTRAINT product_stock_9dd2302b_check CHECK ((stock >= 0))
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_id_seq OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    username character varying(50),
    email character varying(254),
    phone character varying(20),
    gender character varying(10),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    device character varying(200)
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- Name: user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_groups (
    id integer NOT NULL,
    customuser_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.user_groups OWNER TO postgres;

--
-- Name: user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_groups_id_seq OWNER TO postgres;

--
-- Name: user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_groups_id_seq OWNED BY public.user_groups.id;


--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO postgres;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_user_permissions (
    id integer NOT NULL,
    customuser_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.user_user_permissions OWNER TO postgres;

--
-- Name: user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_user_permissions_id_seq OWNED BY public.user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: cart id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart ALTER COLUMN id SET DEFAULT nextval('public.cart_id_seq'::regclass);


--
-- Name: category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: order id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."order" ALTER COLUMN id SET DEFAULT nextval('public.order_id_seq'::regclass);


--
-- Name: order_cartproduct id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_cartproduct ALTER COLUMN id SET DEFAULT nextval('public.order_cartproduct_id_seq'::regclass);


--
-- Name: order_cartproduct_product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_cartproduct_product ALTER COLUMN id SET DEFAULT nextval('public.order_cartproduct_product_id_seq'::regclass);


--
-- Name: product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Name: user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_groups ALTER COLUMN id SET DEFAULT nextval('public.user_groups_id_seq'::regclass);


--
-- Name: user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.user_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.
COPY public.auth_group (id, name) FROM '$$PATH$$/3204.dat';

--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.
COPY public.auth_group_permissions (id, group_id, permission_id) FROM '$$PATH$$/3206.dat';

--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
\.
COPY public.auth_permission (id, name, content_type_id, codename) FROM '$$PATH$$/3202.dat';

--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
\.
COPY public.authtoken_token (key, created, user_id) FROM '$$PATH$$/3219.dat';

--
-- Data for Name: cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cart (id, user_id, total, date, is_ordered) FROM stdin;
\.
COPY public.cart (id, user_id, total, date, is_ordered) FROM '$$PATH$$/3224.dat';

--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (id, name, description, created_at, updated_at) FROM stdin;
\.
COPY public.category (id, name, description, created_at, updated_at) FROM '$$PATH$$/3216.dat';

--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.
COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM '$$PATH$$/3214.dat';

--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
\.
COPY public.django_content_type (id, app_label, model) FROM '$$PATH$$/3200.dat';

--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
\.
COPY public.django_migrations (id, app, name, applied) FROM '$$PATH$$/3198.dat';

--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.
COPY public.django_session (session_key, session_data, expire_date) FROM '$$PATH$$/3220.dat';

--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_site (id, domain, name) FROM stdin;
\.
COPY public.django_site (id, domain, name) FROM '$$PATH$$/3226.dat';

--
-- Data for Name: order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."order" (id, transaction_id, created_at, updated_at, cart_id, total) FROM stdin;
\.
COPY public."order" (id, transaction_id, created_at, updated_at, cart_id, total) FROM '$$PATH$$/3222.dat';

--
-- Data for Name: order_cartproduct; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_cartproduct (id, price, quantity, subtotal, cart_id) FROM stdin;
\.
COPY public.order_cartproduct (id, price, quantity, subtotal, cart_id) FROM '$$PATH$$/3228.dat';

--
-- Data for Name: order_cartproduct_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_cartproduct_product (id, cartproduct_id, product_id) FROM stdin;
\.
COPY public.order_cartproduct_product (id, cartproduct_id, product_id) FROM '$$PATH$$/3230.dat';

--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, name, description, price, stock, is_active, image, created_at, updated_at, category_id) FROM stdin;
\.
COPY public.product (id, name, description, price, stock, is_active, image, created_at, updated_at, category_id) FROM '$$PATH$$/3218.dat';

--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, password, last_login, is_superuser, first_name, last_name, is_staff, is_active, date_joined, username, email, phone, gender, created_at, updated_at, device) FROM stdin;
\.
COPY public."user" (id, password, last_login, is_superuser, first_name, last_name, is_staff, is_active, date_joined, username, email, phone, gender, created_at, updated_at, device) FROM '$$PATH$$/3208.dat';

--
-- Data for Name: user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_groups (id, customuser_id, group_id) FROM stdin;
\.
COPY public.user_groups (id, customuser_id, group_id) FROM '$$PATH$$/3210.dat';

--
-- Data for Name: user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_user_permissions (id, customuser_id, permission_id) FROM stdin;
\.
COPY public.user_user_permissions (id, customuser_id, permission_id) FROM '$$PATH$$/3212.dat';

--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_id_seq', 60, true);


--
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 3, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 145, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 38, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: order_cartproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_cartproduct_id_seq', 102, true);


--
-- Name: order_cartproduct_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_cartproduct_product_id_seq', 102, true);


--
-- Name: order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_id_seq', 15, true);


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 25, true);


--
-- Name: user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_groups_id_seq', 1, false);


--
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 11, true);


--
-- Name: user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: cart cart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: order order_cart_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_cart_id_key UNIQUE (cart_id);


--
-- Name: order_cartproduct order_cartproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_cartproduct
    ADD CONSTRAINT order_cartproduct_pkey PRIMARY KEY (id);


--
-- Name: order_cartproduct_product order_cartproduct_produc_cartproduct_id_product_i_ea1d085b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_cartproduct_product
    ADD CONSTRAINT order_cartproduct_produc_cartproduct_id_product_i_ea1d085b_uniq UNIQUE (cartproduct_id, product_id);


--
-- Name: order_cartproduct_product order_cartproduct_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_cartproduct_product
    ADD CONSTRAINT order_cartproduct_product_pkey PRIMARY KEY (id);


--
-- Name: order order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: user user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_email_key UNIQUE (email);


--
-- Name: user_groups user_groups_customuser_id_group_id_69b568ae_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_customuser_id_group_id_69b568ae_uniq UNIQUE (customuser_id, group_id);


--
-- Name: user_groups user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_pkey PRIMARY KEY (id);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- Name: user_user_permissions user_user_permissions_customuser_id_permission_id_2f47aad7_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_permissions
    ADD CONSTRAINT user_user_permissions_customuser_id_permission_id_2f47aad7_uniq UNIQUE (customuser_id, permission_id);


--
-- Name: user_user_permissions user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_permissions
    ADD CONSTRAINT user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: cart_user_id_1361a739; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cart_user_id_1361a739 ON public.cart USING btree (user_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: order_cartproduct_cart_id_e1c8f3fd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX order_cartproduct_cart_id_e1c8f3fd ON public.order_cartproduct USING btree (cart_id);


--
-- Name: order_cartproduct_product_cartproduct_id_5170ea9f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX order_cartproduct_product_cartproduct_id_5170ea9f ON public.order_cartproduct_product USING btree (cartproduct_id);


--
-- Name: order_cartproduct_product_product_id_60583b57; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX order_cartproduct_product_product_id_60583b57 ON public.order_cartproduct_product USING btree (product_id);


--
-- Name: product_category_id_640030a0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX product_category_id_640030a0 ON public.product USING btree (category_id);


--
-- Name: user_email_54dc62b2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_email_54dc62b2_like ON public."user" USING btree (email varchar_pattern_ops);


--
-- Name: user_groups_customuser_id_246bd336; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_groups_customuser_id_246bd336 ON public.user_groups USING btree (customuser_id);


--
-- Name: user_groups_group_id_b76f8aba; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_groups_group_id_b76f8aba ON public.user_groups USING btree (group_id);


--
-- Name: user_user_permissions_customuser_id_3b468234; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_permissions_customuser_id_3b468234 ON public.user_user_permissions USING btree (customuser_id);


--
-- Name: user_user_permissions_permission_id_9deb68a3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_permissions_permission_id_9deb68a3 ON public.user_user_permissions USING btree (permission_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_user_id FOREIGN KEY (user_id) REFERENCES public."user"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cart cart_user_id_1361a739_fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_user_id_1361a739_fk_user_id FOREIGN KEY (user_id) REFERENCES public."user"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_user_id FOREIGN KEY (user_id) REFERENCES public."user"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: order order_cart_id_78089ada_fk_cart_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_cart_id_78089ada_fk_cart_id FOREIGN KEY (cart_id) REFERENCES public.cart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: order_cartproduct order_cartproduct_cart_id_e1c8f3fd_fk_cart_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_cartproduct
    ADD CONSTRAINT order_cartproduct_cart_id_e1c8f3fd_fk_cart_id FOREIGN KEY (cart_id) REFERENCES public.cart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: order_cartproduct_product order_cartproduct_pr_cartproduct_id_5170ea9f_fk_order_car; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_cartproduct_product
    ADD CONSTRAINT order_cartproduct_pr_cartproduct_id_5170ea9f_fk_order_car FOREIGN KEY (cartproduct_id) REFERENCES public.order_cartproduct(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: order_cartproduct_product order_cartproduct_product_product_id_60583b57_fk_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_cartproduct_product
    ADD CONSTRAINT order_cartproduct_product_product_id_60583b57_fk_product_id FOREIGN KEY (product_id) REFERENCES public.product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product product_category_id_640030a0_fk_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_category_id_640030a0_fk_category_id FOREIGN KEY (category_id) REFERENCES public.category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_groups user_groups_customuser_id_246bd336_fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_customuser_id_246bd336_fk_user_id FOREIGN KEY (customuser_id) REFERENCES public."user"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_groups user_groups_group_id_b76f8aba_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_groups
    ADD CONSTRAINT user_groups_group_id_b76f8aba_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_permissions user_user_permission_permission_id_9deb68a3_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_permissions
    ADD CONSTRAINT user_user_permission_permission_id_9deb68a3_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_permissions user_user_permissions_customuser_id_3b468234_fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user_permissions
    ADD CONSTRAINT user_user_permissions_customuser_id_3b468234_fk_user_id FOREIGN KEY (customuser_id) REFERENCES public."user"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                