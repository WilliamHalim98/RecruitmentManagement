PGDMP     #                
    w            twitter    10.10    12.0     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �
           1262    16393    twitter    DATABASE     �   CREATE DATABASE twitter WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE twitter;
                postgres    false            �            1259    16406    twittertable    TABLE     
  CREATE TABLE public.twittertable (
    account_username character varying(50) NOT NULL,
    account_name character varying(50),
    account_description character varying(255),
    account_status integer,
    account_friends integer,
    account_followers integer
);
     DROP TABLE public.twittertable;
       public            postgres    false            �
          0    16406    twittertable 
   TABLE DATA           �   COPY public.twittertable (account_username, account_name, account_description, account_status, account_friends, account_followers) FROM stdin;
    public          postgres    false    196   w       m
           2606    16410    twittertable twittertable_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.twittertable
    ADD CONSTRAINT twittertable_pkey PRIMARY KEY (account_username);
 H   ALTER TABLE ONLY public.twittertable DROP CONSTRAINT twittertable_pkey;
       public            postgres    false    196            �
      x������ � �     