PGDMP     9    %                 z         
   movie_data    14.1    14.1     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16395 
   movie_data    DATABASE     n   CREATE DATABASE movie_data WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE movie_data;
                postgres    false            ?            1259    16405    actors    TABLE     ?   CREATE TABLE public.actors (
    actor_id integer NOT NULL,
    first_name character varying(30),
    last_name character varying(30),
    gender character varying(1),
    date_birth date
);
    DROP TABLE public.actors;
       public         heap    postgres    false            ?            1259    16404    actors_actor_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.actors_actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.actors_actor_id_seq;
       public          postgres    false    212            ?           0    0    actors_actor_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.actors_actor_id_seq OWNED BY public.actors.actor_id;
          public          postgres    false    211            ?            1259    16397 	   directors    TABLE     ?   CREATE TABLE public.directors (
    director_id integer NOT NULL,
    first_name character varying(30),
    last_name character varying(30) NOT NULL,
    date_birth_day date,
    nationality character varying(20)
);
    DROP TABLE public.directors;
       public         heap    postgres    false            ?            1259    16396    directors_director_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.directors_director_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.directors_director_id_seq;
       public          postgres    false    210            ?           0    0    directors_director_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.directors_director_id_seq OWNED BY public.directors.director_id;
          public          postgres    false    209            b           2604    16408    actors actor_id    DEFAULT     r   ALTER TABLE ONLY public.actors ALTER COLUMN actor_id SET DEFAULT nextval('public.actors_actor_id_seq'::regclass);
 >   ALTER TABLE public.actors ALTER COLUMN actor_id DROP DEFAULT;
       public          postgres    false    211    212    212            a           2604    16400    directors director_id    DEFAULT     ~   ALTER TABLE ONLY public.directors ALTER COLUMN director_id SET DEFAULT nextval('public.directors_director_id_seq'::regclass);
 D   ALTER TABLE public.directors ALTER COLUMN director_id DROP DEFAULT;
       public          postgres    false    209    210    210            ?          0    16405    actors 
   TABLE DATA           U   COPY public.actors (actor_id, first_name, last_name, gender, date_birth) FROM stdin;
    public          postgres    false    212   L       ?          0    16397 	   directors 
   TABLE DATA           d   COPY public.directors (director_id, first_name, last_name, date_birth_day, nationality) FROM stdin;
    public          postgres    false    210   i       ?           0    0    actors_actor_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.actors_actor_id_seq', 1, false);
          public          postgres    false    211            ?           0    0    directors_director_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.directors_director_id_seq', 1, false);
          public          postgres    false    209            f           2606    16410    actors actors_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (actor_id);
 <   ALTER TABLE ONLY public.actors DROP CONSTRAINT actors_pkey;
       public            postgres    false    212            d           2606    16402    directors directors_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.directors
    ADD CONSTRAINT directors_pkey PRIMARY KEY (director_id);
 B   ALTER TABLE ONLY public.directors DROP CONSTRAINT directors_pkey;
       public            postgres    false    210            ?      x?????? ? ?      ?      x?????? ? ?     