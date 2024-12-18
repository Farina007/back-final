PGDMP                  
    |            QIB    16.4    16.4 '    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16396    QIB    DATABASE     |   CREATE DATABASE "QIB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "QIB";
                postgres    false            �            1259    16511    grande_area    TABLE     f   CREATE TABLE public.grande_area (
    id integer NOT NULL,
    tipo character varying(20) NOT NULL
);
    DROP TABLE public.grande_area;
       public         heap    postgres    false            �            1259    16510    grande_area_id_seq    SEQUENCE     �   CREATE SEQUENCE public.grande_area_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.grande_area_id_seq;
       public          postgres    false    218            �           0    0    grande_area_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.grande_area_id_seq OWNED BY public.grande_area.id;
          public          postgres    false    217            �            1259    16611    materia    TABLE     �   CREATE TABLE public.materia (
    id integer NOT NULL,
    descricao character varying(100) NOT NULL,
    id_area integer NOT NULL
);
    DROP TABLE public.materia;
       public         heap    postgres    false            �            1259    16610    materia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.materia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.materia_id_seq;
       public          postgres    false    220            �           0    0    materia_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.materia_id_seq OWNED BY public.materia.id;
          public          postgres    false    219            �            1259    16680    questao    TABLE     �  CREATE TABLE public.questao (
    id integer NOT NULL,
    enunciado character varying(10000) NOT NULL,
    imagem character varying(300),
    alternativa_a character varying(255) NOT NULL,
    alternativa_b character varying(255) NOT NULL,
    alternativa_c character varying(255) NOT NULL,
    alternativa_d character varying(255) NOT NULL,
    alternativa_e character varying(255) NOT NULL,
    correta character(1) NOT NULL,
    nivel integer NOT NULL
);
    DROP TABLE public.questao;
       public         heap    postgres    false            �            1259    16679    questao_id_seq    SEQUENCE     �   CREATE SEQUENCE public.questao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.questao_id_seq;
       public          postgres    false    222            �           0    0    questao_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.questao_id_seq OWNED BY public.questao.id;
          public          postgres    false    221            �            1259    16701    questao_materia    TABLE     j   CREATE TABLE public.questao_materia (
    id_questao integer NOT NULL,
    id_materia integer NOT NULL
);
 #   DROP TABLE public.questao_materia;
       public         heap    postgres    false            �            1259    16398    usuario    TABLE     �   CREATE TABLE public.usuario (
    id integer NOT NULL,
    email character varying(60) NOT NULL,
    nome character varying(30) NOT NULL,
    senha character varying(15) NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    16397    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    216            �           0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          postgres    false    215            .           2604    16514    grande_area id    DEFAULT     p   ALTER TABLE ONLY public.grande_area ALTER COLUMN id SET DEFAULT nextval('public.grande_area_id_seq'::regclass);
 =   ALTER TABLE public.grande_area ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            /           2604    16614 
   materia id    DEFAULT     h   ALTER TABLE ONLY public.materia ALTER COLUMN id SET DEFAULT nextval('public.materia_id_seq'::regclass);
 9   ALTER TABLE public.materia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            0           2604    16683 
   questao id    DEFAULT     h   ALTER TABLE ONLY public.questao ALTER COLUMN id SET DEFAULT nextval('public.questao_id_seq'::regclass);
 9   ALTER TABLE public.questao ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            -           2604    16401 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    16511    grande_area 
   TABLE DATA           /   COPY public.grande_area (id, tipo) FROM stdin;
    public          postgres    false    218   z+       �          0    16611    materia 
   TABLE DATA           9   COPY public.materia (id, descricao, id_area) FROM stdin;
    public          postgres    false    220   �+       �          0    16680    questao 
   TABLE DATA           �   COPY public.questao (id, enunciado, imagem, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, correta, nivel) FROM stdin;
    public          postgres    false    222   s.       �          0    16701    questao_materia 
   TABLE DATA           A   COPY public.questao_materia (id_questao, id_materia) FROM stdin;
    public          postgres    false    223   :C       �          0    16398    usuario 
   TABLE DATA           9   COPY public.usuario (id, email, nome, senha) FROM stdin;
    public          postgres    false    216   �C       �           0    0    grande_area_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.grande_area_id_seq', 5, true);
          public          postgres    false    217            �           0    0    materia_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.materia_id_seq', 45, true);
          public          postgres    false    219            �           0    0    questao_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.questao_id_seq', 95, true);
          public          postgres    false    221            �           0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 2, true);
          public          postgres    false    215            6           2606    16516    grande_area grande_area_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.grande_area
    ADD CONSTRAINT grande_area_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.grande_area DROP CONSTRAINT grande_area_pkey;
       public            postgres    false    218            8           2606    16518     grande_area grande_area_tipo_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.grande_area
    ADD CONSTRAINT grande_area_tipo_key UNIQUE (tipo);
 J   ALTER TABLE ONLY public.grande_area DROP CONSTRAINT grande_area_tipo_key;
       public            postgres    false    218            :           2606    16616    materia materia_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.materia
    ADD CONSTRAINT materia_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.materia DROP CONSTRAINT materia_pkey;
       public            postgres    false    220            <           2606    16687    questao questao_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.questao
    ADD CONSTRAINT questao_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.questao DROP CONSTRAINT questao_pkey;
       public            postgres    false    222            2           2606    16405    usuario usuario_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_email_key;
       public            postgres    false    216            4           2606    16403    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    216            =           2606    16617    materia materia_id_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materia
    ADD CONSTRAINT materia_id_area_fkey FOREIGN KEY (id_area) REFERENCES public.grande_area(id);
 F   ALTER TABLE ONLY public.materia DROP CONSTRAINT materia_id_area_fkey;
       public          postgres    false    220    4662    218            >           2606    16709 /   questao_materia questao_materia_id_materia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.questao_materia
    ADD CONSTRAINT questao_materia_id_materia_fkey FOREIGN KEY (id_materia) REFERENCES public.materia(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.questao_materia DROP CONSTRAINT questao_materia_id_materia_fkey;
       public          postgres    false    220    223    4666            ?           2606    16704 /   questao_materia questao_materia_id_questao_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.questao_materia
    ADD CONSTRAINT questao_materia_id_questao_fkey FOREIGN KEY (id_questao) REFERENCES public.questao(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.questao_materia DROP CONSTRAINT questao_materia_id_questao_fkey;
       public          postgres    false    4668    222    223            �   D   x�3�t,��=���$39�ˈ�=�(1�˘�3/�(��<��	�PAfr�na�ᵹ !SN�t� ���      �   �  x�mSKn�0]�N�e�haI�c/׉��g�m1� ��Tt�3��"H�����P�?*�5�q���c3�L�j�w����8J��稹�G�y.(��'��펧-E�0�����/̈́��7���`iteP�$�圕t�� �$��^[��r�j��-Ag����+���_�Y%��<TJ�I��W�\c���Bq�B��I��bSKn�`KM߶wb%p��&���0{�hr�p-�jj�ñ��V��`75W�I�tvH<�Kn�`�pe�)w9
n�m3�����;�!6�}�9�$��	��4tL�
������1��H*m
ZB#��VZ�-�(�G�5v��o"h�=bwa4�nChST���/�9�S�_��ڠ�!: �r�8�&Pͩ|���_:��悖��[��M�`���4� �m��y�t(	,Q~�6N��%�.�|�p�f��_%Z�#5��T��y� h���Sn֭�-dQ��sRAQ���Mp���x�B(����#�3R����\�#������&�ղ�.+m�[t;m�N�ʒ[���Z��ޠV\��Jr�O�4H3[qz��:h�&l�&�Z��z|�!r�)��(���I�;�X��{8�Ë�E�!,��I�#1��JS:���0�s<1������/%��]      �      x��[ˎ�F�]S_�T�$�d2_�ŠZ���C��h�A2��H�V���g�3�f�zaȀ�ܽ�e痌�dνA2�U��J��U�(U>�7���Q��s�i�.��8��dY�B�D��R��׉6b-K)N�Z��*����(Uj������KYT�)s�HQaʕ,t�Q`�721"�ed^�^�h�X��j�����D&J�S�&���ұ�Ԧ�`QnZ��&W	��UQO<TՋFW����\(L��XwkH��s�Kq�뇓�P܌um��@���t,���e�9���O�����f�&�JS�j��(�#!6����+�L%*�jtQ�J�Tcؕ�n	����xh�E��V���Ħ,��[�����}��q+���x�A7,ѹ.H�غ*WZҢ,���𹐞SUM��(Uf�7iy0�l,3���Uf{� ��O��d��J�ccU���Yx�����Zz�i]��[}1H���^5�*�*Yծ��\��B~[y��?*�,sr��W����U�_�S����#|(8��ݍ��`x����&��	�_::4�p��XL��E򭬒tu��y��������E��~�n�$�+��č�t:gj���޳�Z9�_����n��2���Y���Dߔ����TR���9={ƃb�`"�$���l�U�}���$m��#�\�xr+�>�媄�֑��k&Gk�+�tD������%8vǃ;�$r�.N���%��۟*�R�WH
�_aI䄵��l����]�&ij�P�v#3�!�Hh���BoF�p�������m�aO\5��n�ȍ�e�.��8� J�3k�aĪ"1��uIK�<��R�ƐS�.���G���`��01��?���T2��ה\+vB ���ߡ-�9:��ϧ3�(V{.H�s�E��u��.K��]��,��4f��w�b���C��7fDM�c�U*Ӆd7%On#�}�����\3̆l�/ccJ�E��=���'n�"�YA5��B����*#}�=m/V������F�~dA��wU|0��F�+�>�ye�6�3-o��v;�ol�4��3H(���_.�	-v���\�xD�����@��\`oW{4���s�;�힂��Wu�p��/�sr��֦H,x�"媺(��Ĕp�R�/]ƓeG�I���4F~�cw��Ǯ?�}_��0�Mm~;PgO �ɉ�����2���>�����4��ՋP�/f�@�Wr>Sj�p�t���ҙ����J+(w>�N�jE�t��<���5�6�~:��K���3%.|�w����E�|���V�ߢA9k�Y�_���㻟<����G_����'_;�JU���N��s�9_}y��G��>����=y�����_?}��Ó��hذ���}E��N�g����`�	<:Mfn8�M�0M��"�n��&?NC?]ڝ?���'�>�����w�v����x���kG@֩�r���059�,ݖJB��^���T'�Ym, �o�G�v/�+��HN(x��9�Y�0�C*WH{M��D�k�*���0�i�����dM��iQT"��]�N4�E��0���I�&�:.S�q�V9֗uSR���"�&��h�4�����x��ȍӹt� P�2��㱚.� ��������sBϙx���ߘ�?�"����[�.�+��6y���]�\����T�ښ������:�o26��A����ȌJ2d(5����S��E���Vu��F��(��@ܔA��l��6
CQu~�鵪a�L� Y�i�dW:�w�㛨�����o_>� }��ʝg�f�vŖd�s-��x���XLR7��7
�č��"'��x1����n�ɠ�΍�=�7}p/�}���7���l8z�{W}<`�X|���)X��]_{���|�X�
��%����R�3?�#?�B5O�>ӳͪ�Nu�,7�G�r�~f�;uo�VQsZ8�G����"5N��:�͇5�����
�+�!5��|�8�KMiX[,�XH��h��+�:�7�Ί�/�d����Ҧ{a�Lͪ�d�E�1�pd�"�Is���bdS2T�M��&�*1bd��$^	�.�L�����Ė�����$9�M�����L��E�,��9�"���Β��fV�
2���^Qo,o	�a���o��߂1dm_���A�{���U?��V;�ܬ�)^ϲ_,�j_!
]�*����\����3cu�P��*�͜�BI4;"�ņQvGB`��D��9�=��C���aQ�i���`e�II�:Ա9A��u�{�sרaM1�d�k�qF�,�X,�g�r��L��h/�p�"�����?S�̭Y��h_N��L�Gn��wF��6�> �����TAŉ ;E�&��!��f��m*Q4u�-� ��t���QW[ãF���N4{p�F��v��������ZL��~�sM���������_$�)�a�.�=)�}����@:M,�8���HT����P���]oL���+����#-�\�*V L%켜�/N�)Ĉ$�^ߣVM�n��4��deU5�e!�[qd9����Vc� �����b��{6@�n�m%����k��e��1����)�植ȯe}��,�õh(d+х���!b]d2n
��$0��*�S��#{vS��(x}��K6��~��b��%�<��
wOH�9�ͅQ�;<͡l+=��IW���O�_�@/\.ڞw5�� Ӕ�c-��K�R��y���պ>��Z�gP%���h2��d�O�,�_�_I�Rv� ���}��YE���TɎ&��.դ�-:��,	�Җ^����A��&�b ���!��L��K�̲�ݣ˺ꭆl�p3�붱��o�u��k��3�{t�u]�)�R�E
o���L��_]�!eG�������8(� A"E����_,�6�����O��/Y�6�tt�?~XD�E�׿:�f*i𕥖<g�3����q�Wq��~�+I,��sS���Vak2�햱�&�ew��hK,B����� �u]�6��{�i���@[Vٸj1M��]Հ����<Mٳ�Ĳ�,�T�x�' ���J	tD6��?��m.�I{�C�.��eU^�>a:���������[����`�D�x��fđ��܂>,�_e&B*��-�����r�t	�y	�����}N.��r�*Z�a���HM�<M�p1�.���B���;��(p�N�(grc:u��qP{���Q�r��Ǎ�	���ٲM-	e1q[�&;+�#O�F��9?�#����%�I���,�3��T�ԋ!E�����	���Uh�/��>fR3A���k�J��g:~�w��L��{��Lî(�z�M��2+C���>:�#�/@"�ې�-���D�� �]"]��T\z
�;�T+F����M׳6����&۾����"<P�I�vOe�3"�y¤��l��
!n>r�O��t�O,���7���?ܷ���� ����g3zb����͛�yr�
��#LH��d��V}Z`��K!�!�=���|�S:�cfK�2J���l0oK/Q�H(�D��Ae)�d�L��߳X���l��"�����;��E����H�e�U�&e=��-����+���g�z�4���a(����@{���x7ix�Bf�MIs�u{B������?��HH�L���(L���ޙ%�	�d��e���N�j�,<'����zo�P:�cwje g�`�m��� LT�F�x��0X�n4��+�t�.�1�m�3@\�]���c2<s�aϡ�;뎛��j�F�s�����-�0� ����傷O2P)�K����� ��٦���cB���&f�fW���ߧII��\�u�.g�d���8�Q|�0u��؍B�L"�P�Y����c��w����(A3���r�J�#y8D:~p�pv	�k���r)w��y����e{��#�<q�¡����oA>����z1��r�O\�n�&�r���E<Y��p�v=j�v���6\(ۻ/��#g����u�_�ZL�z�hW����gq:ؿ� !~���-��.��� �  wX{����ץ�ڹ�ޤ���^ۿx`O}dT��n#�+�7_r�x~d�a��z�4�)�{�r��˞�w'��8�u�N��vw���g�26�o��%�]��r߿z�����|�<-��4�D�^���Q֒�<�c�v�iִ=4V�S]�|��I��"�P����Z�3i�|R��o�l��N~�F5S��VX{٘��BUd���T+RD�޾A�$o��xd��-b:��c�f���~Zt����SSyι�V⽝�()��9Z-��&��4^c2�
^T���\S��AB�"*C������T<_1�R��vᄵ�`�E$cԁ�Ēs��aW2Ǡx.��Lm0�D�><݁M�<j�]�d���c�e��zjx�ڊ3l��L���J����{��"+c���jA�p�Ԛ���Z�25�DLi:�Q@�8m���R�*���@j͟
ĸ�L��wؾ����y����|Ƶz]����͒'!��MI\#K��4�D͢��֏7�}�Ⱥ�2�����Z�|^{g�t2�R�L7��d-��+�x>��*���9+Q�b�`��p��}څ�t��L�3�t�u��e�ȭ����b-Ǽ�wT!��O:�$˹}cՙP�g���y�M*�����a�����V�?��	�5>i�+�ߦ�n����=�ؾ�׽W��2�fɌ�*l��zV[�D�w:C�0/u{τ��$]h���Z[^�zȪ9	��5�n.C�*�"�*����K���B�Nm�B]�1)}��[d
"�h�W�2���{X[ѥ���/|�m/|p��������b�|���Ͱ������->�S|��g�l�."��*'K4�i��Q���R�h,�Kz�u���n����aI�-ed6��D�S;RS/�:@��"��\?'8�"����H�lt�wV���nR����jLM�tM�3���:�H�|����XH��0):��}������o��-{��V5��2rne���Yw��2Q�c�T�C�+�?K?v���8\�� �ݩR�2��x�QCC)9	�?�<o2��1I'A�)կ�93�TD���i��쮜W�޻w����p&Bk:;�'�2ĝ/?p�ޠ�p�Niv|���}鱤]q���*�<���iZ�|]����i�T���/Q�ں�Ư6�!�w�ڣ}T�o�7n�?���      �   L   x�%���0ߦ��!���_G��gGHB��RN����7ԥ�v�r;���>��Ph�4Hc�YO:�f�L����q*�      �   *   x�3�LL�uH�M���K���tL��,N��H442����� �	�     