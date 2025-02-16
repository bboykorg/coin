PGDMP                      }            tg-bot    16.4    16.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    tg-bot    DATABASE     |   CREATE DATABASE "tg-bot" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "tg-bot";
                postgres    false            �            1259    16444    cards    TABLE     �   CREATE TABLE public.cards (
    "ID" integer NOT NULL,
    name character varying,
    cost integer,
    image character varying
);
    DROP TABLE public.cards;
       public         heap    postgres    false            �            1259    16443    cards_ID_seq    SEQUENCE     �   ALTER TABLE public.cards ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."cards_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224            �            1259    16399    improvements    TABLE     �   CREATE TABLE public.improvements (
    "ID" bigint NOT NULL,
    cost integer NOT NULL,
    add integer DEFAULT 1 NOT NULL,
    energy integer DEFAULT 1000 NOT NULL
);
     DROP TABLE public.improvements;
       public         heap    postgres    false            �            1259    16428    improvements_ID_seq    SEQUENCE     �   ALTER TABLE public.improvements ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."improvements_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    16430    improvements_energy    TABLE     v   CREATE TABLE public.improvements_energy (
    "ID" integer NOT NULL,
    energy integer NOT NULL,
    cost integer
);
 '   DROP TABLE public.improvements_energy;
       public         heap    postgres    false            �            1259    16437    improvements_energy_ID_seq    SEQUENCE     �   ALTER TABLE public.improvements_energy ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."improvements_energy_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    16440 	   inventory    TABLE     {   CREATE TABLE public.inventory (
    "ID" integer NOT NULL,
    "ID_card" bigint NOT NULL,
    "ID_user" bigint NOT NULL
);
    DROP TABLE public.inventory;
       public         heap    postgres    false            �            1259    16439    inventory_ID_seq    SEQUENCE     �   ALTER TABLE public.inventory ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."inventory_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    16407    score    TABLE     �   CREATE TABLE public.score (
    score integer DEFAULT 0 NOT NULL,
    "ID" integer NOT NULL,
    "ID_user" bigint NOT NULL,
    "ID_improvements" integer DEFAULT 1 NOT NULL,
    bot integer DEFAULT 0 NOT NULL,
    energy integer DEFAULT 1 NOT NULL
);
    DROP TABLE public.score;
       public         heap    postgres    false            �            1259    16412    score_ID_seq    SEQUENCE     �   ALTER TABLE public.score ALTER COLUMN "ID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."score_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 100000000
    CACHE 1
);
            public          postgres    false    216            
          0    16444    cards 
   TABLE DATA           8   COPY public.cards ("ID", name, cost, image) FROM stdin;
    public          postgres    false    224   �                 0    16399    improvements 
   TABLE DATA           ?   COPY public.improvements ("ID", cost, add, energy) FROM stdin;
    public          postgres    false    215   �                 0    16430    improvements_energy 
   TABLE DATA           A   COPY public.improvements_energy ("ID", energy, cost) FROM stdin;
    public          postgres    false    219   �                 0    16440 	   inventory 
   TABLE DATA           ?   COPY public.inventory ("ID", "ID_card", "ID_user") FROM stdin;
    public          postgres    false    222   #                 0    16407    score 
   TABLE DATA           W   COPY public.score (score, "ID", "ID_user", "ID_improvements", bot, energy) FROM stdin;
    public          postgres    false    216   @                  0    0    cards_ID_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."cards_ID_seq"', 1, false);
          public          postgres    false    223                       0    0    improvements_ID_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."improvements_ID_seq"', 1, false);
          public          postgres    false    218                       0    0    improvements_energy_ID_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."improvements_energy_ID_seq"', 20, true);
          public          postgres    false    220                       0    0    inventory_ID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."inventory_ID_seq"', 1, false);
          public          postgres    false    221                       0    0    score_ID_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."score_ID_seq"', 7, true);
          public          postgres    false    217            k           2606    16417    improvements Users_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.improvements
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY ("ID");
 C   ALTER TABLE ONLY public.improvements DROP CONSTRAINT "Users_pkey";
       public            postgres    false    215            q           2606    16450    cards cards_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_pkey PRIMARY KEY ("ID");
 :   ALTER TABLE ONLY public.cards DROP CONSTRAINT cards_pkey;
       public            postgres    false    224            o           2606    16435 ,   improvements_energy improvements_energy_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.improvements_energy
    ADD CONSTRAINT improvements_energy_pkey PRIMARY KEY ("ID");
 V   ALTER TABLE ONLY public.improvements_energy DROP CONSTRAINT improvements_energy_pkey;
       public            postgres    false    219            m           2606    16411    score score_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.score
    ADD CONSTRAINT score_pkey PRIMARY KEY ("ID");
 :   ALTER TABLE ONLY public.score DROP CONSTRAINT score_pkey;
       public            postgres    false    216            
      x������ � �         �   x�5�� C��0=@Eݥ��Q���3@"��b�q��l��:��)�	ǐh%�Qh4�T�D���::ݍ)w���dNu��T�"bR_�$JLúJC�鈺R�4�^��T�B��R��<�/lb	[焗���m�xq�\r뼁y/����~�c5�         �   x�5O�!;�b�"j/�;a� �QS�G�o�"�1��sg?�\%1�5*c�He#�U*Afcߴ!4̲5t$�h8�dw��*o6��q�YJ�/�Z�o���6�	�ֱ����[�S������/            x������ � �         H   x�5���0Cѳ�2٥���Tj����D�v�Z��IjR�0��H�:\�[��wr��I��w��2���v     