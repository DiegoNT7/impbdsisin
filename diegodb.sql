PGDMP                      }            diegodb    17.5    17.5     (           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            )           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            *           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            +           1262    16385    diegodb    DATABASE     {   CREATE DATABASE diegodb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE diegodb;
                     Diego    false            �            1259    16394 	   candidato    TABLE     d   CREATE TABLE public.candidato (
    id_candidatos integer,
    descripcion character varying(30)
);
    DROP TABLE public.candidato;
       public         heap r       postgres    false            �            1259    16386 	   customers    TABLE     a   CREATE TABLE public.customers (
    customer_id integer,
    type_phone text,
    number text
);
    DROP TABLE public.customers;
       public         heap r       postgres    false            �            1259    16391    desarrollo2    TABLE     ~   CREATE TABLE public.desarrollo2 (
    desarrollo character varying(50) NOT NULL,
    etapa integer,
    finalizado integer
);
    DROP TABLE public.desarrollo2;
       public         heap r       postgres    false            �            1259    16397    descripciones    TABLE     M   CREATE TABLE public.descripciones (
    descripcion character varying(30)
);
 !   DROP TABLE public.descripciones;
       public         heap r       postgres    false            $          0    16394 	   candidato 
   TABLE DATA           ?   COPY public.candidato (id_candidatos, descripcion) FROM stdin;
    public               postgres    false    219   �
       "          0    16386 	   customers 
   TABLE DATA           D   COPY public.customers (customer_id, type_phone, number) FROM stdin;
    public               postgres    false    217   L       #          0    16391    desarrollo2 
   TABLE DATA           D   COPY public.desarrollo2 (desarrollo, etapa, finalizado) FROM stdin;
    public               postgres    false    218   �       %          0    16397    descripciones 
   TABLE DATA           4   COPY public.descripciones (descripcion) FROM stdin;
    public               postgres    false    220   �       $   j   x�3400�tO=�9'?=���s,.):�9/?�w��/,=�673*rxer�gd``��YT������&^����ll``��C�������3/=5/3�(�+F��� g�1�      "   a   x�U̻
�0���<�$M/��Wpt��"����b]�s�	�����X��Y4���Rm����z��:F���!�oD#���o��J�����K��3 <ݎ!�      #      x������ � �      %   4   x�sO=�9'?=�˱�������|.������ks3��B�L�1b���� ֱQ     