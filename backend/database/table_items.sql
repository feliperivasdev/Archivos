PGDMP      ,                |            shop     16.2 (Ubuntu 16.2-1.pgdg22.04+1)     16.2 (Ubuntu 16.2-1.pgdg22.04+1)     Q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            R           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            S           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            T           1262    16389    shop    DATABASE     p   CREATE DATABASE shop WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es_CO.UTF-8';
    DROP DATABASE shop;
                admin    false            �            1259    16391    items    TABLE     �   CREATE TABLE public.items (
    id bigint NOT NULL,
    name text NOT NULL,
    category text NOT NULL,
    date_add date NOT NULL,
    in_stock boolean NOT NULL,
    price integer NOT NULL
);
    DROP TABLE public.items;
       public         heap    admin    false            �            1259    16390    items_id_seq    SEQUENCE     u   CREATE SEQUENCE public.items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.items_id_seq;
       public          admin    false    216            U           0    0    items_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;
          public          admin    false    215            �           2604    16394    items id    DEFAULT     d   ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);
 7   ALTER TABLE public.items ALTER COLUMN id DROP DEFAULT;
       public          admin    false    216    215    216            N          0    16391    items 
   TABLE DATA           N   COPY public.items (id, name, category, date_add, in_stock, price) FROM stdin;
    public          admin    false    216   �
       V           0    0    items_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.items_id_seq', 3, true);
          public          admin    false    215            �           2606    16398    items items_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.items DROP CONSTRAINT items_pkey;
       public            admin    false    216            N   z   x�U�1
�0@�Y>�.��8�Z
�2v�*��Ulg�髭t������-��W)u�|�N��5RH1�)�)e1������L�� |R��_�ϫ��Ro4��j*l�G֩��)��r�(,     