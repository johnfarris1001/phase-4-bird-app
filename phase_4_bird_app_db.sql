PGDMP     #    #             	    {           phase_4_bird_app_db    14.9    14.9 (Homebrew)     C           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            D           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            E           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            F           1262    16394    phase_4_bird_app_db    DATABASE     g   CREATE DATABASE phase_4_bird_app_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF8';
 #   DROP DATABASE phase_4_bird_app_db;
                jf_portfolio_db_user    false            �            1259    16402    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         heap    jf_portfolio_db_user    false            �            1259    16410    birds    TABLE     �   CREATE TABLE public.birds (
    id bigint NOT NULL,
    name character varying,
    species character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.birds;
       public         heap    jf_portfolio_db_user    false            �            1259    16409    birds_id_seq    SEQUENCE     u   CREATE SEQUENCE public.birds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.birds_id_seq;
       public          jf_portfolio_db_user    false    212            G           0    0    birds_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.birds_id_seq OWNED BY public.birds.id;
          public          jf_portfolio_db_user    false    211            �            1259    16395    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         heap    jf_portfolio_db_user    false            �           2604    16413    birds id    DEFAULT     d   ALTER TABLE ONLY public.birds ALTER COLUMN id SET DEFAULT nextval('public.birds_id_seq'::regclass);
 7   ALTER TABLE public.birds ALTER COLUMN id DROP DEFAULT;
       public          jf_portfolio_db_user    false    211    212    212            >          0    16402    ar_internal_metadata 
   TABLE DATA           R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public          jf_portfolio_db_user    false    210   �       @          0    16410    birds 
   TABLE DATA           J   COPY public.birds (id, name, species, created_at, updated_at) FROM stdin;
    public          jf_portfolio_db_user    false    212   �       =          0    16395    schema_migrations 
   TABLE DATA           4   COPY public.schema_migrations (version) FROM stdin;
    public          jf_portfolio_db_user    false    209   �       H           0    0    birds_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.birds_id_seq', 4, true);
          public          jf_portfolio_db_user    false    211            �           2606    16408 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public            jf_portfolio_db_user    false    210            �           2606    16417    birds birds_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.birds
    ADD CONSTRAINT birds_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.birds DROP CONSTRAINT birds_pkey;
       public            jf_portfolio_db_user    false    212            �           2606    16401 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public            jf_portfolio_db_user    false    209            >   C   x�K�+�,���M�+�,(�O)M.����4202�54�5�T00�24�22�36553��)eh����� �A�      @   �   x�}��
�0D�7_�P��hu�Z�Jh�(�\b��h$�~C�5��Üg�rL\���刽Rp�Jj��isZ⢍�+&����W����ZT)E�gD\]�0
�^�����7��WDv� �Ac��δ��=�m��A��f@�w�EY�Drhm#�؏���Q�H[�.���U)�*��+%�|��[�      =      x�3202640�026232����� (t     