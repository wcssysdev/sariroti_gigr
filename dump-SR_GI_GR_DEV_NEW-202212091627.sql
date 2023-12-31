PGDMP                 	        z            SR_GI_GR_DEV_NEW     13.3 (Ubuntu 13.3-1.pgdg20.04+1)    14.2 �    
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    19166    SR_GI_GR_DEV_NEW    DATABASE     g   CREATE DATABASE "SR_GI_GR_DEV_NEW" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
 "   DROP DATABASE "SR_GI_GR_DEV_NEW";
                wcs_user    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3                       1259    25021    LG_MATERIAL    TABLE       CREATE TABLE public."LG_MATERIAL" (
    "LG_MATERIAL_ID" bigint NOT NULL,
    "LG_MATERIAL_PLANT_CODE" character varying(255),
    "LG_MATERIAL_POSTING_DATE" date,
    "LG_MATERIAL_CODE" character varying(255) NOT NULL,
    "LG_MATERIAL_MVT_TYPE" character varying(255),
    "LG_MATERIAL_QTY" double precision,
    "LG_MATERIAL_UOM" character varying(255),
    "LG_MATERIAL_GR_DETAIL_ID" bigint,
    "LG_MATERIAL_CREATED_BY" character varying(255),
    "LG_MATERIAL_CREATED_TIMESTAMP" timestamp without time zone
);
 !   DROP TABLE public."LG_MATERIAL";
       public         heap    wcs_user    false    3                       1259    25019    LG_MATERIAL_LG_MATERIAL_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."LG_MATERIAL_LG_MATERIAL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."LG_MATERIAL_LG_MATERIAL_ID_seq";
       public          wcs_user    false    3    259                       0    0    LG_MATERIAL_LG_MATERIAL_ID_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."LG_MATERIAL_LG_MATERIAL_ID_seq" OWNED BY public."LG_MATERIAL"."LG_MATERIAL_ID";
          public          wcs_user    false    258            �            1259    19175    MA_COSTCNTR    TABLE     �  CREATE TABLE public."MA_COSTCNTR" (
    "MA_COSTCNTR_ID" bigint NOT NULL,
    "MA_COSTCNTR_CODE" character varying(255) NOT NULL,
    "MA_COSTCNTR_COSTCENTER" character varying(255),
    "MA_COSTCNTR_DESC" character varying(255),
    "MA_COSTCNTR_CREATED_BY" character varying(255),
    "MA_COSTCNTR_CREATED_TIMESTAMP" timestamp without time zone,
    "MA_COSTCNTR_UPDATED_BY" character varying(255),
    "MA_COSTCNTR_UPDATED_TIMESTAMP" timestamp without time zone
);
 !   DROP TABLE public."MA_COSTCNTR";
       public         heap    postgres    false    3            �            1259    19181    MA_COSTCNTR_MA_COSTCNTR_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MA_COSTCNTR_MA_COSTCNTR_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."MA_COSTCNTR_MA_COSTCNTR_ID_seq";
       public          postgres    false    200    3                       0    0    MA_COSTCNTR_MA_COSTCNTR_ID_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."MA_COSTCNTR_MA_COSTCNTR_ID_seq" OWNED BY public."MA_COSTCNTR"."MA_COSTCNTR_ID";
          public          postgres    false    201            �            1259    19183    MA_GLACC    TABLE     �  CREATE TABLE public."MA_GLACC" (
    "MA_GLACC_ID" bigint NOT NULL,
    "MA_GLACC_CODE" character varying(255) NOT NULL,
    "MA_GLACC_ACC" character varying(255),
    "MA_GLACC_DESC" character varying(255),
    "MA_GLACC_CREATED_BY" character varying(255),
    "MA_GLACC_CREATED_TIMESTAMP" timestamp without time zone,
    "MA_GLACC_UPDATED_BY" character varying(255),
    "MA_GLACC_UPDATED_TIMESTAMP" timestamp without time zone
);
    DROP TABLE public."MA_GLACC";
       public         heap    postgres    false    3            �            1259    19189    MA_GLACC_MA_GLACC_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MA_GLACC_MA_GLACC_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."MA_GLACC_MA_GLACC_ID_seq";
       public          postgres    false    202    3                       0    0    MA_GLACC_MA_GLACC_ID_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."MA_GLACC_MA_GLACC_ID_seq" OWNED BY public."MA_GLACC"."MA_GLACC_ID";
          public          postgres    false    203            �            1259    19191    MA_MATL    TABLE     �  CREATE TABLE public."MA_MATL" (
    "MA_MATL_ID" bigint NOT NULL,
    "MA_MATL_CODE" character varying(255) NOT NULL,
    "MA_MATL_DESC" character varying(255),
    "MA_MATL_TYPE" character varying(255),
    "MA_MATL_GROUP" character varying(255),
    "MA_MATL_PLANT" character varying(255),
    "MA_MATL_SLOC" character varying(255),
    "MA_MATL_UOM" character varying(255),
    "MA_MATL_QTY" double precision,
    "MA_MATL_BATCH" character varying(255),
    "MA_MATL_CREATED_BY" character varying(255),
    "MA_MATL_CREATED_TIMESTAMP" timestamp without time zone,
    "MA_MATL_UPDATED_BY" character varying(255),
    "MA_MATL_UPDATED_TIMESTAMP" timestamp without time zone,
    "MA_MATL_FLAG_BATCH" boolean
);
    DROP TABLE public."MA_MATL";
       public         heap    postgres    false    3            �            1259    19197    MA_MATL_MA_MATL_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MA_MATL_MA_MATL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."MA_MATL_MA_MATL_ID_seq";
       public          postgres    false    204    3                       0    0    MA_MATL_MA_MATL_ID_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."MA_MATL_MA_MATL_ID_seq" OWNED BY public."MA_MATL"."MA_MATL_ID";
          public          postgres    false    205            �            1259    19199    MA_MVT    TABLE     w  CREATE TABLE public."MA_MVT" (
    "MA_MVT_ID" bigint NOT NULL,
    "MA_MVT_CODE" character varying(255) NOT NULL,
    "MA_MVT_DESC" character varying(255),
    "MA_MVT_CREATED_BY" character varying(255),
    "MA_MVT_CREATED_TIMESTAMP" timestamp without time zone,
    "MA_MVT_UPDATED_BY" character varying(255),
    "MA_MVT_UPDATED_TIMESTAMP" timestamp without time zone
);
    DROP TABLE public."MA_MVT";
       public         heap    postgres    false    3            �            1259    19205    MA_MVT_MA_MVT_ID_seq    SEQUENCE        CREATE SEQUENCE public."MA_MVT_MA_MVT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."MA_MVT_MA_MVT_ID_seq";
       public          postgres    false    3    206                       0    0    MA_MVT_MA_MVT_ID_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."MA_MVT_MA_MVT_ID_seq" OWNED BY public."MA_MVT"."MA_MVT_ID";
          public          postgres    false    207            �            1259    19207    MA_PLANT    TABLE     k  CREATE TABLE public."MA_PLANT" (
    "MA_PLANT_ID" bigint NOT NULL,
    "MA_PLANT_CODE" character varying(255) NOT NULL,
    "MA_PLANT_NAME" character varying(255),
    "MA_PLANT_STREET" character varying(255),
    "MA_PLANT_CITY" character varying(255),
    "MA_PLANT_POSTAL_CODE" character varying(255),
    "MA_PLANT_TELP" character varying(255),
    "MA_PLANT_FAX" character varying(255),
    "MA_PLANT_CREATED_BY" character varying(255),
    "MA_PLANT_CREATED_TIMESTAMP" timestamp without time zone,
    "MA_PLANT_UPDATED_BY" character varying(255),
    "MA_PLANT_UPDATED_TIMESTAMP" timestamp without time zone
);
    DROP TABLE public."MA_PLANT";
       public         heap    postgres    false    3            �            1259    19213    MA_PLANT_MA_PLANT_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MA_PLANT_MA_PLANT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."MA_PLANT_MA_PLANT_ID_seq";
       public          postgres    false    3    208                       0    0    MA_PLANT_MA_PLANT_ID_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."MA_PLANT_MA_PLANT_ID_seq" OWNED BY public."MA_PLANT"."MA_PLANT_ID";
          public          postgres    false    209            �            1259    19215    MA_SLOC    TABLE     �  CREATE TABLE public."MA_SLOC" (
    "MA_SLOC_ID" bigint NOT NULL,
    "MA_SLOC_CODE" character varying(255) NOT NULL,
    "MA_SLOC_PLANT" character varying(255),
    "MA_SLOC_DESC" character varying(255),
    "MA_SLOC_CREATED_BY" character varying(255),
    "MA_SLOC_CREATED_TIMESTAMP" timestamp without time zone,
    "MA_SLOC_UPDATED_BY" character varying(255),
    "MA_SLOC_UPDATED_TIMESTAMP" timestamp without time zone
);
    DROP TABLE public."MA_SLOC";
       public         heap    postgres    false    3            �            1259    19221    MA_SLOC_MA_SLOC_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MA_SLOC_MA_SLOC_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."MA_SLOC_MA_SLOC_ID_seq";
       public          postgres    false    210    3                       0    0    MA_SLOC_MA_SLOC_ID_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."MA_SLOC_MA_SLOC_ID_seq" OWNED BY public."MA_SLOC"."MA_SLOC_ID";
          public          postgres    false    211            �            1259    19223    MA_UOM    TABLE     �  CREATE TABLE public."MA_UOM" (
    "MA_UOM_ID" bigint NOT NULL,
    "MA_UOM_MATCODE" character varying(255),
    "MA_UOM_UOM" character varying(255),
    "MA_UOM_NUM" integer,
    "MA_UOM_DEN" integer,
    "MA_UOM_CREATED_BY" character varying(255),
    "MA_UOM_CREATED_TIMESTAMP" timestamp without time zone,
    "MA_UOM_UPDATED_BY" character varying(255),
    "MA_UOM_UPDATED_TIMESTAMP" timestamp without time zone
);
    DROP TABLE public."MA_UOM";
       public         heap    postgres    false    3            �            1259    19229    MA_UOM_MA_UOM_ID_seq    SEQUENCE        CREATE SEQUENCE public."MA_UOM_MA_UOM_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."MA_UOM_MA_UOM_ID_seq";
       public          postgres    false    3    212                       0    0    MA_UOM_MA_UOM_ID_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."MA_UOM_MA_UOM_ID_seq" OWNED BY public."MA_UOM"."MA_UOM_ID";
          public          postgres    false    213            �            1259    19231 	   MA_USRACC    TABLE       CREATE TABLE public."MA_USRACC" (
    "MA_USRACC_ID" bigint NOT NULL,
    "MA_USRACC_FULL_NAME" character varying(255),
    "MA_USRACC_EMAIL" character varying(255) NOT NULL,
    "MA_USRACC_PLANT_CODE" character varying(500),
    "MA_USRACC_ROLE" smallint NOT NULL,
    "MA_USRACC_JWT_TOKEN" character varying(500),
    "MA_USRACC_FCM_TOKEN" character varying(500),
    "MA_USRACC_IS_ACTIVE" smallint NOT NULL,
    "MA_USRACC_LAST_LOGIN_TIMESTAMP" timestamp without time zone,
    "MA_USRACC_CRTD_BY" bigint NOT NULL,
    "MA_USRACC_CRTD_BY_TIMESTAMP" timestamp without time zone NOT NULL,
    "MA_USRACC_UPDT_BY" bigint,
    "MA_USRACC_UPDT_BY_TIMESTAMP" timestamp without time zone,
    "MA_USRACC_LOGIN_VIA_SSO" boolean,
    "MA_USRACC_PASSWORD" character varying
);
    DROP TABLE public."MA_USRACC";
       public         heap    postgres    false    3            �            1259    19237    MA_USRACC_MA_USRACC_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MA_USRACC_MA_USRACC_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."MA_USRACC_MA_USRACC_ID_seq";
       public          postgres    false    3    214                       0    0    MA_USRACC_MA_USRACC_ID_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."MA_USRACC_MA_USRACC_ID_seq" OWNED BY public."MA_USRACC"."MA_USRACC_ID";
          public          postgres    false    215            �            1259    19239 	   MA_VENDOR    TABLE     D  CREATE TABLE public."MA_VENDOR" (
    "MA_VENDOR_ID" bigint NOT NULL,
    "MA_VENDOR_CODE" character varying(255) NOT NULL,
    "MA_VENDOR_NAME" character varying(255),
    "MA_VENDOR_STREET" character varying(255),
    "MA_VENDOR_CITY" character varying(255),
    "MA_VENDOR_TELP" character varying(255),
    "MA_VENDOR_FAX" character varying(255),
    "MA_VENDOR_CREATED_BY" character varying(255),
    "MA_VENDOR_CREATED_TIMESTAMP" timestamp without time zone,
    "MA_VENDOR_UPDATED_BY" character varying(255),
    "MA_VENDOR_UPDATED_TIMESTAMP" timestamp without time zone
);
    DROP TABLE public."MA_VENDOR";
       public         heap    postgres    false    3            �            1259    19245    MA_VENDOR_MA_VENDOR_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."MA_VENDOR_MA_VENDOR_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."MA_VENDOR_MA_VENDOR_ID_seq";
       public          postgres    false    216    3                       0    0    MA_VENDOR_MA_VENDOR_ID_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."MA_VENDOR_MA_VENDOR_ID_seq" OWNED BY public."MA_VENDOR"."MA_VENDOR_ID";
          public          postgres    false    217            �            1259    19247    TR_CANCELATION_MVT    TABLE     �  CREATE TABLE public."TR_CANCELATION_MVT" (
    "TR_CANCELLATION_MVT_ID" bigint NOT NULL,
    "TR_CANCELLATION_PLANT_CODE" character varying(255),
    "TR_CANCELLATION_MVT_SAP_CODE" character varying(255),
    "TR_CANCELLATION_MVT_TR_DOC" character varying(255),
    "TR_CANCELLATION_MVT_MATDOC" character varying(255),
    "TR_CANCELLATION_MVT_MATDOC_YEAR" character varying(255),
    "TR_CANCELLATION_MVT_POSTING_DATE" character varying(255),
    "TR_CANCELLATION_MVT_STATUS" character varying(255),
    "TR_CANCELLATION_MVT_NOTES" character varying(255),
    "TR_CANCELLATION_MVT_PHOTO" character varying(255),
    "TR_CANCELLATION_MVT_ERROR" character varying(255),
    "TR_CANCELLATION_MVT_CREATED_BY" character varying(255),
    "TR_CANCELLATION_MVT_CREATED_TIMESTAMP" timestamp without time zone,
    "TR_CANCELLATION_MVT_UPDATED_BY" character varying(255),
    "TR_CANCELLATION_MVT_UPDATED_TIMESTAMP" timestamp without time zone,
    "TR_CANCELLATION_BOL" character varying(255),
    "TR_CANCELLATION_TXT" character varying(255),
    "TR_CANCELLATION_MVT_CODE" character varying(255),
    "TR_CANCELLATION_MVT_TR_DOC_YEAR" character varying(255)
);
 (   DROP TABLE public."TR_CANCELATION_MVT";
       public         heap    postgres    false    3                       1259    27758    TR_CANCELATION_MVT_DETAIL    TABLE     �   CREATE TABLE public."TR_CANCELATION_MVT_DETAIL" (
    "TR_CANCELATION_MVT_DETAIL_ID" bigint NOT NULL,
    "TR_CANCELATION_MVT_DETAIL_HEADER_ID" bigint,
    "TR_CANCELATION_MVT_DETAIL_TRANSACTION_DETAIL_ID" bigint
);
 /   DROP TABLE public."TR_CANCELATION_MVT_DETAIL";
       public         heap    wcs_user    false    3                       1259    27756 :   TR_CANCELATION_MVT_DETAIL_TR_CANCELATION_MVT_DETAIL_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."TR_CANCELATION_MVT_DETAIL_TR_CANCELATION_MVT_DETAIL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 S   DROP SEQUENCE public."TR_CANCELATION_MVT_DETAIL_TR_CANCELATION_MVT_DETAIL_ID_seq";
       public          wcs_user    false    261    3                       0    0 :   TR_CANCELATION_MVT_DETAIL_TR_CANCELATION_MVT_DETAIL_ID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."TR_CANCELATION_MVT_DETAIL_TR_CANCELATION_MVT_DETAIL_ID_seq" OWNED BY public."TR_CANCELATION_MVT_DETAIL"."TR_CANCELATION_MVT_DETAIL_ID";
          public          wcs_user    false    260            �            1259    19253 -   TR_CANCELATION_MVT_TR_CANCELLATION_MVT_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."TR_CANCELATION_MVT_TR_CANCELLATION_MVT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public."TR_CANCELATION_MVT_TR_CANCELLATION_MVT_ID_seq";
       public          postgres    false    218    3                       0    0 -   TR_CANCELATION_MVT_TR_CANCELLATION_MVT_ID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."TR_CANCELATION_MVT_TR_CANCELLATION_MVT_ID_seq" OWNED BY public."TR_CANCELATION_MVT"."TR_CANCELLATION_MVT_ID";
          public          postgres    false    219            �            1259    19255    TR_GI_SAPDETAIL    TABLE     6  CREATE TABLE public."TR_GI_SAPDETAIL" (
    "TR_GI_SAPDETAIL_ID" bigint NOT NULL,
    "TR_GI_SAPDETAIL_SAPHEADER_ID" bigint,
    "TR_GI_SAPDETAIL_MATERIAL_CODE" character varying(255),
    "TR_GI_SAPDETAIL_MATERIAL_NAME" character varying(255),
    "TR_GI_SAPDETAIL_SAP_BATCH" character varying(255),
    "TR_GI_SAPDETAIL_QTY" double precision,
    "TR_GI_SAPDETAIL_UOM" character varying(255),
    "TR_GI_SAPDETAIL_BASE_QTY" double precision,
    "TR_GI_SAPDETAIL_BASE_UOM" character varying(255),
    "TR_GI_SAPDETAIL_GI_QTY" double precision,
    "TR_GI_SAPDETAIL_GI_UOM" character varying(255),
    "TR_GI_SAPDETAIL_SLOC" character varying(255),
    "TR_GI_SAPDETAIL_GR_RECEIPIENT" character varying(255),
    "TR_GI_SAPDETAIL_NOTES" character varying(255),
    "TR_GI_SAPDETAIL_PHOTO" character varying(255),
    "TR_GI_SAPDETAIL_CREATED_BY" character varying(255),
    "TR_GI_SAPDETAIL_CREATED_TIMESTAMP" timestamp without time zone,
    "TR_GI_SAPDETAIL_UPDATED_BY" character varying(255),
    "TR_GI_SAPDETAIL_UPDATED_TIMESTAMP" timestamp without time zone,
    "TR_GI_SAPDETAIL_QR_CODE_NUMBER" character varying(255),
    "TR_GI_SAPDETAIL_MOBILE_QTY" double precision,
    "TR_GI_SAPDETAIL_MOBILE_UOM" character varying,
    "TR_GI_SAPDETAIL_GR_DETAIL_ID" integer,
    "TR_GI_SAPDETAIL_IS_CANCELLED" boolean DEFAULT false
);
 %   DROP TABLE public."TR_GI_SAPDETAIL";
       public         heap    postgres    false    3            �            1259    19261 &   TR_GI_SAPDETAIL_TR_GI_SAPDETAIL_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."TR_GI_SAPDETAIL_TR_GI_SAPDETAIL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."TR_GI_SAPDETAIL_TR_GI_SAPDETAIL_ID_seq";
       public          postgres    false    3    220                       0    0 &   TR_GI_SAPDETAIL_TR_GI_SAPDETAIL_ID_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."TR_GI_SAPDETAIL_TR_GI_SAPDETAIL_ID_seq" OWNED BY public."TR_GI_SAPDETAIL"."TR_GI_SAPDETAIL_ID";
          public          postgres    false    221            �            1259    19263    TR_GI_SAPHEADER    TABLE       CREATE TABLE public."TR_GI_SAPHEADER" (
    "TR_GI_SAPHEADER_ID" bigint NOT NULL,
    "TR_GI_SAPHEADER_PLANT_CODE" character varying(255),
    "TR_GI_SAPHEADER_SAP_DOC" character varying(255),
    "TR_GI_SAPHEADER_PSTG_DATE" character varying(255),
    "TR_GI_SAPHEADER_DOC_DATE" character varying(255),
    "TR_GI_SAPHEADER_BOL" character varying(255),
    "TR_GI_SAPHEADER_TXT" character varying(255),
    "TR_GI_SAPHEADER_MVT_CODE" character varying(255),
    "TR_GI_SAPHEADER_SAP_YEAR" character varying(255),
    "TR_GI_SAPHEADER_STATUS" character varying(255),
    "TR_GI_SAPHEADER_ERROR" character varying(255),
    "TR_GI_SAPHEADER_PO_NUMBER" character varying(255),
    "TR_GI_SAPHEADER_MVT_SAP" character varying(255),
    "TR_GI_SAPHEADER_NOTES" character varying(255),
    "TR_GI_SAPHEADER_PHOTO" character varying(255),
    "TR_GI_SAPHEADER_CREATED_BY" character varying(255),
    "TR_GI_SAPHEADER_CREATED_TIMESTAMP" timestamp without time zone,
    "TR_GI_SAPHEADER_UPDATED_BY" character varying(255),
    "TR_GI_SAPHEADER_UPDATED_TIMESTAMP" timestamp without time zone,
    "TR_GI_SAPHEADER_MOBILE_IS_SUBMIT" boolean DEFAULT false,
    "TR_GI_SAPHEADER_CREATED_PLANT_CODE" character varying(255),
    "TR_GI_SAPHEADER_IS_CANCELLED" boolean DEFAULT false NOT NULL
);
 %   DROP TABLE public."TR_GI_SAPHEADER";
       public         heap    postgres    false    3            �            1259    19271 &   TR_GI_SAPHEADER_TR_GI_SAPHEADER_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."TR_GI_SAPHEADER_TR_GI_SAPHEADER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."TR_GI_SAPHEADER_TR_GI_SAPHEADER_ID_seq";
       public          postgres    false    222    3                       0    0 &   TR_GI_SAPHEADER_TR_GI_SAPHEADER_ID_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public."TR_GI_SAPHEADER_TR_GI_SAPHEADER_ID_seq" OWNED BY public."TR_GI_SAPHEADER"."TR_GI_SAPHEADER_ID";
          public          postgres    false    223            �            1259    19273    TR_GR_DETAIL    TABLE     �  CREATE TABLE public."TR_GR_DETAIL" (
    "TR_GR_DETAIL_ID" bigint NOT NULL,
    "TR_GR_DETAIL_HEADER_ID" bigint,
    "TR_GR_DETAIL_MATERIAL_CODE" character varying(255),
    "TR_GR_DETAIL_MATERIAL_NAME" character varying(255),
    "TR_GR_DETAIL_SAP_BATCH" character varying(255),
    "TR_GR_DETAIL_QTY" double precision,
    "TR_GR_DETAIL_UOM" character varying(255),
    "TR_GR_DETAIL_BASE_QTY" double precision,
    "TR_GR_DETAIL_BASE_UOM" character varying(255),
    "TR_GR_DETAIL_LEFT_QTY" double precision,
    "TR_GR_DETAIL_SLOC" character varying(255),
    "TR_GR_DETAIL_UNLOADING_PLANT" character varying(255),
    "TR_GR_DETAIL_GL_ACCOUNT" character varying(255),
    "TR_GR_DETAIL_COST_CENTER" character varying(255),
    "TR_GR_DETAIL_EXP_DATE" character varying(255),
    "TR_GR_DETAIL_IMG_QRCODE" character varying(255),
    "TR_GR_DETAIL_NOTES" text,
    "TR_GR_DETAIL_PHOTO" character varying(255),
    "TR_GR_DETAIL_CREATED_BY" character varying(255),
    "TR_GR_DETAIL_CREATED_TIMESTAMP" timestamp without time zone,
    "TR_GR_DETAIL_UPDATED_BY" character varying(255),
    "TR_GR_DETAIL_UPDATED_TIMESTAMP" timestamp without time zone,
    "TR_GR_DETAIL_QR_CODE_NUMBER" character varying(255),
    "TR_GR_DETAIL_PO_DETAIL_ID" bigint,
    "TR_GR_DETAIL_GR_REFERENCE" bigint,
    "TR_GR_DETAIL_IS_CANCELLED" boolean DEFAULT false,
    "TR_GR_DETAIL_SAPLINE_ID" integer,
    "TR_GR_DETAIL_Y21_TP_REF" character varying
);
 "   DROP TABLE public."TR_GR_DETAIL";
       public         heap    postgres    false    3            �            1259    19279    TR_GR_DETAIL_LOCK    TABLE     X  CREATE TABLE public."TR_GR_DETAIL_LOCK" (
    "TR_GR_DETAIL_LOCK_ID" bigint NOT NULL,
    "TR_GR_DETAIL_LOCK_GR_DETAIL_ID" integer,
    "TR_GR_DETAIL_LOCK_EXPIRED_TIMESTAMP" timestamp without time zone,
    "TR_GR_DETAIL_LOCK_CREATED_BY" integer,
    "TR_GR_DETAIL_LOCK_CREATED_TIMESTAMP" timestamp without time zone,
    "TR_GR_DETAIL_LOCK_PO_HEADER_ID" character varying,
    "TR_GR_DETAIL_LOCK_BOOKED_QTY" double precision,
    "TR_GR_DETAIL_LOCK_BOOKED_UOM" character varying,
    "TR_GR_IS_TP" boolean,
    "TR_GR_DETAIL_LOCK_BOOKED_SLOC" character varying,
    "TR_GR_DETAIL_LOCK_NOTE" text
);
 '   DROP TABLE public."TR_GR_DETAIL_LOCK";
       public         heap    wcs_user    false    3            �            1259    19285 *   TR_GR_DETAIL_LOCK_TR_GR_DETAIL_LOCK_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."TR_GR_DETAIL_LOCK_TR_GR_DETAIL_LOCK_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."TR_GR_DETAIL_LOCK_TR_GR_DETAIL_LOCK_ID_seq";
       public          wcs_user    false    225    3                       0    0 *   TR_GR_DETAIL_LOCK_TR_GR_DETAIL_LOCK_ID_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public."TR_GR_DETAIL_LOCK_TR_GR_DETAIL_LOCK_ID_seq" OWNED BY public."TR_GR_DETAIL_LOCK"."TR_GR_DETAIL_LOCK_ID";
          public          wcs_user    false    226            �            1259    19287     TR_GR_DETAIL_TR_GR_DETAIL_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."TR_GR_DETAIL_TR_GR_DETAIL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."TR_GR_DETAIL_TR_GR_DETAIL_ID_seq";
       public          postgres    false    3    224                       0    0     TR_GR_DETAIL_TR_GR_DETAIL_ID_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."TR_GR_DETAIL_TR_GR_DETAIL_ID_seq" OWNED BY public."TR_GR_DETAIL"."TR_GR_DETAIL_ID";
          public          postgres    false    227            �            1259    19289    TR_GR_HEADER    TABLE     s  CREATE TABLE public."TR_GR_HEADER" (
    "TR_GR_HEADER_ID" bigint NOT NULL,
    "TR_GR_HEADER_PO_NUMBER" character varying(255),
    "TR_GR_HEADER_PLANT_CODE" character varying(255),
    "TR_GR_HEADER_SAP_DOC" character varying(255),
    "TR_GR_HEADER_PSTG_DATE" character varying(255),
    "TR_GR_HEADER_DOC_DATE" character varying(255),
    "TR_GR_HEADER_BOL" character varying(255),
    "TR_GR_HEADER_TXT" character varying(255),
    "TR_GR_HEADER_MVT_CODE" character varying(255),
    "TR_GR_HEADER_SAP_YEAR" character varying(255),
    "TR_GR_HEADER_STATUS" character varying(255),
    "TR_GR_HEADER_ERROR" character varying(255),
    "TR_GR_HEADER_PHOTO" character varying(255),
    "TR_GR_HEADER_CREATED_BY" character varying(255),
    "TR_GR_HEADER_CREATED_TIMESTAMP" timestamp without time zone,
    "TR_GR_HEADER_UPDATED_BY" character varying(255),
    "TR_GR_HEADER_UPDATED_TIMESTAMP" timestamp without time zone,
    "TR_GR_HEADER_RECIPIENT" character varying(255),
    "TR_GR_HEADER_IS_CANCELLED" boolean DEFAULT false NOT NULL,
    "TR_GR_HEADER_IS_ADJUSTMENT" boolean DEFAULT false,
    "TR_GR_HEADER_PRINT_COUNT" bigint
);
 "   DROP TABLE public."TR_GR_HEADER";
       public         heap    postgres    false    3            �            1259    19296     TR_GR_HEADER_TR_GR_HEADER_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."TR_GR_HEADER_TR_GR_HEADER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."TR_GR_HEADER_TR_GR_HEADER_ID_seq";
       public          postgres    false    3    228                       0    0     TR_GR_HEADER_TR_GR_HEADER_ID_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."TR_GR_HEADER_TR_GR_HEADER_ID_seq" OWNED BY public."TR_GR_HEADER"."TR_GR_HEADER_ID";
          public          postgres    false    229            �            1259    19298    TR_MANUAL_ADJUSTMENT    TABLE     2  CREATE TABLE public."TR_MANUAL_ADJUSTMENT" (
    "TR_MANUAL_ADJUSTMENT_ID" bigint NOT NULL,
    "TR_MANUAL_ADJUSTMENT_GR_HEADER_ID" bigint,
    "TR_MANUAL_ADJUSTMENT_GR_DETAIL_ID" bigint,
    "TR_MANUAL_ADJUSTMENT_QTY_BEFORE" double precision,
    "TR_MANUAL_ADJUSTMENT_QTY_AFTER" double precision,
    "TR_MANUAL_ADJUSTMENT_PHOTO" character varying,
    "TR_MANUAL_ADJUSTMENT_CREATED_BY" bigint,
    "TR_MANUAL_ADJUSTMENT_CREATED_TIMESTAMP" timestamp without time zone,
    "TR_MANUAL_ADJUSTMENT_UOM" character varying,
    "TR_MANUAL_ADJUSTMENT_NOTES" text
);
 *   DROP TABLE public."TR_MANUAL_ADJUSTMENT";
       public         heap    wcs_user    false    3            �            1259    19304 0   TR_MANUAL_ADJUSTMENT_TR_MANUAL_ADJUSTMENT_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."TR_MANUAL_ADJUSTMENT_TR_MANUAL_ADJUSTMENT_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE public."TR_MANUAL_ADJUSTMENT_TR_MANUAL_ADJUSTMENT_ID_seq";
       public          wcs_user    false    3    230                        0    0 0   TR_MANUAL_ADJUSTMENT_TR_MANUAL_ADJUSTMENT_ID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."TR_MANUAL_ADJUSTMENT_TR_MANUAL_ADJUSTMENT_ID_seq" OWNED BY public."TR_MANUAL_ADJUSTMENT"."TR_MANUAL_ADJUSTMENT_ID";
          public          wcs_user    false    231            �            1259    19306    TR_PID_DETAIL    TABLE     �  CREATE TABLE public."TR_PID_DETAIL" (
    "TR_PID_DETAIL_ID" bigint NOT NULL,
    "TR_PID_DETAIL_HEADER_ID" bigint,
    "TR_PID_DETAIL_LINE_MATERIAL" character varying,
    "TR_PID_DETAIL_MATERIAL_CODE" character varying,
    "TR_PID_DETAIL_MATERIAL_NAME" character varying,
    "TR_PID_DETAIL_MATERIAL_SAP_BATCH" character varying,
    "TR_PID_DETAIL_MATERIAL_UOM" character varying,
    "TR_PID_DETAIL_MATERIAL_MOBILE_QTY" double precision
);
 #   DROP TABLE public."TR_PID_DETAIL";
       public         heap    wcs_user    false    3            �            1259    19312    TR_PID_DETAIL_MATERIAL    TABLE     �  CREATE TABLE public."TR_PID_DETAIL_MATERIAL" (
    "TR_PID_DETAIL_MATERIAL_ID" bigint NOT NULL,
    "TR_PID_DETAIL_DETAIL_ID" bigint,
    "TR_PID_DETAIL_HEADER_ID" bigint,
    "TR_PID_DETAIL_GR_DETAIL_ID" bigint,
    "TR_PID_DETAIL_LEFT_QTY" double precision,
    "TR_PID_DETAIL_UPDATED_QTY" double precision,
    "TR_PID_DETAIL_PHOTO" character varying(255),
    "TR_PID_DETAIL_DIFF" double precision
);
 ,   DROP TABLE public."TR_PID_DETAIL_MATERIAL";
       public         heap    wcs_user    false    3            �            1259    19315 4   TR_PID_DETAIL_MATERIAL_TR_PID_DETAIL_MATERIAL_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."TR_PID_DETAIL_MATERIAL_TR_PID_DETAIL_MATERIAL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public."TR_PID_DETAIL_MATERIAL_TR_PID_DETAIL_MATERIAL_ID_seq";
       public          wcs_user    false    233    3            !           0    0 4   TR_PID_DETAIL_MATERIAL_TR_PID_DETAIL_MATERIAL_ID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."TR_PID_DETAIL_MATERIAL_TR_PID_DETAIL_MATERIAL_ID_seq" OWNED BY public."TR_PID_DETAIL_MATERIAL"."TR_PID_DETAIL_MATERIAL_ID";
          public          wcs_user    false    234            �            1259    19317 "   TR_PID_DETAIL_TR_PID_DETAIL_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."TR_PID_DETAIL_TR_PID_DETAIL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."TR_PID_DETAIL_TR_PID_DETAIL_ID_seq";
       public          wcs_user    false    232    3            "           0    0 "   TR_PID_DETAIL_TR_PID_DETAIL_ID_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."TR_PID_DETAIL_TR_PID_DETAIL_ID_seq" OWNED BY public."TR_PID_DETAIL"."TR_PID_DETAIL_ID";
          public          wcs_user    false    235            �            1259    19319    TR_PID_HEADER    TABLE     �  CREATE TABLE public."TR_PID_HEADER" (
    "TR_PID_HEADER_ID" bigint NOT NULL,
    "TR_PID_HEADER_SAP_NO" character varying,
    "TR_PID_HEADER_YEAR" character varying,
    "TR_PID_HEADER_STATUS" character varying,
    "TR_PID_HEADER_SAP_CREATED_DATE" character varying,
    "TR_PID_HEADER_SAP_CREATED_BY" character varying,
    "TR_PID_HEADER_PLANT" character varying,
    "TR_PID_HEADER_SLOC" character varying,
    "TR_PID_MOBILE_ALLOW_TO_INPUT" boolean,
    "TR_PID_HEADER_CREATED_BY" character varying,
    "TR_PID_HEADER_CREATED_TIMESTAMP" timestamp without time zone,
    "TR_PID_HEADER_UPDATED_BY" character varying,
    "TR_PID_HEADER_UPDATED_TIMESTAMP" timestamp without time zone,
    "TR_PID_HEADER_APPROVAL_STATUS" character varying,
    "TR_PID_HEADER_APPROVAL_BY" character varying,
    "TR_PID_HEADER_APPROVAL_TIMESTAMP" timestamp without time zone,
    "TR_PID_HEADER_APPROVAL_COUNTER" integer,
    "TR_PID_HEADER_IS_DELETED" boolean,
    "TR_PID_HEADER_SAP_RETURN_NO" character varying,
    "TR_PID_HEADER_SAP_RETURN_YEAR" character varying,
    "TR_PID_HEADER_SAP_RETURN_ERROR" character varying,
    "TR_PID_HEADER_PHOTO" character varying(255),
    "TR_PID_HEADER_APPROVAL_NOTES" text,
    "TR_PID_POSTING_DATE" date,
    "TR_PID_COUNT_DATE" date
);
 #   DROP TABLE public."TR_PID_HEADER";
       public         heap    wcs_user    false    3            �            1259    19325 "   TR_PID_HEADER_TR_PID_HEADER_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."TR_PID_HEADER_TR_PID_HEADER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."TR_PID_HEADER_TR_PID_HEADER_ID_seq";
       public          wcs_user    false    236    3            #           0    0 "   TR_PID_HEADER_TR_PID_HEADER_ID_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."TR_PID_HEADER_TR_PID_HEADER_ID_seq" OWNED BY public."TR_PID_HEADER"."TR_PID_HEADER_ID";
          public          wcs_user    false    237            �            1259    19327    TR_PO_DETAIL    TABLE     �  CREATE TABLE public."TR_PO_DETAIL" (
    "TR_PO_DETAIL_ID" bigint NOT NULL,
    "TR_PO_DETAIL_PO_HEADER_NUMBER" character varying(255),
    "TR_PO_DETAIL_MATERIAL_LINE_NUM" integer,
    "TR_PO_DETAIL_MATERIAL_CODE" character varying(255),
    "TR_PO_DETAIL_MATERIAL_NAME" character varying(255),
    "TR_PO_DETAIL_MATERIAL_BATCH" character varying(255),
    "TR_PO_DETAIL_MATERIAL_DESC" character varying(255),
    "TR_PO_DETAIL_BATCH" character varying(255),
    "TR_PO_DETAIL_QTY_ORDER" double precision,
    "TR_PO_DETAIL_QTY_DELIV" double precision,
    "TR_PO_DETAIL_UOM" character varying(255),
    "TR_PO_DETAIL_PLANT_RCV" character varying(255),
    "TR_PO_DETAIL_SLOC" character varying(255),
    "TR_PO_DETAIL_FLAG" smallint,
    "TR_PO_DETAIL_CREATED_BY" character varying(255),
    "TR_PO_DETAIL_CREATED_TIMESTAMP" timestamp without time zone,
    "TR_PO_DETAIL_UPDATED_BY" character varying(255),
    "TR_PO_DETAIL_UPDATED_TIMESTAMP" timestamp without time zone
);
 "   DROP TABLE public."TR_PO_DETAIL";
       public         heap    postgres    false    3            �            1259    19333     TR_PO_DETAIL_TR_PO_DETAIL_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."TR_PO_DETAIL_TR_PO_DETAIL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."TR_PO_DETAIL_TR_PO_DETAIL_ID_seq";
       public          postgres    false    3    238            $           0    0     TR_PO_DETAIL_TR_PO_DETAIL_ID_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."TR_PO_DETAIL_TR_PO_DETAIL_ID_seq" OWNED BY public."TR_PO_DETAIL"."TR_PO_DETAIL_ID";
          public          postgres    false    239            �            1259    19335    TR_PO_HEADER    TABLE       CREATE TABLE public."TR_PO_HEADER" (
    "TR_PO_HEADER_ID" bigint NOT NULL,
    "TR_PO_HEADER_NUMBER" character varying(255) NOT NULL,
    "TR_PO_HEADER_TYPE" character varying(255),
    "TR_PO_HEADER_STATUS" character varying(255),
    "TR_PO_HEADER_VENDOR" character varying(255),
    "TR_PO_HEADER_SUP_PLANT" character varying(255),
    "TR_PO_HEADER_FLAG" smallint,
    "TR_PO_HEADER_SAP_CREATED_DATE" date,
    "TR_PO_HEADER_SAP_CREATED_BY" character varying(255),
    "TR_PO_HEADER_IS_DELETED" boolean DEFAULT false NOT NULL,
    "TR_PO_HEADER_CREATED_BY" character varying(255),
    "TR_PO_HEADER_CREATED_TIMESTAMP" timestamp without time zone,
    "TR_PO_HEADER_UPDATED_BY" character varying(255),
    "TR_PO_HEADER_UPDATED_TIMESTAMP" timestamp without time zone
);
 "   DROP TABLE public."TR_PO_HEADER";
       public         heap    postgres    false    3            �            1259    19342     TR_PO_HEADER_TR_PO_HEADER_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."TR_PO_HEADER_TR_PO_HEADER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."TR_PO_HEADER_TR_PO_HEADER_ID_seq";
       public          postgres    false    3    240            %           0    0     TR_PO_HEADER_TR_PO_HEADER_ID_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."TR_PO_HEADER_TR_PO_HEADER_ID_seq" OWNED BY public."TR_PO_HEADER"."TR_PO_HEADER_ID";
          public          postgres    false    241            �            1259    19344    TR_TP_DETAIL    TABLE     �  CREATE TABLE public."TR_TP_DETAIL" (
    "TR_TP_DETAIL_ID" bigint NOT NULL,
    "TR_TP_DETAIL_TP_HEADER_ID" bigint,
    "TR_TP_DETAIL_MATERIAL_CODE" character varying(255),
    "TR_TP_DETAIL_MATERIAL_NAME" character varying(255),
    "TR_TP_DETAIL_SAP_BATCH" character varying(255),
    "TR_TP_DETAIL_QTY" double precision,
    "TR_TP_DETAIL_UOM" character varying(255),
    "TR_TP_DETAIL_BASE_QTY" double precision,
    "TR_TP_DETAIL_BASE_UOM" character varying(255),
    "TR_TP_DETAIL_GI_QTY" double precision,
    "TR_TP_DETAIL_GI_UOM" character varying(255),
    "TR_TP_DETAIL_SLOC" character varying(255),
    "TR_TP_DETAIL_GR_RECEIPIENT" character varying(255),
    "TR_TP_DETAIL_NOTES" character varying(255),
    "TR_TP_DETAIL_PHOTO" character varying(255),
    "TR_TP_DETAIL_CREATED_BY" character varying(255),
    "TR_TP_DETAIL_CREATED_TIMESTAMP" timestamp without time zone,
    "TR_TP_DETAIL_UPDATED_BY" character varying(255),
    "TR_TP_DETAIL_UPDATED_TIMESTAMP" timestamp without time zone,
    "TR_TP_DETAIL_QR_CODE_NUMBER" character varying(255),
    "TR_TP_DETAIL_MOBILE_QTY" double precision,
    "TR_TP_DETAIL_MOBILE_UOM" character varying(255),
    "TR_TP_DETAIL_GR_DETAIL_ID" integer,
    "TR_TP_DETAIL_SLOC_Y21_FROM" character varying(255),
    "TR_TP_DETAIL_IS_CANCELLED" boolean DEFAULT false,
    "TR_TP_DETAIL_Y21_EXP_DATE" date,
    "TR_TP_DETAIL_SAPLINE_ID" integer,
    "TR_TP_DETAIL_Y21_GR_REF" character varying(255)
);
 "   DROP TABLE public."TR_TP_DETAIL";
       public         heap    postgres    false    3            �            1259    19350     TR_TP_DETAIL_TR_TP_DETAIL_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."TR_TP_DETAIL_TR_TP_DETAIL_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."TR_TP_DETAIL_TR_TP_DETAIL_ID_seq";
       public          postgres    false    242    3            &           0    0     TR_TP_DETAIL_TR_TP_DETAIL_ID_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."TR_TP_DETAIL_TR_TP_DETAIL_ID_seq" OWNED BY public."TR_TP_DETAIL"."TR_TP_DETAIL_ID";
          public          postgres    false    243            �            1259    19352    TR_TP_HEADER    TABLE     �  CREATE TABLE public."TR_TP_HEADER" (
    "TR_TP_HEADER_ID" bigint NOT NULL,
    "TR_TP_HEADER_PLANT_CODE" character varying(255),
    "TR_TP_HEADER_SAP_DOC" character varying(255),
    "TR_TP_HEADER_PSTG_DATE" character varying(255),
    "TR_TP_HEADER_DOC_DATE" character varying(255),
    "TR_TP_HEADER_BOL" character varying(255),
    "TR_TP_HEADER_TXT" character varying(255),
    "TR_TP_HEADER_MVT_CODE" character varying(255),
    "TR_TP_HEADER_SAP_YEAR" character varying(255),
    "TR_TP_HEADER_STATUS" character varying(255),
    "TR_TP_HEADER_ERROR" character varying(255),
    "TR_TP_HEADER_MVT_SAP" character varying(255),
    "TR_TP_HEADER_NOTES" character varying(255),
    "TR_TP_HEADER_PHOTO" character varying(255),
    "TR_TP_HEADER_CREATED_BY" character varying(255),
    "TR_TP_HEADER_CREATED_TIMESTAMP" timestamp without time zone,
    "TR_TP_HEADER_UPDATED_BY" character varying(255),
    "TR_TP_HEADER_UPDATED_TIMESTAMP" timestamp without time zone,
    "TR_TP_HEADER_MOBILE_IS_SUBMIT" boolean DEFAULT false,
    "TR_TP_COST_CENTER_CODE" character varying,
    "TR_TP_GL_ACCOUNT_CODE" character varying,
    "TR_TP_HEADER_IS_CANCELLED" boolean DEFAULT false NOT NULL
);
 "   DROP TABLE public."TR_TP_HEADER";
       public         heap    postgres    false    3            �            1259    19360     TR_TP_HEADER_TR_TP_HEADER_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."TR_TP_HEADER_TR_TP_HEADER_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."TR_TP_HEADER_TR_TP_HEADER_ID_seq";
       public          postgres    false    3    244            '           0    0     TR_TP_HEADER_TR_TP_HEADER_ID_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public."TR_TP_HEADER_TR_TP_HEADER_ID_seq" OWNED BY public."TR_TP_HEADER"."TR_TP_HEADER_ID";
          public          postgres    false    245                       1259    24964    TR_TP_Y21_DETAIL_TEMP    TABLE     �  CREATE TABLE public."TR_TP_Y21_DETAIL_TEMP" (
    "TR_TP_Y21_DETAIL_TEMP_ID" bigint NOT NULL,
    "TR_TP_Y21_DETAIL_TEMP_MATERIAL_CODE" character varying(255),
    "TR_TP_Y21_DETAIL_TEMP_MATERIAL_NAME" character varying(255),
    "TR_TP_Y21_DETAIL_TEMP_SAP_BATCH" character varying(255),
    "TR_TP_Y21_DETAIL_TEMP_BASE_QTY" double precision,
    "TR_TP_Y21_DETAIL_TEMP_BASE_UOM" character varying(255),
    "TR_TP_Y21_DETAIL_TEMP_SLOC_FROM" character varying(255),
    "TR_TP_Y21_DETAIL_TEMP_SLOC_TO" character varying(255),
    "TR_TP_Y21_DETAIL_TEMP_EXP_DATE" date,
    "TR_TP_Y21_DETAIL_TEMP_NOTES" character varying(255),
    "TR_TP_Y21_DETAIL_TEMP_CREATED_BY" character varying(255),
    "TR_TP_Y21_DETAIL_TEMP_CREATED_TIMESTAMP" timestamp without time zone
);
 +   DROP TABLE public."TR_TP_Y21_DETAIL_TEMP";
       public         heap    wcs_user    false    3                        1259    24962 2   TR_TP_Y21_DETAIL_TEMP_TR_TP_Y21_DETAIL_TEMP_ID_seq    SEQUENCE     �   CREATE SEQUENCE public."TR_TP_Y21_DETAIL_TEMP_TR_TP_Y21_DETAIL_TEMP_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public."TR_TP_Y21_DETAIL_TEMP_TR_TP_Y21_DETAIL_TEMP_ID_seq";
       public          wcs_user    false    257    3            (           0    0 2   TR_TP_Y21_DETAIL_TEMP_TR_TP_Y21_DETAIL_TEMP_ID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."TR_TP_Y21_DETAIL_TEMP_TR_TP_Y21_DETAIL_TEMP_ID_seq" OWNED BY public."TR_TP_Y21_DETAIL_TEMP"."TR_TP_Y21_DETAIL_TEMP_ID";
          public          wcs_user    false    256            �            1259    19362    failed_jobs    TABLE     �   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    wcs_user    false    3            �            1259    19369    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          wcs_user    false    3    246            )           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          wcs_user    false    247            �            1259    19371 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    wcs_user    false    3            �            1259    19374    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          wcs_user    false    3    248            *           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          wcs_user    false    249            �            1259    19376    telescope_entries    TABLE     R  CREATE TABLE public.telescope_entries (
    sequence bigint NOT NULL,
    uuid uuid NOT NULL,
    batch_id uuid NOT NULL,
    family_hash character varying(255),
    should_display_on_index boolean DEFAULT true NOT NULL,
    type character varying(20) NOT NULL,
    content text NOT NULL,
    created_at timestamp(0) without time zone
);
 %   DROP TABLE public.telescope_entries;
       public         heap    wcs_user    false    3            �            1259    19383    telescope_entries_sequence_seq    SEQUENCE     �   CREATE SEQUENCE public.telescope_entries_sequence_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.telescope_entries_sequence_seq;
       public          wcs_user    false    250    3            +           0    0    telescope_entries_sequence_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.telescope_entries_sequence_seq OWNED BY public.telescope_entries.sequence;
          public          wcs_user    false    251            �            1259    19385    telescope_entries_tags    TABLE     v   CREATE TABLE public.telescope_entries_tags (
    entry_uuid uuid NOT NULL,
    tag character varying(255) NOT NULL
);
 *   DROP TABLE public.telescope_entries_tags;
       public         heap    wcs_user    false    3            �            1259    19388    telescope_monitoring    TABLE     V   CREATE TABLE public.telescope_monitoring (
    tag character varying(255) NOT NULL
);
 (   DROP TABLE public.telescope_monitoring;
       public         heap    wcs_user    false    3            �            1259    19391    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    wcs_user    false    3            �            1259    19397    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          wcs_user    false    3    254            ,           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          wcs_user    false    255            �           2604    25024    LG_MATERIAL LG_MATERIAL_ID    DEFAULT     �   ALTER TABLE ONLY public."LG_MATERIAL" ALTER COLUMN "LG_MATERIAL_ID" SET DEFAULT nextval('public."LG_MATERIAL_LG_MATERIAL_ID_seq"'::regclass);
 M   ALTER TABLE public."LG_MATERIAL" ALTER COLUMN "LG_MATERIAL_ID" DROP DEFAULT;
       public          wcs_user    false    258    259    259            �           2604    19400    MA_COSTCNTR MA_COSTCNTR_ID    DEFAULT     �   ALTER TABLE ONLY public."MA_COSTCNTR" ALTER COLUMN "MA_COSTCNTR_ID" SET DEFAULT nextval('public."MA_COSTCNTR_MA_COSTCNTR_ID_seq"'::regclass);
 M   ALTER TABLE public."MA_COSTCNTR" ALTER COLUMN "MA_COSTCNTR_ID" DROP DEFAULT;
       public          postgres    false    201    200            �           2604    19401    MA_GLACC MA_GLACC_ID    DEFAULT     �   ALTER TABLE ONLY public."MA_GLACC" ALTER COLUMN "MA_GLACC_ID" SET DEFAULT nextval('public."MA_GLACC_MA_GLACC_ID_seq"'::regclass);
 G   ALTER TABLE public."MA_GLACC" ALTER COLUMN "MA_GLACC_ID" DROP DEFAULT;
       public          postgres    false    203    202            �           2604    19402    MA_MATL MA_MATL_ID    DEFAULT     ~   ALTER TABLE ONLY public."MA_MATL" ALTER COLUMN "MA_MATL_ID" SET DEFAULT nextval('public."MA_MATL_MA_MATL_ID_seq"'::regclass);
 E   ALTER TABLE public."MA_MATL" ALTER COLUMN "MA_MATL_ID" DROP DEFAULT;
       public          postgres    false    205    204            �           2604    19403    MA_MVT MA_MVT_ID    DEFAULT     z   ALTER TABLE ONLY public."MA_MVT" ALTER COLUMN "MA_MVT_ID" SET DEFAULT nextval('public."MA_MVT_MA_MVT_ID_seq"'::regclass);
 C   ALTER TABLE public."MA_MVT" ALTER COLUMN "MA_MVT_ID" DROP DEFAULT;
       public          postgres    false    207    206            �           2604    19404    MA_PLANT MA_PLANT_ID    DEFAULT     �   ALTER TABLE ONLY public."MA_PLANT" ALTER COLUMN "MA_PLANT_ID" SET DEFAULT nextval('public."MA_PLANT_MA_PLANT_ID_seq"'::regclass);
 G   ALTER TABLE public."MA_PLANT" ALTER COLUMN "MA_PLANT_ID" DROP DEFAULT;
       public          postgres    false    209    208            �           2604    19405    MA_SLOC MA_SLOC_ID    DEFAULT     ~   ALTER TABLE ONLY public."MA_SLOC" ALTER COLUMN "MA_SLOC_ID" SET DEFAULT nextval('public."MA_SLOC_MA_SLOC_ID_seq"'::regclass);
 E   ALTER TABLE public."MA_SLOC" ALTER COLUMN "MA_SLOC_ID" DROP DEFAULT;
       public          postgres    false    211    210            �           2604    19406    MA_UOM MA_UOM_ID    DEFAULT     z   ALTER TABLE ONLY public."MA_UOM" ALTER COLUMN "MA_UOM_ID" SET DEFAULT nextval('public."MA_UOM_MA_UOM_ID_seq"'::regclass);
 C   ALTER TABLE public."MA_UOM" ALTER COLUMN "MA_UOM_ID" DROP DEFAULT;
       public          postgres    false    213    212            �           2604    19407    MA_USRACC MA_USRACC_ID    DEFAULT     �   ALTER TABLE ONLY public."MA_USRACC" ALTER COLUMN "MA_USRACC_ID" SET DEFAULT nextval('public."MA_USRACC_MA_USRACC_ID_seq"'::regclass);
 I   ALTER TABLE public."MA_USRACC" ALTER COLUMN "MA_USRACC_ID" DROP DEFAULT;
       public          postgres    false    215    214            �           2604    19408    MA_VENDOR MA_VENDOR_ID    DEFAULT     �   ALTER TABLE ONLY public."MA_VENDOR" ALTER COLUMN "MA_VENDOR_ID" SET DEFAULT nextval('public."MA_VENDOR_MA_VENDOR_ID_seq"'::regclass);
 I   ALTER TABLE public."MA_VENDOR" ALTER COLUMN "MA_VENDOR_ID" DROP DEFAULT;
       public          postgres    false    217    216            �           2604    19409 )   TR_CANCELATION_MVT TR_CANCELLATION_MVT_ID    DEFAULT     �   ALTER TABLE ONLY public."TR_CANCELATION_MVT" ALTER COLUMN "TR_CANCELLATION_MVT_ID" SET DEFAULT nextval('public."TR_CANCELATION_MVT_TR_CANCELLATION_MVT_ID_seq"'::regclass);
 \   ALTER TABLE public."TR_CANCELATION_MVT" ALTER COLUMN "TR_CANCELLATION_MVT_ID" DROP DEFAULT;
       public          postgres    false    219    218                        2604    27761 6   TR_CANCELATION_MVT_DETAIL TR_CANCELATION_MVT_DETAIL_ID    DEFAULT     �   ALTER TABLE ONLY public."TR_CANCELATION_MVT_DETAIL" ALTER COLUMN "TR_CANCELATION_MVT_DETAIL_ID" SET DEFAULT nextval('public."TR_CANCELATION_MVT_DETAIL_TR_CANCELATION_MVT_DETAIL_ID_seq"'::regclass);
 i   ALTER TABLE public."TR_CANCELATION_MVT_DETAIL" ALTER COLUMN "TR_CANCELATION_MVT_DETAIL_ID" DROP DEFAULT;
       public          wcs_user    false    260    261    261            �           2604    19410 "   TR_GI_SAPDETAIL TR_GI_SAPDETAIL_ID    DEFAULT     �   ALTER TABLE ONLY public."TR_GI_SAPDETAIL" ALTER COLUMN "TR_GI_SAPDETAIL_ID" SET DEFAULT nextval('public."TR_GI_SAPDETAIL_TR_GI_SAPDETAIL_ID_seq"'::regclass);
 U   ALTER TABLE public."TR_GI_SAPDETAIL" ALTER COLUMN "TR_GI_SAPDETAIL_ID" DROP DEFAULT;
       public          postgres    false    221    220            �           2604    19411 "   TR_GI_SAPHEADER TR_GI_SAPHEADER_ID    DEFAULT     �   ALTER TABLE ONLY public."TR_GI_SAPHEADER" ALTER COLUMN "TR_GI_SAPHEADER_ID" SET DEFAULT nextval('public."TR_GI_SAPHEADER_TR_GI_SAPHEADER_ID_seq"'::regclass);
 U   ALTER TABLE public."TR_GI_SAPHEADER" ALTER COLUMN "TR_GI_SAPHEADER_ID" DROP DEFAULT;
       public          postgres    false    223    222            �           2604    19412    TR_GR_DETAIL TR_GR_DETAIL_ID    DEFAULT     �   ALTER TABLE ONLY public."TR_GR_DETAIL" ALTER COLUMN "TR_GR_DETAIL_ID" SET DEFAULT nextval('public."TR_GR_DETAIL_TR_GR_DETAIL_ID_seq"'::regclass);
 O   ALTER TABLE public."TR_GR_DETAIL" ALTER COLUMN "TR_GR_DETAIL_ID" DROP DEFAULT;
       public          postgres    false    227    224            �           2604    19413 &   TR_GR_DETAIL_LOCK TR_GR_DETAIL_LOCK_ID    DEFAULT     �   ALTER TABLE ONLY public."TR_GR_DETAIL_LOCK" ALTER COLUMN "TR_GR_DETAIL_LOCK_ID" SET DEFAULT nextval('public."TR_GR_DETAIL_LOCK_TR_GR_DETAIL_LOCK_ID_seq"'::regclass);
 Y   ALTER TABLE public."TR_GR_DETAIL_LOCK" ALTER COLUMN "TR_GR_DETAIL_LOCK_ID" DROP DEFAULT;
       public          wcs_user    false    226    225            �           2604    19414    TR_GR_HEADER TR_GR_HEADER_ID    DEFAULT     �   ALTER TABLE ONLY public."TR_GR_HEADER" ALTER COLUMN "TR_GR_HEADER_ID" SET DEFAULT nextval('public."TR_GR_HEADER_TR_GR_HEADER_ID_seq"'::regclass);
 O   ALTER TABLE public."TR_GR_HEADER" ALTER COLUMN "TR_GR_HEADER_ID" DROP DEFAULT;
       public          postgres    false    229    228            �           2604    19415 ,   TR_MANUAL_ADJUSTMENT TR_MANUAL_ADJUSTMENT_ID    DEFAULT     �   ALTER TABLE ONLY public."TR_MANUAL_ADJUSTMENT" ALTER COLUMN "TR_MANUAL_ADJUSTMENT_ID" SET DEFAULT nextval('public."TR_MANUAL_ADJUSTMENT_TR_MANUAL_ADJUSTMENT_ID_seq"'::regclass);
 _   ALTER TABLE public."TR_MANUAL_ADJUSTMENT" ALTER COLUMN "TR_MANUAL_ADJUSTMENT_ID" DROP DEFAULT;
       public          wcs_user    false    231    230            �           2604    19416    TR_PID_DETAIL TR_PID_DETAIL_ID    DEFAULT     �   ALTER TABLE ONLY public."TR_PID_DETAIL" ALTER COLUMN "TR_PID_DETAIL_ID" SET DEFAULT nextval('public."TR_PID_DETAIL_TR_PID_DETAIL_ID_seq"'::regclass);
 Q   ALTER TABLE public."TR_PID_DETAIL" ALTER COLUMN "TR_PID_DETAIL_ID" DROP DEFAULT;
       public          wcs_user    false    235    232            �           2604    19417 0   TR_PID_DETAIL_MATERIAL TR_PID_DETAIL_MATERIAL_ID    DEFAULT     �   ALTER TABLE ONLY public."TR_PID_DETAIL_MATERIAL" ALTER COLUMN "TR_PID_DETAIL_MATERIAL_ID" SET DEFAULT nextval('public."TR_PID_DETAIL_MATERIAL_TR_PID_DETAIL_MATERIAL_ID_seq"'::regclass);
 c   ALTER TABLE public."TR_PID_DETAIL_MATERIAL" ALTER COLUMN "TR_PID_DETAIL_MATERIAL_ID" DROP DEFAULT;
       public          wcs_user    false    234    233            �           2604    19418    TR_PID_HEADER TR_PID_HEADER_ID    DEFAULT     �   ALTER TABLE ONLY public."TR_PID_HEADER" ALTER COLUMN "TR_PID_HEADER_ID" SET DEFAULT nextval('public."TR_PID_HEADER_TR_PID_HEADER_ID_seq"'::regclass);
 Q   ALTER TABLE public."TR_PID_HEADER" ALTER COLUMN "TR_PID_HEADER_ID" DROP DEFAULT;
       public          wcs_user    false    237    236            �           2604    19419    TR_PO_DETAIL TR_PO_DETAIL_ID    DEFAULT     �   ALTER TABLE ONLY public."TR_PO_DETAIL" ALTER COLUMN "TR_PO_DETAIL_ID" SET DEFAULT nextval('public."TR_PO_DETAIL_TR_PO_DETAIL_ID_seq"'::regclass);
 O   ALTER TABLE public."TR_PO_DETAIL" ALTER COLUMN "TR_PO_DETAIL_ID" DROP DEFAULT;
       public          postgres    false    239    238            �           2604    19420    TR_PO_HEADER TR_PO_HEADER_ID    DEFAULT     �   ALTER TABLE ONLY public."TR_PO_HEADER" ALTER COLUMN "TR_PO_HEADER_ID" SET DEFAULT nextval('public."TR_PO_HEADER_TR_PO_HEADER_ID_seq"'::regclass);
 O   ALTER TABLE public."TR_PO_HEADER" ALTER COLUMN "TR_PO_HEADER_ID" DROP DEFAULT;
       public          postgres    false    241    240            �           2604    19421    TR_TP_DETAIL TR_TP_DETAIL_ID    DEFAULT     �   ALTER TABLE ONLY public."TR_TP_DETAIL" ALTER COLUMN "TR_TP_DETAIL_ID" SET DEFAULT nextval('public."TR_TP_DETAIL_TR_TP_DETAIL_ID_seq"'::regclass);
 O   ALTER TABLE public."TR_TP_DETAIL" ALTER COLUMN "TR_TP_DETAIL_ID" DROP DEFAULT;
       public          postgres    false    243    242            �           2604    19422    TR_TP_HEADER TR_TP_HEADER_ID    DEFAULT     �   ALTER TABLE ONLY public."TR_TP_HEADER" ALTER COLUMN "TR_TP_HEADER_ID" SET DEFAULT nextval('public."TR_TP_HEADER_TR_TP_HEADER_ID_seq"'::regclass);
 O   ALTER TABLE public."TR_TP_HEADER" ALTER COLUMN "TR_TP_HEADER_ID" DROP DEFAULT;
       public          postgres    false    245    244            �           2604    24967 .   TR_TP_Y21_DETAIL_TEMP TR_TP_Y21_DETAIL_TEMP_ID    DEFAULT     �   ALTER TABLE ONLY public."TR_TP_Y21_DETAIL_TEMP" ALTER COLUMN "TR_TP_Y21_DETAIL_TEMP_ID" SET DEFAULT nextval('public."TR_TP_Y21_DETAIL_TEMP_TR_TP_Y21_DETAIL_TEMP_ID_seq"'::regclass);
 a   ALTER TABLE public."TR_TP_Y21_DETAIL_TEMP" ALTER COLUMN "TR_TP_Y21_DETAIL_TEMP_ID" DROP DEFAULT;
       public          wcs_user    false    256    257    257            �           2604    19423    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          wcs_user    false    247    246            �           2604    19424    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          wcs_user    false    249    248            �           2604    19425    telescope_entries sequence    DEFAULT     �   ALTER TABLE ONLY public.telescope_entries ALTER COLUMN sequence SET DEFAULT nextval('public.telescope_entries_sequence_seq'::regclass);
 I   ALTER TABLE public.telescope_entries ALTER COLUMN sequence DROP DEFAULT;
       public          wcs_user    false    251    250            �           2604    19426    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          wcs_user    false    255    254                      0    25021    LG_MATERIAL 
   TABLE DATA             COPY public."LG_MATERIAL" ("LG_MATERIAL_ID", "LG_MATERIAL_PLANT_CODE", "LG_MATERIAL_POSTING_DATE", "LG_MATERIAL_CODE", "LG_MATERIAL_MVT_TYPE", "LG_MATERIAL_QTY", "LG_MATERIAL_UOM", "LG_MATERIAL_GR_DETAIL_ID", "LG_MATERIAL_CREATED_BY", "LG_MATERIAL_CREATED_TIMESTAMP") FROM stdin;
    public          wcs_user    false    259   "z      �          0    19175    MA_COSTCNTR 
   TABLE DATA           �   COPY public."MA_COSTCNTR" ("MA_COSTCNTR_ID", "MA_COSTCNTR_CODE", "MA_COSTCNTR_COSTCENTER", "MA_COSTCNTR_DESC", "MA_COSTCNTR_CREATED_BY", "MA_COSTCNTR_CREATED_TIMESTAMP", "MA_COSTCNTR_UPDATED_BY", "MA_COSTCNTR_UPDATED_TIMESTAMP") FROM stdin;
    public          postgres    false    200   n|      �          0    19183    MA_GLACC 
   TABLE DATA           �   COPY public."MA_GLACC" ("MA_GLACC_ID", "MA_GLACC_CODE", "MA_GLACC_ACC", "MA_GLACC_DESC", "MA_GLACC_CREATED_BY", "MA_GLACC_CREATED_TIMESTAMP", "MA_GLACC_UPDATED_BY", "MA_GLACC_UPDATED_TIMESTAMP") FROM stdin;
    public          postgres    false    202   -�      �          0    19191    MA_MATL 
   TABLE DATA           >  COPY public."MA_MATL" ("MA_MATL_ID", "MA_MATL_CODE", "MA_MATL_DESC", "MA_MATL_TYPE", "MA_MATL_GROUP", "MA_MATL_PLANT", "MA_MATL_SLOC", "MA_MATL_UOM", "MA_MATL_QTY", "MA_MATL_BATCH", "MA_MATL_CREATED_BY", "MA_MATL_CREATED_TIMESTAMP", "MA_MATL_UPDATED_BY", "MA_MATL_UPDATED_TIMESTAMP", "MA_MATL_FLAG_BATCH") FROM stdin;
    public          postgres    false    204   �      �          0    19199    MA_MVT 
   TABLE DATA           �   COPY public."MA_MVT" ("MA_MVT_ID", "MA_MVT_CODE", "MA_MVT_DESC", "MA_MVT_CREATED_BY", "MA_MVT_CREATED_TIMESTAMP", "MA_MVT_UPDATED_BY", "MA_MVT_UPDATED_TIMESTAMP") FROM stdin;
    public          postgres    false    206   ��      �          0    19207    MA_PLANT 
   TABLE DATA             COPY public."MA_PLANT" ("MA_PLANT_ID", "MA_PLANT_CODE", "MA_PLANT_NAME", "MA_PLANT_STREET", "MA_PLANT_CITY", "MA_PLANT_POSTAL_CODE", "MA_PLANT_TELP", "MA_PLANT_FAX", "MA_PLANT_CREATED_BY", "MA_PLANT_CREATED_TIMESTAMP", "MA_PLANT_UPDATED_BY", "MA_PLANT_UPDATED_TIMESTAMP") FROM stdin;
    public          postgres    false    208   $�      �          0    19215    MA_SLOC 
   TABLE DATA           �   COPY public."MA_SLOC" ("MA_SLOC_ID", "MA_SLOC_CODE", "MA_SLOC_PLANT", "MA_SLOC_DESC", "MA_SLOC_CREATED_BY", "MA_SLOC_CREATED_TIMESTAMP", "MA_SLOC_UPDATED_BY", "MA_SLOC_UPDATED_TIMESTAMP") FROM stdin;
    public          postgres    false    210   ��      �          0    19223    MA_UOM 
   TABLE DATA           �   COPY public."MA_UOM" ("MA_UOM_ID", "MA_UOM_MATCODE", "MA_UOM_UOM", "MA_UOM_NUM", "MA_UOM_DEN", "MA_UOM_CREATED_BY", "MA_UOM_CREATED_TIMESTAMP", "MA_UOM_UPDATED_BY", "MA_UOM_UPDATED_TIMESTAMP") FROM stdin;
    public          postgres    false    212   e�      �          0    19231 	   MA_USRACC 
   TABLE DATA           �  COPY public."MA_USRACC" ("MA_USRACC_ID", "MA_USRACC_FULL_NAME", "MA_USRACC_EMAIL", "MA_USRACC_PLANT_CODE", "MA_USRACC_ROLE", "MA_USRACC_JWT_TOKEN", "MA_USRACC_FCM_TOKEN", "MA_USRACC_IS_ACTIVE", "MA_USRACC_LAST_LOGIN_TIMESTAMP", "MA_USRACC_CRTD_BY", "MA_USRACC_CRTD_BY_TIMESTAMP", "MA_USRACC_UPDT_BY", "MA_USRACC_UPDT_BY_TIMESTAMP", "MA_USRACC_LOGIN_VIA_SSO", "MA_USRACC_PASSWORD") FROM stdin;
    public          postgres    false    214   ��      �          0    19239 	   MA_VENDOR 
   TABLE DATA             COPY public."MA_VENDOR" ("MA_VENDOR_ID", "MA_VENDOR_CODE", "MA_VENDOR_NAME", "MA_VENDOR_STREET", "MA_VENDOR_CITY", "MA_VENDOR_TELP", "MA_VENDOR_FAX", "MA_VENDOR_CREATED_BY", "MA_VENDOR_CREATED_TIMESTAMP", "MA_VENDOR_UPDATED_BY", "MA_VENDOR_UPDATED_TIMESTAMP") FROM stdin;
    public          postgres    false    216   ��      �          0    19247    TR_CANCELATION_MVT 
   TABLE DATA           �  COPY public."TR_CANCELATION_MVT" ("TR_CANCELLATION_MVT_ID", "TR_CANCELLATION_PLANT_CODE", "TR_CANCELLATION_MVT_SAP_CODE", "TR_CANCELLATION_MVT_TR_DOC", "TR_CANCELLATION_MVT_MATDOC", "TR_CANCELLATION_MVT_MATDOC_YEAR", "TR_CANCELLATION_MVT_POSTING_DATE", "TR_CANCELLATION_MVT_STATUS", "TR_CANCELLATION_MVT_NOTES", "TR_CANCELLATION_MVT_PHOTO", "TR_CANCELLATION_MVT_ERROR", "TR_CANCELLATION_MVT_CREATED_BY", "TR_CANCELLATION_MVT_CREATED_TIMESTAMP", "TR_CANCELLATION_MVT_UPDATED_BY", "TR_CANCELLATION_MVT_UPDATED_TIMESTAMP", "TR_CANCELLATION_BOL", "TR_CANCELLATION_TXT", "TR_CANCELLATION_MVT_CODE", "TR_CANCELLATION_MVT_TR_DOC_YEAR") FROM stdin;
    public          postgres    false    218   ��                0    27758    TR_CANCELATION_MVT_DETAIL 
   TABLE DATA           �   COPY public."TR_CANCELATION_MVT_DETAIL" ("TR_CANCELATION_MVT_DETAIL_ID", "TR_CANCELATION_MVT_DETAIL_HEADER_ID", "TR_CANCELATION_MVT_DETAIL_TRANSACTION_DETAIL_ID") FROM stdin;
    public          wcs_user    false    261   V�      �          0    19255    TR_GI_SAPDETAIL 
   TABLE DATA           �  COPY public."TR_GI_SAPDETAIL" ("TR_GI_SAPDETAIL_ID", "TR_GI_SAPDETAIL_SAPHEADER_ID", "TR_GI_SAPDETAIL_MATERIAL_CODE", "TR_GI_SAPDETAIL_MATERIAL_NAME", "TR_GI_SAPDETAIL_SAP_BATCH", "TR_GI_SAPDETAIL_QTY", "TR_GI_SAPDETAIL_UOM", "TR_GI_SAPDETAIL_BASE_QTY", "TR_GI_SAPDETAIL_BASE_UOM", "TR_GI_SAPDETAIL_GI_QTY", "TR_GI_SAPDETAIL_GI_UOM", "TR_GI_SAPDETAIL_SLOC", "TR_GI_SAPDETAIL_GR_RECEIPIENT", "TR_GI_SAPDETAIL_NOTES", "TR_GI_SAPDETAIL_PHOTO", "TR_GI_SAPDETAIL_CREATED_BY", "TR_GI_SAPDETAIL_CREATED_TIMESTAMP", "TR_GI_SAPDETAIL_UPDATED_BY", "TR_GI_SAPDETAIL_UPDATED_TIMESTAMP", "TR_GI_SAPDETAIL_QR_CODE_NUMBER", "TR_GI_SAPDETAIL_MOBILE_QTY", "TR_GI_SAPDETAIL_MOBILE_UOM", "TR_GI_SAPDETAIL_GR_DETAIL_ID", "TR_GI_SAPDETAIL_IS_CANCELLED") FROM stdin;
    public          postgres    false    220   ��      �          0    19263    TR_GI_SAPHEADER 
   TABLE DATA           �  COPY public."TR_GI_SAPHEADER" ("TR_GI_SAPHEADER_ID", "TR_GI_SAPHEADER_PLANT_CODE", "TR_GI_SAPHEADER_SAP_DOC", "TR_GI_SAPHEADER_PSTG_DATE", "TR_GI_SAPHEADER_DOC_DATE", "TR_GI_SAPHEADER_BOL", "TR_GI_SAPHEADER_TXT", "TR_GI_SAPHEADER_MVT_CODE", "TR_GI_SAPHEADER_SAP_YEAR", "TR_GI_SAPHEADER_STATUS", "TR_GI_SAPHEADER_ERROR", "TR_GI_SAPHEADER_PO_NUMBER", "TR_GI_SAPHEADER_MVT_SAP", "TR_GI_SAPHEADER_NOTES", "TR_GI_SAPHEADER_PHOTO", "TR_GI_SAPHEADER_CREATED_BY", "TR_GI_SAPHEADER_CREATED_TIMESTAMP", "TR_GI_SAPHEADER_UPDATED_BY", "TR_GI_SAPHEADER_UPDATED_TIMESTAMP", "TR_GI_SAPHEADER_MOBILE_IS_SUBMIT", "TR_GI_SAPHEADER_CREATED_PLANT_CODE", "TR_GI_SAPHEADER_IS_CANCELLED") FROM stdin;
    public          postgres    false    222   ��      �          0    19273    TR_GR_DETAIL 
   TABLE DATA             COPY public."TR_GR_DETAIL" ("TR_GR_DETAIL_ID", "TR_GR_DETAIL_HEADER_ID", "TR_GR_DETAIL_MATERIAL_CODE", "TR_GR_DETAIL_MATERIAL_NAME", "TR_GR_DETAIL_SAP_BATCH", "TR_GR_DETAIL_QTY", "TR_GR_DETAIL_UOM", "TR_GR_DETAIL_BASE_QTY", "TR_GR_DETAIL_BASE_UOM", "TR_GR_DETAIL_LEFT_QTY", "TR_GR_DETAIL_SLOC", "TR_GR_DETAIL_UNLOADING_PLANT", "TR_GR_DETAIL_GL_ACCOUNT", "TR_GR_DETAIL_COST_CENTER", "TR_GR_DETAIL_EXP_DATE", "TR_GR_DETAIL_IMG_QRCODE", "TR_GR_DETAIL_NOTES", "TR_GR_DETAIL_PHOTO", "TR_GR_DETAIL_CREATED_BY", "TR_GR_DETAIL_CREATED_TIMESTAMP", "TR_GR_DETAIL_UPDATED_BY", "TR_GR_DETAIL_UPDATED_TIMESTAMP", "TR_GR_DETAIL_QR_CODE_NUMBER", "TR_GR_DETAIL_PO_DETAIL_ID", "TR_GR_DETAIL_GR_REFERENCE", "TR_GR_DETAIL_IS_CANCELLED", "TR_GR_DETAIL_SAPLINE_ID", "TR_GR_DETAIL_Y21_TP_REF") FROM stdin;
    public          postgres    false    224   ��      �          0    19279    TR_GR_DETAIL_LOCK 
   TABLE DATA           �  COPY public."TR_GR_DETAIL_LOCK" ("TR_GR_DETAIL_LOCK_ID", "TR_GR_DETAIL_LOCK_GR_DETAIL_ID", "TR_GR_DETAIL_LOCK_EXPIRED_TIMESTAMP", "TR_GR_DETAIL_LOCK_CREATED_BY", "TR_GR_DETAIL_LOCK_CREATED_TIMESTAMP", "TR_GR_DETAIL_LOCK_PO_HEADER_ID", "TR_GR_DETAIL_LOCK_BOOKED_QTY", "TR_GR_DETAIL_LOCK_BOOKED_UOM", "TR_GR_IS_TP", "TR_GR_DETAIL_LOCK_BOOKED_SLOC", "TR_GR_DETAIL_LOCK_NOTE") FROM stdin;
    public          wcs_user    false    225   W�      �          0    19289    TR_GR_HEADER 
   TABLE DATA           C  COPY public."TR_GR_HEADER" ("TR_GR_HEADER_ID", "TR_GR_HEADER_PO_NUMBER", "TR_GR_HEADER_PLANT_CODE", "TR_GR_HEADER_SAP_DOC", "TR_GR_HEADER_PSTG_DATE", "TR_GR_HEADER_DOC_DATE", "TR_GR_HEADER_BOL", "TR_GR_HEADER_TXT", "TR_GR_HEADER_MVT_CODE", "TR_GR_HEADER_SAP_YEAR", "TR_GR_HEADER_STATUS", "TR_GR_HEADER_ERROR", "TR_GR_HEADER_PHOTO", "TR_GR_HEADER_CREATED_BY", "TR_GR_HEADER_CREATED_TIMESTAMP", "TR_GR_HEADER_UPDATED_BY", "TR_GR_HEADER_UPDATED_TIMESTAMP", "TR_GR_HEADER_RECIPIENT", "TR_GR_HEADER_IS_CANCELLED", "TR_GR_HEADER_IS_ADJUSTMENT", "TR_GR_HEADER_PRINT_COUNT") FROM stdin;
    public          postgres    false    228   t�      �          0    19298    TR_MANUAL_ADJUSTMENT 
   TABLE DATA             COPY public."TR_MANUAL_ADJUSTMENT" ("TR_MANUAL_ADJUSTMENT_ID", "TR_MANUAL_ADJUSTMENT_GR_HEADER_ID", "TR_MANUAL_ADJUSTMENT_GR_DETAIL_ID", "TR_MANUAL_ADJUSTMENT_QTY_BEFORE", "TR_MANUAL_ADJUSTMENT_QTY_AFTER", "TR_MANUAL_ADJUSTMENT_PHOTO", "TR_MANUAL_ADJUSTMENT_CREATED_BY", "TR_MANUAL_ADJUSTMENT_CREATED_TIMESTAMP", "TR_MANUAL_ADJUSTMENT_UOM", "TR_MANUAL_ADJUSTMENT_NOTES") FROM stdin;
    public          wcs_user    false    230   K�      �          0    19306    TR_PID_DETAIL 
   TABLE DATA             COPY public."TR_PID_DETAIL" ("TR_PID_DETAIL_ID", "TR_PID_DETAIL_HEADER_ID", "TR_PID_DETAIL_LINE_MATERIAL", "TR_PID_DETAIL_MATERIAL_CODE", "TR_PID_DETAIL_MATERIAL_NAME", "TR_PID_DETAIL_MATERIAL_SAP_BATCH", "TR_PID_DETAIL_MATERIAL_UOM", "TR_PID_DETAIL_MATERIAL_MOBILE_QTY") FROM stdin;
    public          wcs_user    false    232   h�      �          0    19312    TR_PID_DETAIL_MATERIAL 
   TABLE DATA             COPY public."TR_PID_DETAIL_MATERIAL" ("TR_PID_DETAIL_MATERIAL_ID", "TR_PID_DETAIL_DETAIL_ID", "TR_PID_DETAIL_HEADER_ID", "TR_PID_DETAIL_GR_DETAIL_ID", "TR_PID_DETAIL_LEFT_QTY", "TR_PID_DETAIL_UPDATED_QTY", "TR_PID_DETAIL_PHOTO", "TR_PID_DETAIL_DIFF") FROM stdin;
    public          wcs_user    false    233   ��      �          0    19319    TR_PID_HEADER 
   TABLE DATA           �  COPY public."TR_PID_HEADER" ("TR_PID_HEADER_ID", "TR_PID_HEADER_SAP_NO", "TR_PID_HEADER_YEAR", "TR_PID_HEADER_STATUS", "TR_PID_HEADER_SAP_CREATED_DATE", "TR_PID_HEADER_SAP_CREATED_BY", "TR_PID_HEADER_PLANT", "TR_PID_HEADER_SLOC", "TR_PID_MOBILE_ALLOW_TO_INPUT", "TR_PID_HEADER_CREATED_BY", "TR_PID_HEADER_CREATED_TIMESTAMP", "TR_PID_HEADER_UPDATED_BY", "TR_PID_HEADER_UPDATED_TIMESTAMP", "TR_PID_HEADER_APPROVAL_STATUS", "TR_PID_HEADER_APPROVAL_BY", "TR_PID_HEADER_APPROVAL_TIMESTAMP", "TR_PID_HEADER_APPROVAL_COUNTER", "TR_PID_HEADER_IS_DELETED", "TR_PID_HEADER_SAP_RETURN_NO", "TR_PID_HEADER_SAP_RETURN_YEAR", "TR_PID_HEADER_SAP_RETURN_ERROR", "TR_PID_HEADER_PHOTO", "TR_PID_HEADER_APPROVAL_NOTES", "TR_PID_POSTING_DATE", "TR_PID_COUNT_DATE") FROM stdin;
    public          wcs_user    false    236   %�      �          0    19327    TR_PO_DETAIL 
   TABLE DATA             COPY public."TR_PO_DETAIL" ("TR_PO_DETAIL_ID", "TR_PO_DETAIL_PO_HEADER_NUMBER", "TR_PO_DETAIL_MATERIAL_LINE_NUM", "TR_PO_DETAIL_MATERIAL_CODE", "TR_PO_DETAIL_MATERIAL_NAME", "TR_PO_DETAIL_MATERIAL_BATCH", "TR_PO_DETAIL_MATERIAL_DESC", "TR_PO_DETAIL_BATCH", "TR_PO_DETAIL_QTY_ORDER", "TR_PO_DETAIL_QTY_DELIV", "TR_PO_DETAIL_UOM", "TR_PO_DETAIL_PLANT_RCV", "TR_PO_DETAIL_SLOC", "TR_PO_DETAIL_FLAG", "TR_PO_DETAIL_CREATED_BY", "TR_PO_DETAIL_CREATED_TIMESTAMP", "TR_PO_DETAIL_UPDATED_BY", "TR_PO_DETAIL_UPDATED_TIMESTAMP") FROM stdin;
    public          postgres    false    238   ��      �          0    19335    TR_PO_HEADER 
   TABLE DATA           �  COPY public."TR_PO_HEADER" ("TR_PO_HEADER_ID", "TR_PO_HEADER_NUMBER", "TR_PO_HEADER_TYPE", "TR_PO_HEADER_STATUS", "TR_PO_HEADER_VENDOR", "TR_PO_HEADER_SUP_PLANT", "TR_PO_HEADER_FLAG", "TR_PO_HEADER_SAP_CREATED_DATE", "TR_PO_HEADER_SAP_CREATED_BY", "TR_PO_HEADER_IS_DELETED", "TR_PO_HEADER_CREATED_BY", "TR_PO_HEADER_CREATED_TIMESTAMP", "TR_PO_HEADER_UPDATED_BY", "TR_PO_HEADER_UPDATED_TIMESTAMP") FROM stdin;
    public          postgres    false    240   �      �          0    19344    TR_TP_DETAIL 
   TABLE DATA             COPY public."TR_TP_DETAIL" ("TR_TP_DETAIL_ID", "TR_TP_DETAIL_TP_HEADER_ID", "TR_TP_DETAIL_MATERIAL_CODE", "TR_TP_DETAIL_MATERIAL_NAME", "TR_TP_DETAIL_SAP_BATCH", "TR_TP_DETAIL_QTY", "TR_TP_DETAIL_UOM", "TR_TP_DETAIL_BASE_QTY", "TR_TP_DETAIL_BASE_UOM", "TR_TP_DETAIL_GI_QTY", "TR_TP_DETAIL_GI_UOM", "TR_TP_DETAIL_SLOC", "TR_TP_DETAIL_GR_RECEIPIENT", "TR_TP_DETAIL_NOTES", "TR_TP_DETAIL_PHOTO", "TR_TP_DETAIL_CREATED_BY", "TR_TP_DETAIL_CREATED_TIMESTAMP", "TR_TP_DETAIL_UPDATED_BY", "TR_TP_DETAIL_UPDATED_TIMESTAMP", "TR_TP_DETAIL_QR_CODE_NUMBER", "TR_TP_DETAIL_MOBILE_QTY", "TR_TP_DETAIL_MOBILE_UOM", "TR_TP_DETAIL_GR_DETAIL_ID", "TR_TP_DETAIL_SLOC_Y21_FROM", "TR_TP_DETAIL_IS_CANCELLED", "TR_TP_DETAIL_Y21_EXP_DATE", "TR_TP_DETAIL_SAPLINE_ID", "TR_TP_DETAIL_Y21_GR_REF") FROM stdin;
    public          postgres    false    242   ��      �          0    19352    TR_TP_HEADER 
   TABLE DATA           W  COPY public."TR_TP_HEADER" ("TR_TP_HEADER_ID", "TR_TP_HEADER_PLANT_CODE", "TR_TP_HEADER_SAP_DOC", "TR_TP_HEADER_PSTG_DATE", "TR_TP_HEADER_DOC_DATE", "TR_TP_HEADER_BOL", "TR_TP_HEADER_TXT", "TR_TP_HEADER_MVT_CODE", "TR_TP_HEADER_SAP_YEAR", "TR_TP_HEADER_STATUS", "TR_TP_HEADER_ERROR", "TR_TP_HEADER_MVT_SAP", "TR_TP_HEADER_NOTES", "TR_TP_HEADER_PHOTO", "TR_TP_HEADER_CREATED_BY", "TR_TP_HEADER_CREATED_TIMESTAMP", "TR_TP_HEADER_UPDATED_BY", "TR_TP_HEADER_UPDATED_TIMESTAMP", "TR_TP_HEADER_MOBILE_IS_SUBMIT", "TR_TP_COST_CENTER_CODE", "TR_TP_GL_ACCOUNT_CODE", "TR_TP_HEADER_IS_CANCELLED") FROM stdin;
    public          postgres    false    244   ��                0    24964    TR_TP_Y21_DETAIL_TEMP 
   TABLE DATA           �  COPY public."TR_TP_Y21_DETAIL_TEMP" ("TR_TP_Y21_DETAIL_TEMP_ID", "TR_TP_Y21_DETAIL_TEMP_MATERIAL_CODE", "TR_TP_Y21_DETAIL_TEMP_MATERIAL_NAME", "TR_TP_Y21_DETAIL_TEMP_SAP_BATCH", "TR_TP_Y21_DETAIL_TEMP_BASE_QTY", "TR_TP_Y21_DETAIL_TEMP_BASE_UOM", "TR_TP_Y21_DETAIL_TEMP_SLOC_FROM", "TR_TP_Y21_DETAIL_TEMP_SLOC_TO", "TR_TP_Y21_DETAIL_TEMP_EXP_DATE", "TR_TP_Y21_DETAIL_TEMP_NOTES", "TR_TP_Y21_DETAIL_TEMP_CREATED_BY", "TR_TP_Y21_DETAIL_TEMP_CREATED_TIMESTAMP") FROM stdin;
    public          wcs_user    false    257   W�      �          0    19362    failed_jobs 
   TABLE DATA           [   COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    public          wcs_user    false    246   t�      �          0    19371 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          wcs_user    false    248   ��      �          0    19376    telescope_entries 
   TABLE DATA           �   COPY public.telescope_entries (sequence, uuid, batch_id, family_hash, should_display_on_index, type, content, created_at) FROM stdin;
    public          wcs_user    false    250   ��      �          0    19385    telescope_entries_tags 
   TABLE DATA           A   COPY public.telescope_entries_tags (entry_uuid, tag) FROM stdin;
    public          wcs_user    false    252   ;�      �          0    19388    telescope_monitoring 
   TABLE DATA           3   COPY public.telescope_monitoring (tag) FROM stdin;
    public          wcs_user    false    253   X�                 0    19391    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          wcs_user    false    254   u�      -           0    0    LG_MATERIAL_LG_MATERIAL_ID_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."LG_MATERIAL_LG_MATERIAL_ID_seq"', 50, true);
          public          wcs_user    false    258            .           0    0    MA_COSTCNTR_MA_COSTCNTR_ID_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."MA_COSTCNTR_MA_COSTCNTR_ID_seq"', 432, true);
          public          postgres    false    201            /           0    0    MA_GLACC_MA_GLACC_ID_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."MA_GLACC_MA_GLACC_ID_seq"', 993, true);
          public          postgres    false    203            0           0    0    MA_MATL_MA_MATL_ID_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."MA_MATL_MA_MATL_ID_seq"', 44, true);
          public          postgres    false    205            1           0    0    MA_MVT_MA_MVT_ID_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."MA_MVT_MA_MVT_ID_seq"', 292, true);
          public          postgres    false    207            2           0    0    MA_PLANT_MA_PLANT_ID_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."MA_PLANT_MA_PLANT_ID_seq"', 18, true);
          public          postgres    false    209            3           0    0    MA_SLOC_MA_SLOC_ID_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."MA_SLOC_MA_SLOC_ID_seq"', 443, true);
          public          postgres    false    211            4           0    0    MA_UOM_MA_UOM_ID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."MA_UOM_MA_UOM_ID_seq"', 38, true);
          public          postgres    false    213            5           0    0    MA_USRACC_MA_USRACC_ID_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."MA_USRACC_MA_USRACC_ID_seq"', 32, true);
          public          postgres    false    215            6           0    0    MA_VENDOR_MA_VENDOR_ID_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."MA_VENDOR_MA_VENDOR_ID_seq"', 6, true);
          public          postgres    false    217            7           0    0 :   TR_CANCELATION_MVT_DETAIL_TR_CANCELATION_MVT_DETAIL_ID_seq    SEQUENCE SET     j   SELECT pg_catalog.setval('public."TR_CANCELATION_MVT_DETAIL_TR_CANCELATION_MVT_DETAIL_ID_seq"', 6, true);
          public          wcs_user    false    260            8           0    0 -   TR_CANCELATION_MVT_TR_CANCELLATION_MVT_ID_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public."TR_CANCELATION_MVT_TR_CANCELLATION_MVT_ID_seq"', 39, true);
          public          postgres    false    219            9           0    0 &   TR_GI_SAPDETAIL_TR_GI_SAPDETAIL_ID_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."TR_GI_SAPDETAIL_TR_GI_SAPDETAIL_ID_seq"', 33, true);
          public          postgres    false    221            :           0    0 &   TR_GI_SAPHEADER_TR_GI_SAPHEADER_ID_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."TR_GI_SAPHEADER_TR_GI_SAPHEADER_ID_seq"', 26, true);
          public          postgres    false    223            ;           0    0 *   TR_GR_DETAIL_LOCK_TR_GR_DETAIL_LOCK_ID_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public."TR_GR_DETAIL_LOCK_TR_GR_DETAIL_LOCK_ID_seq"', 150, true);
          public          wcs_user    false    226            <           0    0     TR_GR_DETAIL_TR_GR_DETAIL_ID_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."TR_GR_DETAIL_TR_GR_DETAIL_ID_seq"', 296, true);
          public          postgres    false    227            =           0    0     TR_GR_HEADER_TR_GR_HEADER_ID_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."TR_GR_HEADER_TR_GR_HEADER_ID_seq"', 93, true);
          public          postgres    false    229            >           0    0 0   TR_MANUAL_ADJUSTMENT_TR_MANUAL_ADJUSTMENT_ID_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public."TR_MANUAL_ADJUSTMENT_TR_MANUAL_ADJUSTMENT_ID_seq"', 2, true);
          public          wcs_user    false    231            ?           0    0 4   TR_PID_DETAIL_MATERIAL_TR_PID_DETAIL_MATERIAL_ID_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('public."TR_PID_DETAIL_MATERIAL_TR_PID_DETAIL_MATERIAL_ID_seq"', 27, true);
          public          wcs_user    false    234            @           0    0 "   TR_PID_DETAIL_TR_PID_DETAIL_ID_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."TR_PID_DETAIL_TR_PID_DETAIL_ID_seq"', 29, true);
          public          wcs_user    false    235            A           0    0 "   TR_PID_HEADER_TR_PID_HEADER_ID_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."TR_PID_HEADER_TR_PID_HEADER_ID_seq"', 22, true);
          public          wcs_user    false    237            B           0    0     TR_PO_DETAIL_TR_PO_DETAIL_ID_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."TR_PO_DETAIL_TR_PO_DETAIL_ID_seq"', 457, true);
          public          postgres    false    239            C           0    0     TR_PO_HEADER_TR_PO_HEADER_ID_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."TR_PO_HEADER_TR_PO_HEADER_ID_seq"', 233, true);
          public          postgres    false    241            D           0    0     TR_TP_DETAIL_TR_TP_DETAIL_ID_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."TR_TP_DETAIL_TR_TP_DETAIL_ID_seq"', 70, true);
          public          postgres    false    243            E           0    0     TR_TP_HEADER_TR_TP_HEADER_ID_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."TR_TP_HEADER_TR_TP_HEADER_ID_seq"', 74, true);
          public          postgres    false    245            F           0    0 2   TR_TP_Y21_DETAIL_TEMP_TR_TP_Y21_DETAIL_TEMP_ID_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public."TR_TP_Y21_DETAIL_TEMP_TR_TP_Y21_DETAIL_TEMP_ID_seq"', 18, true);
          public          wcs_user    false    256            G           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          wcs_user    false    247            H           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 3, true);
          public          wcs_user    false    249            I           0    0    telescope_entries_sequence_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.telescope_entries_sequence_seq', 340130, true);
          public          wcs_user    false    251            J           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          wcs_user    false    255            D           2606    25029    LG_MATERIAL LG_MATERIAL_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."LG_MATERIAL"
    ADD CONSTRAINT "LG_MATERIAL_pkey" PRIMARY KEY ("LG_MATERIAL_ID");
 J   ALTER TABLE ONLY public."LG_MATERIAL" DROP CONSTRAINT "LG_MATERIAL_pkey";
       public            wcs_user    false    259                       2606    20024    MA_COSTCNTR MA_COSTCNTR_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."MA_COSTCNTR"
    ADD CONSTRAINT "MA_COSTCNTR_pkey" PRIMARY KEY ("MA_COSTCNTR_ID");
 J   ALTER TABLE ONLY public."MA_COSTCNTR" DROP CONSTRAINT "MA_COSTCNTR_pkey";
       public            postgres    false    200                       2606    20026    MA_GLACC MA_GLACC_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."MA_GLACC"
    ADD CONSTRAINT "MA_GLACC_pkey" PRIMARY KEY ("MA_GLACC_ID");
 D   ALTER TABLE ONLY public."MA_GLACC" DROP CONSTRAINT "MA_GLACC_pkey";
       public            postgres    false    202                       2606    20028    MA_MATL MA_MATL_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."MA_MATL"
    ADD CONSTRAINT "MA_MATL_pkey" PRIMARY KEY ("MA_MATL_ID");
 B   ALTER TABLE ONLY public."MA_MATL" DROP CONSTRAINT "MA_MATL_pkey";
       public            postgres    false    204                       2606    20030    MA_MVT MA_MVT_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."MA_MVT"
    ADD CONSTRAINT "MA_MVT_pkey" PRIMARY KEY ("MA_MVT_ID");
 @   ALTER TABLE ONLY public."MA_MVT" DROP CONSTRAINT "MA_MVT_pkey";
       public            postgres    false    206            
           2606    20032    MA_PLANT MA_PLANT_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."MA_PLANT"
    ADD CONSTRAINT "MA_PLANT_pkey" PRIMARY KEY ("MA_PLANT_ID");
 D   ALTER TABLE ONLY public."MA_PLANT" DROP CONSTRAINT "MA_PLANT_pkey";
       public            postgres    false    208                       2606    20034    MA_SLOC MA_SLOC_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."MA_SLOC"
    ADD CONSTRAINT "MA_SLOC_pkey" PRIMARY KEY ("MA_SLOC_ID");
 B   ALTER TABLE ONLY public."MA_SLOC" DROP CONSTRAINT "MA_SLOC_pkey";
       public            postgres    false    210                       2606    20036    MA_UOM MA_UOM_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."MA_UOM"
    ADD CONSTRAINT "MA_UOM_pkey" PRIMARY KEY ("MA_UOM_ID");
 @   ALTER TABLE ONLY public."MA_UOM" DROP CONSTRAINT "MA_UOM_pkey";
       public            postgres    false    212                       2606    20038    MA_USRACC MA_USRACC_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."MA_USRACC"
    ADD CONSTRAINT "MA_USRACC_pkey" PRIMARY KEY ("MA_USRACC_ID");
 F   ALTER TABLE ONLY public."MA_USRACC" DROP CONSTRAINT "MA_USRACC_pkey";
       public            postgres    false    214                       2606    20040    MA_VENDOR MA_VENDOR_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."MA_VENDOR"
    ADD CONSTRAINT "MA_VENDOR_pkey" PRIMARY KEY ("MA_VENDOR_ID");
 F   ALTER TABLE ONLY public."MA_VENDOR" DROP CONSTRAINT "MA_VENDOR_pkey";
       public            postgres    false    216            F           2606    27763 8   TR_CANCELATION_MVT_DETAIL TR_CANCELATION_MVT_DETAIL_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."TR_CANCELATION_MVT_DETAIL"
    ADD CONSTRAINT "TR_CANCELATION_MVT_DETAIL_pkey" PRIMARY KEY ("TR_CANCELATION_MVT_DETAIL_ID");
 f   ALTER TABLE ONLY public."TR_CANCELATION_MVT_DETAIL" DROP CONSTRAINT "TR_CANCELATION_MVT_DETAIL_pkey";
       public            wcs_user    false    261                       2606    20042 *   TR_CANCELATION_MVT TR_CANCELATION_MVT_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."TR_CANCELATION_MVT"
    ADD CONSTRAINT "TR_CANCELATION_MVT_pkey" PRIMARY KEY ("TR_CANCELLATION_MVT_ID");
 X   ALTER TABLE ONLY public."TR_CANCELATION_MVT" DROP CONSTRAINT "TR_CANCELATION_MVT_pkey";
       public            postgres    false    218                       2606    20044 $   TR_GI_SAPDETAIL TR_GI_SAPDETAIL_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."TR_GI_SAPDETAIL"
    ADD CONSTRAINT "TR_GI_SAPDETAIL_pkey" PRIMARY KEY ("TR_GI_SAPDETAIL_ID");
 R   ALTER TABLE ONLY public."TR_GI_SAPDETAIL" DROP CONSTRAINT "TR_GI_SAPDETAIL_pkey";
       public            postgres    false    220                       2606    20046 $   TR_GI_SAPHEADER TR_GI_SAPHEADER_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."TR_GI_SAPHEADER"
    ADD CONSTRAINT "TR_GI_SAPHEADER_pkey" PRIMARY KEY ("TR_GI_SAPHEADER_ID");
 R   ALTER TABLE ONLY public."TR_GI_SAPHEADER" DROP CONSTRAINT "TR_GI_SAPHEADER_pkey";
       public            postgres    false    222                       2606    20048 (   TR_GR_DETAIL_LOCK TR_GR_DETAIL_LOCK_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."TR_GR_DETAIL_LOCK"
    ADD CONSTRAINT "TR_GR_DETAIL_LOCK_pkey" PRIMARY KEY ("TR_GR_DETAIL_LOCK_ID");
 V   ALTER TABLE ONLY public."TR_GR_DETAIL_LOCK" DROP CONSTRAINT "TR_GR_DETAIL_LOCK_pkey";
       public            wcs_user    false    225                       2606    20050    TR_GR_DETAIL TR_GR_DETAIL_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."TR_GR_DETAIL"
    ADD CONSTRAINT "TR_GR_DETAIL_pkey" PRIMARY KEY ("TR_GR_DETAIL_ID");
 L   ALTER TABLE ONLY public."TR_GR_DETAIL" DROP CONSTRAINT "TR_GR_DETAIL_pkey";
       public            postgres    false    224                       2606    20052    TR_GR_HEADER TR_GR_HEADER_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."TR_GR_HEADER"
    ADD CONSTRAINT "TR_GR_HEADER_pkey" PRIMARY KEY ("TR_GR_HEADER_ID");
 L   ALTER TABLE ONLY public."TR_GR_HEADER" DROP CONSTRAINT "TR_GR_HEADER_pkey";
       public            postgres    false    228                        2606    20054 .   TR_MANUAL_ADJUSTMENT TR_MANUAL_ADJUSTMENT_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."TR_MANUAL_ADJUSTMENT"
    ADD CONSTRAINT "TR_MANUAL_ADJUSTMENT_pkey" PRIMARY KEY ("TR_MANUAL_ADJUSTMENT_ID");
 \   ALTER TABLE ONLY public."TR_MANUAL_ADJUSTMENT" DROP CONSTRAINT "TR_MANUAL_ADJUSTMENT_pkey";
       public            wcs_user    false    230            $           2606    20056 2   TR_PID_DETAIL_MATERIAL TR_PID_DETAIL_MATERIAL_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."TR_PID_DETAIL_MATERIAL"
    ADD CONSTRAINT "TR_PID_DETAIL_MATERIAL_pkey" PRIMARY KEY ("TR_PID_DETAIL_MATERIAL_ID");
 `   ALTER TABLE ONLY public."TR_PID_DETAIL_MATERIAL" DROP CONSTRAINT "TR_PID_DETAIL_MATERIAL_pkey";
       public            wcs_user    false    233            "           2606    20058     TR_PID_DETAIL TR_PID_DETAIL_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."TR_PID_DETAIL"
    ADD CONSTRAINT "TR_PID_DETAIL_pkey" PRIMARY KEY ("TR_PID_DETAIL_ID");
 N   ALTER TABLE ONLY public."TR_PID_DETAIL" DROP CONSTRAINT "TR_PID_DETAIL_pkey";
       public            wcs_user    false    232            &           2606    20060     TR_PID_HEADER TR_PID_HEADER_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."TR_PID_HEADER"
    ADD CONSTRAINT "TR_PID_HEADER_pkey" PRIMARY KEY ("TR_PID_HEADER_ID");
 N   ALTER TABLE ONLY public."TR_PID_HEADER" DROP CONSTRAINT "TR_PID_HEADER_pkey";
       public            wcs_user    false    236            (           2606    20062    TR_PO_DETAIL TR_PO_DETAIL_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."TR_PO_DETAIL"
    ADD CONSTRAINT "TR_PO_DETAIL_pkey" PRIMARY KEY ("TR_PO_DETAIL_ID");
 L   ALTER TABLE ONLY public."TR_PO_DETAIL" DROP CONSTRAINT "TR_PO_DETAIL_pkey";
       public            postgres    false    238            *           2606    20064    TR_PO_HEADER TR_PO_HEADER_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."TR_PO_HEADER"
    ADD CONSTRAINT "TR_PO_HEADER_pkey" PRIMARY KEY ("TR_PO_HEADER_ID");
 L   ALTER TABLE ONLY public."TR_PO_HEADER" DROP CONSTRAINT "TR_PO_HEADER_pkey";
       public            postgres    false    240            ,           2606    20066    TR_TP_DETAIL TR_TP_DETAIL_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."TR_TP_DETAIL"
    ADD CONSTRAINT "TR_TP_DETAIL_pkey" PRIMARY KEY ("TR_TP_DETAIL_ID");
 L   ALTER TABLE ONLY public."TR_TP_DETAIL" DROP CONSTRAINT "TR_TP_DETAIL_pkey";
       public            postgres    false    242            .           2606    20068    TR_TP_HEADER TR_TP_HEADER_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."TR_TP_HEADER"
    ADD CONSTRAINT "TR_TP_HEADER_pkey" PRIMARY KEY ("TR_TP_HEADER_ID");
 L   ALTER TABLE ONLY public."TR_TP_HEADER" DROP CONSTRAINT "TR_TP_HEADER_pkey";
       public            postgres    false    244            B           2606    24972 0   TR_TP_Y21_DETAIL_TEMP TR_TP_Y21_DETAIL_TEMP_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."TR_TP_Y21_DETAIL_TEMP"
    ADD CONSTRAINT "TR_TP_Y21_DETAIL_TEMP_pkey" PRIMARY KEY ("TR_TP_Y21_DETAIL_TEMP_ID");
 ^   ALTER TABLE ONLY public."TR_TP_Y21_DETAIL_TEMP" DROP CONSTRAINT "TR_TP_Y21_DETAIL_TEMP_pkey";
       public            wcs_user    false    257            0           2606    20070    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            wcs_user    false    246            2           2606    20072    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            wcs_user    false    248            7           2606    20074 (   telescope_entries telescope_entries_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.telescope_entries
    ADD CONSTRAINT telescope_entries_pkey PRIMARY KEY (sequence);
 R   ALTER TABLE ONLY public.telescope_entries DROP CONSTRAINT telescope_entries_pkey;
       public            wcs_user    false    250            :           2606    20076 /   telescope_entries telescope_entries_uuid_unique 
   CONSTRAINT     j   ALTER TABLE ONLY public.telescope_entries
    ADD CONSTRAINT telescope_entries_uuid_unique UNIQUE (uuid);
 Y   ALTER TABLE ONLY public.telescope_entries DROP CONSTRAINT telescope_entries_uuid_unique;
       public            wcs_user    false    250            >           2606    20078    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            wcs_user    false    254            @           2606    20080    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            wcs_user    false    254            3           1259    20081     telescope_entries_batch_id_index    INDEX     b   CREATE INDEX telescope_entries_batch_id_index ON public.telescope_entries USING btree (batch_id);
 4   DROP INDEX public.telescope_entries_batch_id_index;
       public            wcs_user    false    250            4           1259    20082 "   telescope_entries_created_at_index    INDEX     f   CREATE INDEX telescope_entries_created_at_index ON public.telescope_entries USING btree (created_at);
 6   DROP INDEX public.telescope_entries_created_at_index;
       public            wcs_user    false    250            5           1259    20083 #   telescope_entries_family_hash_index    INDEX     h   CREATE INDEX telescope_entries_family_hash_index ON public.telescope_entries USING btree (family_hash);
 7   DROP INDEX public.telescope_entries_family_hash_index;
       public            wcs_user    false    250            ;           1259    20084 +   telescope_entries_tags_entry_uuid_tag_index    INDEX     y   CREATE INDEX telescope_entries_tags_entry_uuid_tag_index ON public.telescope_entries_tags USING btree (entry_uuid, tag);
 ?   DROP INDEX public.telescope_entries_tags_entry_uuid_tag_index;
       public            wcs_user    false    252    252            <           1259    20085     telescope_entries_tags_tag_index    INDEX     b   CREATE INDEX telescope_entries_tags_tag_index ON public.telescope_entries_tags USING btree (tag);
 4   DROP INDEX public.telescope_entries_tags_tag_index;
       public            wcs_user    false    252            8           1259    20086 4   telescope_entries_type_should_display_on_index_index    INDEX     �   CREATE INDEX telescope_entries_type_should_display_on_index_index ON public.telescope_entries USING btree (type, should_display_on_index);
 H   DROP INDEX public.telescope_entries_type_should_display_on_index_index;
       public            wcs_user    false    250    250            G           2606    20087 @   telescope_entries_tags telescope_entries_tags_entry_uuid_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.telescope_entries_tags
    ADD CONSTRAINT telescope_entries_tags_entry_uuid_foreign FOREIGN KEY (entry_uuid) REFERENCES public.telescope_entries(uuid) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.telescope_entries_tags DROP CONSTRAINT telescope_entries_tags_entry_uuid_foreign;
       public          wcs_user    false    252    250    3130               <  x���K��0E��*��黁7ꤳ������ؖl�A	�蚼$]FD�ȴ�_Xܟ߄��}�E<�/Ņg��y�/fH��B�h�9���.�H ��x�V?#�"�s�� �� ��Q�0<���x��K��P�8)�7s�O	�30~HHx"�9A�M��'�x�fE`���px��^�5�<�R���e!-^��D�<zI�l�r@�91|.h/2���: |u�G�+G���gF}�'��7߈�C<�O{��%��E\l��B�9�1~b�6_ك<��1�֔����1u��E0X���y@ĪA�d�].��0��:�-	�̷�Ck��j��򰦎^�	m�T�ċ7�hgE�-��MKd�D����5�sc^l��}٢���ٶ�Uis:��Hhv��Ct�2d���M�Xa���eg?�"�	_X@u�ۦK�QAެ�۶�W���H}׉����Ҷe4|  �I�mzL�q^�庆$2	i���$�I�dS��X�/W����`�p1؛ �>�5���=ͧ5y���-8I�� �0�Y      �   �  x����r۸E�����-��o�<)���������6�(�%���$%�����T�%g 7��Dw�.��O�׻/��n_������rU��S�����O&�១j�͗���˔-[̟��r:[U�r�X&h&�-B�׏���1U+n�U�x�V�ٷå	�ڦ����t�ZL֫�|v��2�6}r��t\��̸2���K�΁ʜ*5w�lڌ�|	������)��m��z�f�`<�:_��� ��E���E��~/N3���ntq4_�7@��l�O�b�Z΂�j9_/��z+��y +a���y5���~-� `%���}���Wu+��^�o`32��f��._�����Jj �3Ď�_G����	6�V�)�c\�b֌��i����pƀm'��&뷷��Y���S-W�E��_�ܖߧo G1����[��Y���ZΞ���r:��K�3V1#7N�X���0�>���v���|��_h��������5_����i�u�OǓ������`ru69���� �z���5��F�&Ow�^�E0��#\"�#B�S��ߧ�*8^T�S�Gp�2>VY�["@+F[1M�����AkFkv�v2���Vm��ӯ_k�/b����<�N�����q��-Z9Ā?��!����8d���0��#���Օ��a�1����vt�ط��r�ގG� ���:�T#C���jS�<��͌�s�����ˊ_a\�q��"n$�-N�qh��)z�ǣ�Ӌ�O�S;΂F%�⭇�� #��y��x��jN��Upr������1P�b���v�u�h���(�$iK�
2 YK��X&��H�ƥ�&�!y-�10��z���,��"{����ԚԊUs�Ҫ�C�0�V�C�0�Z��a�#�j�W���PX�j����1�R��N=�'��\��tdS"��l״gG�Is���x")/��� �<&��k�w��E\�kpI�3�VG\�ZA��Zŵ�dVg���D�ꄫU��괭���s��*���lu���k��D+��ݢ�~�#����5r��L��;Gn���B�I�E�鰽���c3��͸����%���|�� n�\�^��k0��۬�?���y�LǆDͼ������a�s�,0.g\�ƙ��L˜��:<^�/E���\�k�`<��P��޳b�P��l�l�oL�L�|3f�s9>��0���1��2��yT>o\�0V�|Q�,����9w׵����]�K���t���ʌ΢�v�Z-L[�\6I���Zg|��A��*�3�6Q'i��vg�����*{���m�O�밦��y�d
.ߚx꣐��3oLh��im:4�d�=��tCs�f/)��ܞJK�.�̥%�VzФ|(V��g����~�N�Wpvё��W �c>D�1�P�J����㳳���@�@>ݺ>]�ńۍK	 a�+/%��A��@Yr����o?aGR9��g�*�����p�i+����`<t��-�h �bFou+i�n)Q�"k�퐜�	��sZ[�n紤�Y[q���9��^Ҁ����zQ�	����تq;�]��oB^Rn����7!/)�ڃBN+��!O�iq?��&�	�K��U0ʝ�����4��"F�3\�Q�ٍZ�Zs�+gaJ�W��)�c����~,^� �c�Ī��pr.����ZBiȵ�J��Cms��v+@�b��}��Zjշ���OO�vc�p��ڶ�õ�n,��*��B���~O�d�>�n7}\�8�e�p�q^��4ẻ�B��~���0��"Rڒ~�=�S8�q��(_�%g��4��ı����Vӝ4��i���U>��jj��6����^"��a�:$Yr+�M�8>J��&e���~齴/Cg�vlZb���ݤ��~Qk
f9o��X�s�V|�h�\/��pV���"4r��������B�HtY"_>ЉY��	)a�3z$��H��� �1�9��r9��P���&��D,uL�/'HyD���:�����h,2{W��Z�Ǫ��u��J:�0�X	9e�c��=1+c��J�3�m�����"+jl�[d�>�^��e�9~�����rO�E��Y�ٽ��0��A�I�ӹ� �dq\c�r�C��|�� Tg�#A�9[�[��P���J1jx)͌���%Rn���"Y������J�V�F�����_ԕ��ؔ_�.���C�M[A{�����a�I�fE�o�/�Y�c�~l�����\j.}Ξ�_6��$.�	�r5�1șHPΠx+FF�'Hm��;g�X1����Nr������8�9�ݝ��r��JАZ���]���!�g\+����q���Q0�u��v}��<��*�gꂶ(&�]@�*�c���3��4fV�ý��
��?LW�Ω���·�r&y�'L�.:�+:ks]KB���O���g������P�Pݰ����Aqr|v;�/j1�����!��y����� ��ʀ�e��giΌn�#Y�Z1��3x|���E�x�2��!!�)���df�|($���[`�(���`��-N��_H]��?~���-*r��W0ї�p��EEN��q����I�>�"`������>K��w��f�`���������{\�PyB�oV߫�r)%�{� �e���rJNg��iќI(�aCۓrb�������9$��Q���5yc�y�H�3/�>��#��xkN1�?��N�N�|�]��ġ����~('��G������ѩT4����xs�7?�������xr7>�t?��@A�&u�����~|��� �Gb@��S���thD��x�����Dum� ���ϳ�fDa�V�c�X{U����h����G�i�<xr��Z£�Y")Ux?[N�{�p2�x�TC9y���D���J�!�����ͭCqMTpH�@ZG�XNPa�-�0M0�pj�P}�5�I�~�q���N2B�^�	pyB�Z�'����	o�\����D��m�tH4��f)-"Z������Թ !��ӹn ����y�@�I��h ��>���w.�[�Z%;|M�#��,KĈCbt�[2��{�"^�{�H������3�����$-I��Z !�W �Ec�
$X�u�LLF������r
�A����?���w~��}�	��|�7�]�ǋ*v�=I	�z�d��'9:>>v�tb��y��j��q@D���� #�����4� oǙ11�Ǝ=�Ԩ�g�x3R¸]���t�d��9�4����j9�����rU���ED�;8LRD�8L�Dr�7L���o�4��~(Z�R�s;ed�py7�ȉ1ܺ���>���s�T�u��ύ@���+��7\o�x`Ce��lF&��6�|�L���h+2�x�BQ���φAF��N(�,���;vs�w~��_��o��ݼnN��ض�	�ϻ%��p>��B9]\�IN��%�� n?��r�M]*4�ٛBC�:�-���F�Ng�;�F�.{�@4A�/��2z	0! ��nJ\��c�(�o�������eԼ����(L 	׈~p��i�Ł��(ky,�P{4��x����"^B<_�X)��Q e��"BNw�H��i !5'���1���8PF��8��ڕ"JL�~ �(F��ADL�E��ؑ	2��?D��X�p�����t���x��[�ۥ��������̡��      �      x���ۖ�8r��{��/�^��Sbf�S'SRU���Ը�v��U��k�������SҌ���5����CA�SY2�J���ӟW?m���S1��o�[]͋��K3�������O���t���R�kY�kɻF^��';�<�����Ej���o����2�g������Uj/��/���uj��츩��Z�0���(���n+��6A�yW��G�iw�u�K{��5��j���	� ��n�X�1��J1[��u[��b��(�%��(��kVŮ�V�f��%�r>L��˒|��@fI�\S %�$eC���{�<�����O*���m��� �i�P�%�8BY�mf�E9BɌZzE7mS0�˲������T#@�q�g�; ���a�����H��1 ��d�l߶�j�G�ie�������Ţ���*@�ݐk�@�$��ԥ鈴�=m>�D��>�t��
a%�`�|��&B��4$a���9�A����h �Mر�H���8�-H"/ar�T�#	r��H�G�n�� ��!\��0}n>�߹�7��u�9��SU���y)�%9�?�C��A�,��eY�v={b�>����߄��� �����T7tO+t�)[��pr�m���e���,
��ƅ�P��S���tv���~��HKH>�\5>Dx7|��I�'� �#(9�a$��|�#��-�'y^=���R�<F<u������q�V�ݺ_u����[= TA��iKH�y�I�j)������[�_����s������_��^���^����:T��i�șx��#��2l|����TvӁs�%y�������* }��!���T���WcO>�=u�1�J�r0]�S�Q��%�W�-��)���(Ҫ�,�0�:�uO�[;�� '�p�	�K���rRr8�p�)~��S� FDI���	ۯB���Q�x���������A&�����&?�iY
��6_�Ҝ������u�+A^vq��r�ҝS���P���2�a$]I��M�`7g����ӌ�KD�����H�uK�i5'�:y�n����(`��� (,� �$Щ4���ѷ.��{��r$�g�k�'���:Oo4�d���!�2��[����޵%���=ΥT}pfN٧;s�ޡN͖Jy	:�/l���[I,~�2�qW�(F�W��n�UN(�w��x7V�M����%�u�fmw��G�� ��ⲏ�Q0>dv��v�DN�5�V<�l�Ӫ�W SSt��<����o�l�]��%Y"�cO�:�p@^vwTu�6����wN��ǎ-#�9g@��rb�3FQ�f뽏��jW��jQ@ӱuס�B�&��xH�k�u1�7�m���m�"ϰbV-��� .)^�����&>�!��������F��z/!�+	)�K�)���7R ��\�	B^�%��>#�^BA�)B^�%�Lޣ�g��v�6�]=/vsh�蒷(v�8�@�%/Q�Kb�bQ��S�b���8cw�P�
LY��5T�Q���U��B���(Kc��)\��L� ����c^�}8Gi�k����]��#β�+���#�8���>,�gu�GOO?�n={/6k��Gq��#X"�#B���]x0��c�-�F,sׁc�8�S�1��syĐ�@EƼu`�*	e	b��i�"$!F���D�R4QF����Fń����`��9b�� c�Xg" ��" Y�XC" )�(�" Y�X�" Y�X�NpM,w���y�|�A�o����E H�L�)Ag�N�,qq!`�&!�5	@�$�Y$ �� dibE�b�2	@�%�x$ YY�����,�5.�ňu&�	1.�%�5$�"�2.���5.��$����u��Z���e�������Y����I�q���%&����DL�2�>)^ b6TI��`яG��w���cK3��O��'�8E�囂��BB�=r�ϔ"�>�r�TR��N	:D<dm�Y�|��u�S�T3�,��!f�����%䀃�#�8�����%��%T᪳��]�Ҝ8�����|Ȯ[ŏo�Cf�������c�V�~ֈM�	7���=kV�yVPf�8��9�8�O�9�H��ȇl�r�X���<p 8�p�Gp��"�هP� b�U�-�(�Pb�W�KƔ�ȫ�!���i�
H����YB�cRKv�#�Z�֠-��[ۤ���F�3�MB�/l��1{ۤ̓u�z�V��b�^�KR�ty0��b���I���
4�"��ty0O���KB=�g(p��jSy�_ͻi�41=)�٤���N��%��|-@���1"�ǒ����(@Ƅ��Ӥ\&@�t��2O^m��o����T�Q�g��f���C1*sz���f��+T`�bJT�,�i[/߫U�}��wX̊�<+���#И�0��P�Oчm��Ѯ�%�HLs��u�޽�i׳z!DB�Aړ��4ᤃ���/$��KE������������z�:^j"�Q�vS���LJ�29@�����Z�5HvDF�QY�4Cum;Q,�I���ih�����0���� �U�jW���f[�W+(9͙$�����C��m7u��\c�sΒS�j�ώ�S}~m-�����%O҃g���<_� 3g�h��]4^M\��O�������ç��9�<1JD��&�1�8w�yy����Γ��@���Σ�GλC��G?�V��Pe�������i��0lb$��ۢ�j&G~����v=�����*�Rϙ�N��y�n���0��7��q�B��G2�8�����v^�
����(еPL�1�~�Y��ϛ_uw���k��kuxL+��9��(B溬@�!&*+�l�|YV�*�}EOP���'�ƈ6QO�p�{��� �{��d��Ta�(=Ir"��'I��Fk��ȫ؈WM�y�;���I�'踈��0���d�D�H�D������@�$����&�'��?�a=A��\�\�ȴ�D���a=ah]���@ #�%=�4N��z �?z�!��
�2S�W�7�#�1���%�ñٷ�	���6��C1{��vc�>�I0~	��1���R�.�K0q�gXl�Yt�c�0V̡��;�i��f�V ���:7���#p�s��u9" �O�(7��#�z=��q��k�PTE��(�VS�K>T]�⩘Um�����c�"S�&�ղ�~)���HO��{��@�Z��^*//u[G�v����c��d'=��f�e:h̢�|*p
�(��L1H� N�3�t ���Ա���j^�ʭ$�EE�<E�����S�W���<��Ggm�OP�&汶��l����������8k-�F��F��\I��� F�Ki�h���dJb�
De��1�as��2�r�$0�&ʒh���drb�
De��1�A�1QJ�)�i�]H�D�,0��w]`����J�OE�i���_6�j�wK��l�^�Β�9���"�`I�\\`a�Ȓ������/N�ެ����|#��|�F S-��/�5 h��~!��1�I�B^b��ȓ�����a�'��	��sY� �\C�q� -��E�)]G.y��S��(&wJ�����'@r�㲝����@L��Gǅ0g4pX�)q����H��Ef�>������vW,�b�>{�7���Y�;1lw�~�۷���y�%2jY�ޚ�	��o6X���s�=If҇���!%ԢOI��Un��oWM�,�K�K���>ibj���c�Z�k��E�9�c2gROl"����g�{��1q}~��]w�ƈv6�(��+��o���0��"����h�V�gu���,�4�_��ͺ{��z�T�%���,���ɘ�<T���X<�)F,9Ⱥ/�)N|u�/�f�V����� �>��qRIb�#֤�K�_���P�J��6����g��jhz���E!�<]O?v�4#�y��iNh���ӂx�5t:�Z�k�s�ץM���hM��Z    �'�MAY"�D�d<�i�)s 9M��X
4�)	w�Z(���b�X���8��TN����h�����G�*M�K#
���Gde�����b�#ܥ�h�$�������I�zS�U��vzd���0����E0l<mr�.���_�����_�A��@7��'���aP��hN�n�/ا��B�o�_��ַ	&.�@���`�b��4��3�<^����}R�g,o�sx���_��(��Ǘ_� �h����s�=Ku�(��{��K�W�B�a���B�gȺ��A����GWw��vWl?mw���#����挾3�ޏ�T��uP�m"d��] ��<[��t�r�}�8d�#�?�T =�I� �
#2$�;hJL�����]��u��nnp�h�"��I4y�.����i�doN��#����=c�YI�A��1�2Fl�1#3Nl	��ˬ$K�$F��1:^���Ib�r9�d�؀I"3Ir71���S�m��0ɔ;�$��L2�B7ɲS���ctw�l^p�Ȇ�͓Oʑy|��S�s�݄�$On'G���ˬ$���;�L���[I�	x�� �pP8�{h	8�@�{��F�D��7zIQ��A`��ǞxQ���Wz����+�)�,����?��Ϝ�:�P4�!|�S��L�����ۺ?�����"�HN�F:l
P\��L����4�#���cp��XӬ���\s�8R2"�!��/�tY���`b֮?U�ݧ��x�xr����|�W��()%1�3��-�R�҃�ە,������&���5����0]JC$;Dz���Ew�����)�%�b�W�H�2)g֎H�žN�}XW0�����*�;q�I��ÿ�D��(P��LIL�Q�"�EwDy�x�K�lC�n��,� �D������?��f�)ԛaS��z���~��[|�3`�_͈~�@ '�ug ����3�\I��� ��pg ٚؗ���a� r-q�9���&&9�`5%ѯ8d�� �s�+�{�@�$� [��3�4M4�@�!�4g ����?a�d��L�%�L����\&YN�G,�� ޣ�IV��3`[_����e����g,�lr6���.����������BrD��ꦷ1{p�t%A�hw��G�cD�/"��Ξv�!8N��b�z�l𜠦�i����Il�$!�oY4�3~�����cgv��#�iJ(
4�r�-U5�^��(L�X��Qs	�aG�����';S�-7��\8aNo%��#Q�N"��;�;hy�r����t��j^�4��;�g�wQw ���0`.�0�������\a�5�A+Q�����;(xEw P���@�"�e݁<M���q�pWt-�u2�3�k���*&yMw ���L@� �e��<I��2q�pWd5�e2�v�������w*�ظ����'��Zn��]�����-��3p	��,��;�ǈ'x[��z�c������
!&����3c�O����3�<I<��Q�"�|�s'߰�%�����V\�$ȳ�C,	R��ȫύE������s�<F<�Aj����j�ծ��t�j�57�e*'��FcEN�;~��)<'�]�����g���GL�9E��U"8��k��z�z=ϐf�a���IC��πEq2e�yY^��`�<�d	y�Ӑ�J�UJ����װ��R��Êbe�^�"�7 TJ����bJM�z�T�׌�n߆\|��b�^�>��vY<W�w����镜S̼~�U��?�;蘀
�%
�`ۧ������E�SC�S��>�	�>��Q\Oy^��/�m�{(����=�۷��c�F��G��q~�
�d���p~���Mj�I��o��6NI�����6ZI�bЛ��,�c��ŠO��V&�YzVda�a8��k+)[zYdach��Š�E6�&�]^�)�IzO֧Y͉[b�4���/� LI�鎻+Tpl����+Tl�m�T�|���w��v�B�����_��K���/_~կ���?~��������`��U�f�}�#|����E����'�#����o�{�m���챊T2Α(�럛ݿ#Ey����?��o�����E�����������/�քV���!�8��0��*��#
��:: +d�#k`Hvm]må^�v�����W����tqњ�;N4Ě Uuܚ Kk�5AzvyњX�r�h�5A�!�5A�%�k���E�R����W�{uY�_�NúdW�`H�%'�����ȏ�u�G�8���i�j�k���,]*OA�4���Q��u�/�k��:���h�� $k��J�"�C��%jh( i�	<������ W24�M��v�1��a�w5�	�W�UW�X�+o�m�i�u[|����L���<�o�M���ͼ^��fq��������N��#�I�R��)���֫=p`�ë��`K>���=萙��1fԐ���ξ1��!�.�Y}cL�!��5�#�ݾ�Z����ZE�5�I>� mgC0@�Đ̒"	/�͛m8G�&�#[&hM�$(� ��HZb��YT$Q
9HmکS2td�_�.���E���+�X:��Ej%p�����e)��f�Y�tv����z�t��m�o>H�=�u��;�rq*�6bB
;b�B��}�a��Y��W-������
n��ŀ�D���^��!gQ��hY����.��vZ�w��.?,F��K�	%Ql��&:�61�R�
�t��K3k:�w�u���3���"�y�gal�'{w�y���^!�uii�e��e^�(��b�DG��>"�X��'QTI�web?#�ꗀ�jn���	"o|�ծ� 5�8zB�V��4��H�w�m�{Cf!�����R	��3�Wi�v�55͒�K��L_]z�{C�PƏ��d��V��w�����"���J��7WhMre�|�XT�~��#�v�Cb%�d�&���ziN��gB{A�E�r�����˧����g�DKK���W�˺]"M5M�۬����3���&�>V\c�b�b%Tpi��m��r]�^�*��Ve�[� S�#^���aǀzQ�v~}���A����<����n����FP�P� u�e��H��X���R줍"�<@�]ُ�td�l���ϣw?��./6����-�,��/~9�8��ȥ/`d�ԟ.|�-#*?��jI�	*N���i��)�6M����?t2٨���{nU�	*ΠӬj%�P0�%�9�O	h6�S���&��o`��$(?�|� d2b�cf����Ǡ~	M�3������eWص��I�L�&2Ԕ���͵K~�^e��=i�w���n���Ч��f^����}�l=�C?��n�}�]={[�M�7ɦFw���?��?{S�U�4�)KB�1�v#�)�~ӫH��?ԋE8�{�m���L�	�O0���ZΔI��m�tm���N.�a�Ρ(v��*e��|Y�vǴ��.�_@Ui�����o�],\�f�v�nA�!N:�[��;P�ֻ�l��ٔQ�,�����P��z�����z����l +�t��EZ2j�rQ�U��ㄈWHxӾ֫�$J�2K����g���f��j�m�͢�ċ3W���(�A���dPPDm/7ݠ��?u�	��J�N���C�K��p�FP�P| ��0K$1@�|��j\sĒ,X�<)[Ҿ����F+�IQw��eX�e�ጀ�̤>�|�H�OK�e����]���~�xҼ>�ԗ��e1H�=�1�>-��������ٗ�@`R}�����������u>؈�E7����N�)p.y7�������������Hn�LR�� �=���xEք��>H��c>��X[@���Lg���T!�a".=��i�l7�
\ۙ��89��;&��O%��n}���j�C�G�̄�h�類=�g�c�0�fbh/M8;��c��c����ATCTwQ!OKĹ�ͼ���1�+�#�`�螚9pxl$9�א�
�$�`�\�i���I���㨛�7d%*�S�bơI~ �	  ��$�@���AwI2�G���%u��	s�1sI����<�z��R��y��]�+�AW���x���v1��:U�z��0��H�\aP�й�hR8Txgi�B�n~e��o���v+o��wO��!7����vg�S�$D��s��u���ь r�Y��pe4'����~�R� V�c�����I��qX��\5�9�\fb���q�5���hC���L��D����hG���L�)	3���F����é�me&�B�Tfb�̄;�L�!]�Zfb)��2cH�w��Cr���Ę$���L�-����LhϨ�e&�r�L+31VP�[�L������XE���L�Մ�\fblҫx�a�����:��qX�le~��~����ڮZ��~�+��c�c�M�������u�r9q�(w�~�ޫvW�TAT9F��G�]��`I`5~^���k$�S�c�Y�^M+ML3�|_�������+r�q��v��E���S�c��W�[�Yb�Qv��m�{�0]f��X{YAP[&�����A�er"}k��-9!�1*p�� �=n�L�`Ns���M�,�{�5 TEԣTl��-%y�=�**�Y�WHF������9P#-!���`�#\Q��Y���`0#0??��~���qc��g%gS�E?ʵ�%�-S�{D�2M��0Γn������n������[^��bXˣG�Z��zՇИ0DQ�9�N�E~���w�֥�Q�9}S���0��X�D���\�t��I��E1�[���7�X�t��I�&G�8��5BI�����	�{Vp"Do����7+����-<�B����!��,<�B��ө<_�z��Z�c�M!;�So����j��%�����Y3�<�Mzc����� �/��Ti �Ub��˻����ȇ��z��)�SwAk�h�����5�H1M*���r`�m�- 6�1�*�1�b��� ���f���SwC��U�����D��v�/.��mjoS�3+R�2�j������7�93�1�*r����7�Ŭ��m���9W�s����s�ϸ�/����"�N��j�^�9s��W�T����*T �uoV�/1>|^9M��[E.�İ9����69PZyo�5f�.	̇���kF��*��N�qpmH6>z��A�$�B%ߐ�GHS�1��������1u�VF�z�
!Y"���pq���K4�cJ�3΄�a�g�)�1����TK��0z�z��tMP�q�I y::<@p���A/Z�`C&8����ɵ
6d�#��Z���rS��I�H��V���o�L�U�!�O�U�!��V�`C�7"n�U�!���U��tyk�����~���� I��RnHB������8m��n�V���g��ОS�;��ęV�`����V+X�rs��u�(�U+Xg5�Z��$Fqs��9Bܒ3teI�{r��L���\�	uo���`�]��JI�;� �LVK_�R�1�KWBޑ�t�%Σӗ�L�׏M_:V�,}y��1��^���l���/$�1�9,vL��Ŏ)��zX�&��3Ľ��ر�>�&YsD��I�Hp���7\��8��w\��8'�mW$8�����x:.	sc����\p��k��L!E��] ��O:n	�{��R>�#���ND9�$�=i]'��J�8��tkƉ(pz��b'$�b�����	E��M�HZ�99��o�$�����,������]8�䓻�L�$��aޔIN&P�fޝ��(|F��Hwfޝ�ĺ'��d��~L������D`b���I�i�w��NZ�����78�u[Bĩ$s{_>�)F�>@�ʭ	N���@��O�~�_�)�{'����m>Ɔ�eJR#�$��w�,pu�����Le�"�#�����|�)C���睊��E57U19��="t)�A6 ���=H�y��N�MHHڃ�A�@n� ҞS{qڇ`�	#��� yp�?�%��w*�E��Һ��ӭ��z���qW�T�?�[=�#�>�ڳ����� *lQ�����a"/������݉�U[���u��c&��Bn�������h�$Z��ew���3[�H��3���&�aN�������$���,}��iL�w�V����{h�Ү��3�OFޙW��%ɍ�5���^��0ud��s��w�KC�~�?<��PglD$��-�f�}dB��3.RTޙ���V��el��^�j�6���2�q�~�N���f�;�W��\��'�&��Ghiق�$��~���Q#Iݞ�v��]���@��J�;�	�5?�4O��X��(�s���_�}�im��z���w_~�۷����o�>�[�����o_���K�2pH�?�~Z.��]�^��w��욼�R�߾����߾�:ú��0���[,?���������]��q�_~����O"��������b�������ӟ�����O�      �   t  x���[o�0��ͯ���CN�L�ȡJ!��p�*�$`��_?;Z�n�$�"���k���JGig�jp��vik��B�������R"{#A�۷�������x��D�0����$| �0�T��i�Fi(T��iP� ���e�+���r�bpJ�&���\���O~����(d0��(�||����1��U����9�����*S��''�`<Q K( 9�������<�!�H�M"�`�$a�.$ <�j�Ȍ���L���zQHs�?�I�봯����@�͜���b����ř�(�����1km<i�)/.�q5��rv���^z�?��¸�AD0, �k))��|���(]�YQw�'�������m�r��Q�=
N@�K�XS�9NG(�˂�g ���*�|��_29�G0�q�U~�p�0�"��@�8���S�� ��y?e)��f�TSݕ������8A�f�WJ��~��Fe��i����76������n�~+�[��'��l�1���Y=u����gj�Ѹ��n?4����x�UY]M���d�\�Ӥ2�P�΍�&�hb��i�cs���y��9�r}x^�;��zY�5������/U9��      �   �
  x����n۸F�է�T#�J�E�����9�I�S��EVMl�#�	���m)��&�H�zyo���&E�E,a����m����ʪ�Q���m���'9~-u�$	���/~�����yQ7��+��&��>�ݢ��U�kF�����|������T#y��)K��f�4���p���0`���~�[T�q���_�Xi�	I���T6ݮ�zFe	`�L��t����&^,��ΘA��J�[��ظ����id
�p�oYb`hŝ�����'^������Њ���w��a�5溉݀�=rV�/�i����j�-%0��²H����chd�v	Ӻ n�4�]����nM���}��~=QW6���!����*�ܛ�OҺx��F�$�a����Q	y�����{��-Jr�#Ҽ�C��â����G�0�h��Ge��1�k��Jʄ��#�1qq�֛�E�D
���".�Q���(�怎�L"���G���� آ���%��`�>�G�T;�czM5��aԔi+�c�t,���m��f�(�26NՏہ��P��6�>0�ƕ/�P�>��n��L��'�y��6�����U��ak
�.�8V���4i���9pX��wS�[?�7����6i�����[Ì#}�-s��� �0��ư ���ۯ��d�.(zj�F�Q>`���06��8r���$��90cs==��8�al��u��s`�~֓�s`cX}�b�L��r����%�,3�v9�c�ک,��v�z��;�$h0���	ӆ`�v���f��7]�S"C0n;�&�͠Ӹ���_p9��B.n�<��<X�ŭ[,�rŰYU[�T���5��X��&aVob�ƥ4��z�MX*��j�D��� �*��D6d��B]�,���,Ǌ;�!��Jڎ��E���U(���.�A�
9��b���),��r���d�&.ū^��MP����[��q�1�������<��v03��ڌ�����2�b�ߐ�f[X��;���46y�n����@�,e�Ŭ4=�p�@C]���(��=2�3_D��H��8y��l
K5ٯ�ٿ1���%�{��.�+a�1���%���2Ԕ��T�a{&���ᔲ-C)������zI��Ae����x^5��j�Ŏ��7%eF`�Yb�4ƶ����!����,]���.>�P�,����Rz���QT�%�f�_%r�L
�j�\�w��7Q-N�U�ЍVզFg�a�Q�Tt�ր�-^>���?>�<d@3Ne�N>��u7�f��@{f�RW��*%��c�rF�����P�{����6�}��ลѐ�[����D�ؐK����{L��=i�Eɫ\��A*�����W�R�ߗ1��΢!��67��ݙ�lh��(�G��h�f����k
�ܜ�EA)%f�h�Js��,�HJ�#�GH	������a�z�{m����L�'L�a,l�,�n�!��cs��ReYP�%$�=������}���0Ii�b/}g���ւQJ�f���{�pK+D���R�ȥ�>E��aYz��s����2��.�Φ�������^�+8`��'S&�( U������Aî�����N�d�0�l:1�>���yм`�}��.P�������ݙ���!�ځ����!��L���D�6US�O[t���@�>b:?�NСυ��~��Хϡ�?,��]Q>���k�$�~m�U�P�Nb_�?��I�kG��h���v˶�����#���� �	>�<�M��Y��Uӄ�t�=��p��2a=�&���2y�d�&�`���d,s�Ġˮ�{\�vW4���΁a��d����I�/	äkg_R�p�s��q+�#�[�8z�=6�r���[��Ed9�2���q+����-�s�Z#�r�e҉�����F;��!!�Y�X�ʊ� �fu4e����t���-GIa�U��a��n�����܎r&3I-=��M�/�5a�'�94�`)�Ҝ��h���ٜ	�����4p��L98,mx�R�������*83~������6����W׌�yuiK���Хu��G*s.m���r���(n\j��R6\�-�����-"��˱�9��h����ϣŗ�'!h���IZ|���(-��~���Z|�z�Z|��[D���P���eGM�X���C���)D���c��N� 
&|3��� *�R����G��K|a�P��]���*+�qi[��%�Լ�w�r���J��,j�4����A�(e���n^V��C|����iwJ���ݜ؎k�b�z�Rpr��A'�fJ�I�'�gWJ�5�b�,��b���e��>4�B�r��͛�]U�M\<<>�2�Z(]F��{?j�Y셁�4���^���s\��\.���y0�&�7f�z������ۛb��2/�\q���qҐ�?��I� >��B�蛘��tE� >��Bj��X٧��VuO9�ız�&��E���2�w(ħ��efI�����{��֔������N�)N��Y������ۖv��g�4��,��g:�~z�s�6��<KNs�a3ˆ��G�Q�ܙ��O�]�W�o�Æ�^&�a�;����^J^���3@$�^������4���ݻw��/<      �   �  x��UKo�0>�b�E*��;�ʖGa+�.{��4n�J�v�_���T�R[)R�x<��36���1~xH�%��8��؊�t��N�#�*r�p��"�Y��e�u��ȄzĈ^�#�y�w-g��� ;��(p��u!��Z����-҃̽`�Yp7��a���"�l�#��Y!���@A��˵��r�0�n�i����p��`��ô���c���l��`��u?�`GR�Db�j#70�q\p�X���7δ�vd�Ǜ~踁�6;�[ٗV攻:�v&��ǝK�ޢ�t�A-�>x�A;���:̌����� �RG��R�L����X&�@��zAt��jv��Yn���ڧ�y�MMzN�X��foF�qj!��Q����u,3��4�PZ*p,x��� �`�.v��ەs蔴�ҙ�D�?��/�΂��)7/{|(bA ���S��Z?�x�����5 �ߛu���r.���j!��}����x�I�*�]Tk��h�Ʉ���H]�p�.�.%Γ%�����Ŵ�P�D`j�ֱPƠ���v��.?	ăo$Z� J�lD������n$�o�w�V�x�I >\U i�܈ʥ-E�I@��X�q�s��b>�3|?
�}�ۧ�Я@ճ�VTt�����h4��C�      �   �  x���Ko�6F��_Q�`f1�Mf�r���F܁�A65v��񣂲�LϯR�R���#���q"JE��hڶ�����a����ח��S#[)�ц��5ߵ�w�l~�1��AF��S����n.��>��V�� �^g7��l~~�Սn��뷻�������2�|z6����?�Ϸ;����웫�9������|}�^���&D������?g������h���gyq�����c�h"�a��O��t�f� �������d��p����8� TEJѫ���F�|�׷�����3B�i������0i���_Zt	�K�P>Qrri4$T�.- �_R%���v��n_14���3�z>�q�<���/��Ċ��\�� �J(_���n��aq�<�n
G�f�=[2�4���:����i)5�a2�%��߷����|Г���R��������50,<�s`R&rr���J���a���]�q~��;)��0n>��`�%�䆂�8���MU4�4Ϧ����O�x��8���Ċ��/ۿPª�����Au���D}f���M�hmdE;Q����Z�w�������� �����H�Owu��o�����K,Vww@��FZ��O�bFDv�� X�M��^c��I���i6Φ��������=V8Ө~�����˼�o���؈�)
��5�Xn�~�R	9�oT?!���D�H�
�m����m����Q&��ۻ��x� \Fܜ���Z�mZ/ �jZ�u�p�v~���i�q:�m}p��r����ڮ�v�7n|�T�ܿ� ��갿{{x�Ga�6N��Zôh���7�,ߟ���ek�x�}yP����?ǣ���Ӎ��v���? �i�q������:;��^�Wo�?�q�#�k|�v� �����<_���ӿ����o ���S�oOO_�=	���]Q��% �.��9����xT�,��T�$oȓEK��o�7�����R�>���Bwg߾���Q)�Y
~��T�IN��c*�2�3�T���B��sG&%Us����&Ӌ�a�u�p`�4�;�> �w\�8�]t���,�6�Y�+�vT��c�����S���},Y���-��hI'�U-��j�f��E�˖t^R�"Ǖ�+�]:���E�����E�2��5T��,X�R3�+?�|)ZG1�jbD��rD�9"�@A2<"$�hU�0�$"�?�|�}�\?�b���-ȑގ�"H�Д$F�*���(�72���TU���GGys@UŉHU����Gx�{�be���@U�BJ
���CBHE)��w~��5�D�1&��B�	U��RN�����rB�s���P� �@)�rJ\�h0{d��KXA)ѳhJ(I)1�+hJ��*%�Fz�.H��{�RbxD8%��yJ�!�D�7�L�OI�s���ْ�P�RBפ�n)%2[SJ	]�i�\�#�UQJ躔H��)%�8�J	]��ҝ��<�y�S�y^�n�>޻��;��ԁ$�'��fu��|�� ��:��*z,yp�$�ǒqM��Y��U7����aВ�u�ލ#�g��)�'ś*ś@�7��-)��(�
R�)W���xs���q���oJo5)��(�R�)U���xS�x�H�T�֓�M��m śrŻ�o�︔7U�w\ʛ:�;.�M����f�xlV;��M����N��x3���F�u��l�`8����0�%��7z0��wS�w�ջ�ӻ�
�V��so��5z�\��r�{���iq��\��R�{��m��W�T�+x[����-�{�
���=po�����uz\��*���m��W�v�whN���D����̗�=�L�����l�~���=��vR�c8�ﶯ�1��w�W�Ƶ�-��̻���2��;��2�»
;˼��,�.�;-�o.�w�]��eޅwv�y��Y�]xWag�w�]��eޅwUv�y��Y�]xWe��b�u�ux�\�&��@�C��RJz"L���K�O(\M�ȴ��O�:�/�n(��7�A2����?S�.���'=X``|z�O��'�O�]e�)~=�KL��h7Y�@���a���N0����_�`?�v����	t�����G�WX�tOw�/��ٞlxD8�R�z
�!XjM�L� ;�X ,7��� ˭�&�roz�a�w{��������#��R��� �u5�q�S��� K-������ش�O@}U���u1��
2�H��pԊ2�O2�5i�Wj=5�'��:�KZ�c���w�u?�:�{Һ�Z�@Z���f[Һ/�z�eO5Y8���3�Jzc�c�c ��}��� �4�-��o����w�2ܽ+����(���'X���{zK,����#��Oo�`�k���n/��~X8	N�J�s8��i��RG���0\��c6���g)KB�%�(GB^\dc���4���·B|e�5����
��@A	NW ,)~Be�xE�������'Ey���W��v��+L���W���=�{ʯ!��#}��ZzC�/��?���T^��Mk��'�g�W)���Y�U
�_]�Z�C˰y�2,XZ��/Â�e��a��2l~R�t�� ��h%6/\��M��X�+��2��LT+i%6�X��V�J,��Q5���U+1�Z�q���W�Q���s>\��B��t^�S-��p:�+��?����wS���>K�Ea�`��9�ui��Rҥ�/HC%�KB�h�ѧ4������q�����s��a��%�g�<���!s�s���`��1���;ɳ��t��������bv����{.ݤ�����͟	�I2%�_a�'��ܯ0<"�dJr��ƒLI�WX�$���M�$�+,JcLr�¢&��+dֺ�~�EM�)�W�0~T�WX�Ř�~�#��ܯ���1��
��4Rܯ0��i��_aqL#lN*�Wȣ<+�x��
��(�ܯ0�K�Hs��bE��_a1�~�EN�~�E��~�C�Ds�²�Κ��v�ܯ�����~�e���+,O켾F2�p�²�Ά��5v6ܯ�,���~�e���+,K�l�_aYgg��
�r;�WX����[���"��k�e��-w/�n��xy�:8j�1^N���c��Ժ��e��-�/�ZG�=�˱�A�{��Y�渕l��b�c�,պ��z����vדxVZw����Ѻ3��U�֝%��N�=MSΑ�W�Zw����Ѻ��U��}KZ_�h����T�^��WuZ����*׺פ�U��=�cUeg���X����G?VG;cs��?V;�<�X�*���jUg�Ѿ�n�#��c��Ĺ�j��b�c�ʚ1�Z��9p�պ�΁{��v�c���s��u���Ow�|�ev�-�X���[�ZW�Y��c�.��n��j]ag�r�պ�κ��u��u�=V�b;�{��Uv�i����J휺Q��A��SG���^`�Ԓ��y]gg���g���Zh����Z���u��u�__W�Y��u��u�`_�Y��u���/=oj�LzLcv��;��#�v֒?ɷ)���o�mN�<�:O� ߦ�Β�ȷ����O�mJ�,��|�;K�(ߦ�Ί�ʷ������m�����|�:;+~7bSeg��Λ:;+Cv���ɴͮ�<;�xGv�T�9��';o���y3�36zݒ�7c;�� ;o��A�_�d͂�";o
��˷>|�?u��+      �     x��սN�0��ٹ
n t~���Z	�J5�];����9=�w�������r:����K�q]�?ߗ$$�H}�TvD;�t~�$&jBQ�]!"DS��.�j����"��f���$b6V�8���[hp);��l/ms轷��_@U��:	��Ĺ;C��u�����N	�[^���lh,>QG�'̛�/�Q(��C��KMG0U��R��q�1�����҆jG�K�I��T���i,��w��M6��)f2nf37u3e�MF�����4M7=��P      �   O   x�36��+-�HL��,N,�+(p(N,�,�/��K���400�4��!Cad`d�k`	D
�VVFP`����� ?�{      �     x��ѱn�0��<Ž@+c -َ�%��"���x@T*	萷�Y��XN�����/_�8U��j<��9W�4`d!KŊ~ ;��Ёqw���m�=�O7@7������nq+ܗ����¸�vI�F����4M�|���Ƅ�)5�d���v�ԁX��>�U9S�R'�9��/�����	��l,NC�6*^��A�2��ҬP�)��Q�JŞ���5Hq���n�v)���G��!mQ�\i0~�YD%6j{}���`      �   H  x����n!���S�V�e�5�4�X�顉��B�M̢M|�B�T��i�!˟03��%E!�@�*|U�JJ(|�F��h��/��|�F�E\��4Z+$N!���K�d�����R��O�?�$Iy�8��7q�Z=�N%���[���5G�s޷oF����Z�<�yc�qm�I�xܸ���ǰ+�!�C�!F�` 	�I<�2�r�2�bR��I�Br&�#E�|�g$�$"�C����i�d��$�N��3��aD�T�m�ע<�"+N�T���1�����+�����9צӵ
S�m���j��O��a��.�\d���E�\p��         0   x�Ǳ  ��=w��.�?Q��I�&^��x�R�XW�K�ސ��
V      �      x������ � �      �      x������ � �      �   w  x����N�H������S{���!�$�B�7^ʈ�L������$�%�������X�l�F@ ��o��j��V�� �=n�A���e}F��zW9p\�Yp~���_�u���2��G�������{:�loC�1�.FW?*<u��Hr.��*���qa��[�S����Є&�	��yR�c4�ڿ�<�41�6m2���1wȬm�ݬ�7�����z�����=l��݀��[K��-��.�\�
O�X�b�s��ЅF���$IU�I�_��Ǚuo�WR��m��� ��-K��ο��=F�fU8b��t� *H,�#,+2��<�v���nu�?|�߭v������F�!t���qN?�17c��OS-3��~�U0s���T�u8��v�:F{�����0��D7��b����»�?��O�|��$���xe�I
��7Gn)���'ĭ?klwE�j�݉��ϚD��l����l��6:�2/d���I4��\�Z�C�H�%v�&J4�K�~]�ޒA��v{��c��tj�p~�}�r�p=�\f�f����L!� ���Q!LUb�ƙ׹,쌍է	iCL��y�pL(s� N�uE2w�U�?�D�q�ݚ��:PA#���C�(4Lh5HنY~�v\����p$[ϾMA-4���S��!�	hr̲b���b�<��:����p��j���r�f���Yj���X�x/�끛i����@�.�p)��1#��$�fT+��~�:-�҉��ǟ��1�ϒ������HGA��|�T�Xu4ݺ$)M��_ %R'�> ��u�����˫�js}k�c ]���y�	pӌB-���8��$���M]�]���(nv`��˱��!�	�I=��d�!'�Ef�D��:.�����e���y4�B�2-\�eM'u����ڞl{�` ���]�sM�:�muz��h�u}�(���}���D;;���J��E�U	;![+Z[��\,Tiv,uժR"�����g=�zP#�f���_��#Rm0�a�vu�lX�5.�g�5�
ks�c�̊w�y�����k�����p{e�cȼH��a�N�J�%��l��U`�5�Gf	�YB�1�q�tЕ�J� i���z=�x�����@Ԯ�      �      x������ � �      �   �  x����n�0Ư��p���vb�w]��UT�]T�Y��J*����mǀ�X��G981�|>_����^ t=E�P�tD��r4�f�^�Ƴ�t�n�֫�M���}hV՟r����k\���^,�M�V�=nW�^�E[55>;;Cwy���'ʌ�3�c�?̛'��-y2��ō�OʺP�p;��C���r\�`q[��_��1E�b|�$��~a�|�nC �p�bS�a���u+d�=}�Y,�ri	2��!SF.��M޲%���G��z���_b���b�X+!
2��@���c
��� �y��\y��������@a�٬t����]6���x�����go9;�.,䊒��d�z�˪�:K%�ӅR�Jb�����}�Tf��q�wJEd(��[�̸&̽Y9�5+�ެ/y5f�G�e*��Ws�u��h����.a_����Ԑ���6S��6[j�0�ڮ_�&�.�T�"�m(8�6�:E�@ɏT��-���N1�2� �nRG�(Δ
_p�t�L�fO����`�K\!?$oP(,�gQ ��Ls��)������m�AE{�u�Zd�'��r�2@�M�ѦC���6�5��^͝l�D���m#H�B-�Y�y��W3�����M��������U�1̀��;�iA���{Z���{�?�>b(��-��w��_�����2���'��y�$�`[      �      x������ � �      �   s   x����� ��]T`8�H̩?��C1&�}�c'��@�ߘ�&��4��j�|L1�y�'���J��L�Ee`��)��5��|Ɗ럜([�d��5ƺR�j�dRC]      �   *   x�32�42�4��47洰�435 Q�1~�@W� }�Y      �   �   x����
�0���S�*I\����v�Va�=���D��i	��i�"��l��	.��Xj*`W�}��\� ʣ� �¹i�6��2r�#�p|(>͸���	���:}�2
�HG%���.�,T��]�P�ߨ�7�����x�YUߟ�kS�u�<ǯ�Z�;�� j�(��km�!      �     x����r�0F����	:�v���$���@�������	X��-�ͦ��d��Y���L�����pcTszת{�6o��y}�6�m��=�_�*ըf�i������'��'�j$RO4�{��_��~}Z�w���I�D�M$�F1r��|�<���u���J�����<�Ǐ�5)��u�n޶�������V����	����M�oR�E���b�z�JEJB�v����/�JB9%{�@�y���]W�������=_��;`(V=M%��B��,V=�g2I��f�g�[폯;�G�~��cYd��)E��q����@"���b���1�%ˊ��a�տ86�@M�X�_��d�b�l�ap��ͤn^����Q��阔22Mq�F!�r&�4�q,���V;8��ظW�N��5�h����H;��LU��Th2��Jea���#'�"v�튮.�[��cm���,7ͭQ�]�tUo���{�����|�Ml=k���\�Z��I+��v�x�N6�a�S��,S-R�jX�`bs}�㦵l<r��.���N>9��U��%�"�j�����Bj݌��`	:�3'�����ld�;}��������9�/2�	z�	!"���A�����O��KB2� �#�~���ƫ�XM�.z`��J�\�d�crd�#lq�lĵ�����@�����=Mݬ�?l�"s��1:�g���7�27�|�6v�^R�W�m�S�Fh���gJ��\=
��ek��n��M��lY�m<[��,�E���$�M�]�vi6+V�c�b>�,�;)J�E���s�å|(9�P�HBe|(�آr>��6��.v*��n:�|�:��r��y�~Ѱ:0�_5��E�W�5(aX=8A9��R�fX=(@1���b�ՃM�2��!Sܰz�x)��ADV�"V�Y.(��֠�+���(jX!XΰF�7�`�Dk�?Q�F�Oް��|)�
gaI�
w#D+ܐ�2�pE�;+\�4�pMBҰ�E	Q�
w%�+\���
�&�+\�2��"�++�X�ܲZ�HJ��eNW41Z���p3��ҹ7�M5��{����;n�!�@{q�*|�gՊ��>%�.�?��}E]x?fD]8kwᬭ�g��]8k/��Yy�pÑ�4��1�[��;�Ɲ���C�Vw�-r!��ٕ�@�3uF��S�I׈�'33#i�)l?.�J�֦hiuޛ�i��˘� ��V+JW�r3O9i�y.,Km.�)��f������5H* ��#�+��bl�>>��,������R��OOO� ~�˿      �   �  x���Kn�0�r�\ ��%y��t�EZ`�`0����?F�ôcֲv���Ф��Q���8�����zS�7��U��2��N�NG�c߿����O������0�݂�t�l*�s~߀�d{iۑ���lp��';Vl�mlk��@����`�y�0���:�����&y^�S2��<�lVʴ5��j^+�θ��=Ȯ��1�e�ʴ/�eV��&Ӷ�Y�}�D{�_�h�Tu$�:�M2Ү��Dc[?��ţ�MS�c�6���s��.3�z���k�eГmjv㉊H����Zw �O����z`$;�ꞝ}mvl�5��V����<i�f��߰�����1�Ӻ�q��H��;�J�&t���N$��I��"鏷�H���(��x�ҟ��`>(���%/�@��e#�,y�
$K^vɒ��@��eH��D�%oG�d��I Y���n�����J�;���a�6"i���ȍ�۴���.�~��]'Ӗ�Y��YF���A$��vI�D<g�E<o�H��m#��yۊ$x����m��Y�[�%��{���[����T�$��\��jy��0Ua�w�Ɖ�tZ���t��.���M���/�ŋ]Α����R5�t���>8�}�w��&Uӝ��f�:lJ9�u{�#ٌ�����jC���;Rfd�?Ko2@��~�3;��L����t�=�;��&�z��ȴt���[�_�G�}~�l6�Z�+.      �   �  x����n�8������CR�]�Ⱥލ�qz�I��]g�����!-ɔD�j����<|�5��52��݆����~�Kn�7���ǻ�z���0�V����5\�����L��K�K!�0Ժ� Kͱ���DZ��sY�-��pb�Њi��ю	�����2�ib� �x�h�R &\f�g��UUK��U����D/e���ݧ���z�ޮ�5�ZG��˪�����"?9�P�e)�H�U��[}ei�g�~�g ��ݨ�$2�qiM:�B��=���7�mA���,L(��c&��`����"S�50��~w�I��м��-n�β<�_��s�ɫC���������X=%�~���ڌ�3C�+��:8�0��э�*!5q &)R��m�=�1��)�Ű�߆�7�t	:���fB�D��͔���r�Y��\�ܐk���}��1��\����(���L���,�iUu���������$S�n�@�ǵ�� S��:RC/�9f\w��%[R1/��>W�@�pʭW��(�E�!�T.	�p������q���t$!�hԸ�		�x���z
�F��q�O8��2�9qd����j��^_��T{���k"�� ��ppڻ�:��*�����6�)�K�DQ���$p�����N�ڥu�D��,�1 M���by�)�li��t�Hc���$�R�|�Gy5�nǴ��n��L��U\Zj�'�p�dd�%;�o��GB[�q,�Y�{�`��(^��{�%G���J�SIf%x;�3�t�L�i~)��k�F����K�EI�`�!��%���\_O��s���=�
��!]49~��#�s����}9J!T�2\=��ǺG�2N���W7�p�����d��l�<𲬻U^�sil��Y	O�Wymv�����ܕy���!�&�r�>�z�*�J��eL,��-�'��ˇ�b�?к��      �   �  x��Wݎ�:�O����o�v��#��ծzQio-�B��j߾�@cB[
&�����ó� @"� � ����M�>9���-�ç����C��>/�E�x熂e�I.ؒ#�m[~I2�9)J�2�E��V��\%��1�D��d�d �l
�p�gvV,�wS�����=�`!�!�ܽ����V�P������2G��V�+{���~��2�M�{l����ݻ����x4��)�h�	hXN�p��p��$i�Ïq���	Z���>(��(Ng}�=En����@*��@ܟ�)o�#�q2��� Gf1NvuM#�1� GĎ BG�z�Q�Q�ۇ(Z���-J0�ঔ��~8\ym\Ƭ�Ǹx��� �W]W�D=��/½ �;\3�"�6�x�1��"��A��g
��2_���9W,Ӌ�⃮�"�O�J�P��G�i�R<����Ƈ!�@�E��q��q�a�#�G�q���6ɯ�#�e�x;���Ǎ��N����_�c:/Nf����U�إ��G�.7u���t[�v��L����ǺN�m�r���"̗�����{[)��꼷[%�K_j5&�sR��=�R�v�j�%�6O/���M�-�WN!��׀i�Y�9�F���W�m�y��E����UHHf����B\�'�n��
�)�*VO�{C����(J0"�!Y�\N�B �j��ˢY���6���w{��ݜ�$:5���)6*���~�%Q*͊N����F����Hu�ؑ_�@23}�Ө(w0q��Ű~�v���7w7���ٻ}���$�|�k<�cԿщK`g�z���|`hi�s�t���d��Ý%
y�jK6�˘����v�:站��9czg��W����k6B N�����d���V�            x������ � �      �      x������ � �      �   ^   x�]�A
� D�z��[��K0�MPH���#7R�[�7���b �>���L�-�J�}��"�00�x<K�٢���ZL����+��4}��y�,.      �      x��ys㸵����,W��M^��}�T�>Z�dڢ(S��r&�$�-[�<����T��;�� i{�wf2��-�g�l8 @M�e���cV:0���Պ�X��@s���T�bɵ�m}ɱ�K��Wl3�+��I��-�F��?-���S:���_����4.Ƴ�ѧ��/�?O�>���x�����?�������c:��I���{駟���]ռ���WͰz?��@�K���t�+����OW?�~��G�F���=h����M:O���b����^�긿�j��LG�߹��ˏ���8��$�|�U���d�|��:�<������O?��k2�>??�?o��W;���-yx�����t���Y�/K棫��(�||�y �d<�#8�Io�8T��f8fb��ȶ��$#}���������f���&Y�~�?����O���Y�(��(�4�!�H��l�0͊n������bh�2JC����\��v�j�]k�����k^�JT�����6ꥳ>}Z���d|�J�/CVe���l.�m]V
|[)�V
��շG�P��m�?�V�e�H��v*o`���l�L�n�옩���PG�	&�(r�!J+I�d`�&'�q]�P�-4崢;�������i�;���+j��V��V��!�D��H���ʾ�4�W�*N*��� 1�H���ۺ��!ب���V"����JFDfe�^�'Q�B���Kq���*��{A�`D8�
eT�ˎ魖�͎F另�i�4���PFj9��RSG�SKU��qlY��va�,p?������\��TSU�G��:N�A�y�d��d���e6=��}M����c��u:�z����?&#���dq���<}�=͇)��o��O����[L"����`���\��d��A-�����d���	1����3`
_���WCP���C@_���|��/��d8�=M���} T�|��V�V���˺��A��ˑ݆�l��C���&������#�O�w�����������i>�����Cmى98-�����m=@f�+�V��Q1R-�m����z�&_ɼ�*�~��N�!M��T�k�z���h�*�B�Wj�z6[>��6�~ڰ��1�����Ү+Fb&��j�i��7�l�WG����{KԶ���14+��ȕ<C�t+կea}�SH������� �G��������4/�"8R�M���X���f6\Ë3�M��d�NV��KR��~:Y,�W�_y$l�>�.��S������O?��Ѧ����3�F~�x4����<%f���I�wWO����١���3SM� �_2-A��������x>[�?g�D:и�|���7���x2I@�GY���ݳ�G�K S������.}#�������"5�3h�Ma�)����z�~D� �,*} |2��S�`*��0ɳ�o�g������'���G���zI4�u|������_�?��}�^���$�~y�/�oM��n�C:;bl��NA� s�ʗ���i�^O�)>H�
���������'�-ĳ��6��3��KӇJ2]:��nL�~���&Y\͞�������(𷩩�>w�z%ϼ�?����o�w��q��t�rٌ�&�Ńy٘��ow����������fpқ������Q�춦���۽�G�b:�#��}�ں���E4�ޏ�a��s���j�h��j]��;�Jo1���[�m%ݻVԕ����ᏼ�Lv̖����4�u�&��}w����qt�
һ��ɝS������/.���~r�ޜD��߻�s=zq�Ǟь�Y=]�/�q8��/㻗�}�����&����wA����[�6�m]���ƹ���K�7�n���[��-x��l\N��}��"������&�T�/��wi�̓��d�_�ގN��?�?���Jt&?|N��Q���=�@� 3�[�<�vG��^y�4?�/�0�oz9�'�����}�:����q԰�5x���oQ��7�=�[j�$m��/�Z���ӟ�ڱz��D#�7�?�ñm�7����oÆ���Zt����K�1R��{��dљ^~��4��ԋ�P�(��gZ}:|�ۖ��"�?׃Ftf2t�֭��@���K�vh\^D��~�\���s��{����n�������Fx᫗���lI�y�2�����)5i%��Y'��tX�NÛ�(�B�h6|"������g�r��,Ǵ�g����ƨ�l>�2��|L�|�?�ѿ���}2KFYĤ���������l�|�j1�K����֐��d�c5���G��;�V��ө7\<��A����y�u<{�b��|�D��D72��h6-�3��3��p?Ѵ��ƯJA:J��q��X��4����\����".Q��Y�xX}|?@�s�қ��aB��^�G$}���aVp��HD2�,o~J�L�(�j�{N����>���*�_)ꎭ|��,}�C�}����#�v��׉ݠ��P��T�Dk�YNZ*�FW�vxu�5/��?}�Lh�:a�]��}�0�d*-�^7H:��J�r�i1J�:�#�
c��ED�[�e莹�i "�|��-�¯�������܀|/���Hr�n��͎۾:v��IF�)2Z�O=�`)����Ϗݎ�iE!f_��Jh^=f6^	��Q��ݚ�j\��n+ބ��o5�Wn�v�(z![W˽���W5�(57W���?h\�GK%Q�(:D�Ui�pxE�(+	6�be�P��0��r�#��q���H��I3(��m��T�/]}�E�|�|��s���D��^*�2��:^���rfl�����*��^䵪��u��.|�lz��Z���7����{����M~����8K�q��n��#��Y㓬�_�E�%�,	�?\��H~;�jξ�㬪��8[���"��F���x5�U6�*5 "�s+�"î";̸��A�=:�N�Q��SJ�U�r1��XHe|�~�A���t�Ve�O
�'P,��B������|ҭw�8�D ����/�R������W�����:����c�����Ԇ��S3��iW���ة�5�<pᒓ|M�th0o;Qz��S5~��ɚ�OE9a�gX�ȯ��Y:r�t!�#'�P0rZ�f?r��*�Y9T��8r���)6m7JG���:Qz�ȩS���f�$��#��FN��f���b��N�����I���cAs[j�a��p+hRZo�MSc���>h*�\���i��&5�<p���Ѡ�}����.h���P�ܗ|��i��e�Y=���#�F��e"&��p�TJ���"�����DLj,<�[��P�TV��2b"��<�*=���.��^&\����D�z�7�(��e�Y<l��� a�`s{'��l+h����a��!�U�(6�;��o dZ"!S+�D*��3d"�Rk�?d�y �RQ����Z^���Ϻm�S"�4J�̩��LM���L0W���}�~�����6�lU/�g�ﺜ���M�?�>E��1�0��:�Ş2w��5���'�\��&�A�,�#����@駞����7��J?��2$R���'P�RK�e� �_�T�d��f}:\�y�2�T���=r��~�!L��8s�@��u2;��8�A=����`��;�#�v0������r~�-���;e��vv:�#xcm<��� C��t�29*މ �ߥ�� �<�'S)ʏYH��!�/��8,��?��S2/���M�/�����f�H��9بT��'�;�B"f�l���d�0��,�󜦋����n���D0l�������BWĖ������)�r��(
�^���-|�VJ�����U�����<�A��B��/��?���8Q��x���R�g����(&�v2I�l������$�?D(,���u�L$w�vC*He�\:M�y}���B<S���.y|L���2�h�')�!��pV�x�4��}l��O��!�)�b�.!���A���5��u!�)B�QT"Lq�iN�Ƌ'f�s�(@��׀ ��
�Et��).K��.%҂	<a��ÛM�2    ڱpq��Ѹ
&ւ0��*��L�8�cO:�<��M�8k��ϋ��+���	(�n����AUYbg�*0����m�'^v뢲��=���� �e�AՊL�B0�F�A2b�'�Dn�#�(��0$=\�WP�y�8�c⊨����(� .P\�T��菓ErϤ�<�ƍ���;�W �3I��R����|=+C� �/Hq%@�h��;)���m2�O�lf1}�0�
�׈��J�x�ڹ�6��ݼ-a9���˲3l����c{qܗ�n�d�5Z[�ӶR=�X�U^{R��h���w����k�Z�����v�^p춘�0y��=s;�)J�ەnt�(vY����gnZ0�q��]�P`J.��a�#�J�6�^T��gO��6s�n��oI1 :~̱}�n����t؇��@�{�>��
]�`�g�qՕd�We���$d�h��#)���4ɶ@|���� I�H����b��Yl��5>��9@s�W=��<}RߗT�"E�e�A�v��k�k%(�a�6h��������2��kD����H'uS�NZ��T�gL�"vr��4K�3Q�X�X��dk��|�k^vd[v��O��c:�GUm>��-dG|�D
/����>
�} �ޱ)�w'�c��9����K���BU��
'0(�����j���H�5H�*�iWd��	%��DA�~T�Kr�bhYy�ɔ�����[n�x^M2�g�fڼ������öeʦn��1�9����@�(��W$�L�vjD��
&���N�ע5͆�E�È]U�� lF�5�b��rl"�#+b�Q#��R�* Lôx6��}�T*�f����\�Cf��,�e�᮲����C4A��q��=��^)��ڶ�;���3��Y�if,�2�C�a4"9(Sj��,=�F��
��[W�D����ad��S����>�v��w�B26�{)��o�r�84 �
I��84��8\N�^�%y>*�ej�	8�b�&G��@�L�2�i"���(���dЊm��Y���&�gC��h[S�8��$��9�
�������'��YK�P9�0̙*��TȬ����U� /s�2g�8|����aV�8�S�C���N�t����<����p�BF���r7��U,��Ğa���4U,¨K����p��o�z%;Ni�0 ۜU ��Ff- /+������/�l���Y��%qVZ��Y��H���A��T˲)ٱu[�T���i)��D5[,vH�/�̼t9�1���l���;!�q86�}���29�&U$��W�����ҀtY35��"k��1Y�D6�MJ���w�l,/˺�Ŋc���pH_C�,�ɐtۚ���v�b�W��TGu$>��_0���p4��s�'gKA&�"(ܷ"��'���l(������Y!Ip��*Ϙ����ə�l��:�Aɜ^,;1��p�C���E�)� _�%�Þ�5��q��f(�3ķ�S�$��\��_�����Iz,+�	
�>�Yk5�l\���o�����jMύ|殒�8��W͹=p��
�:_���<LS�؋ZnS�$)`l����[��鐃�R�k�fk{�J���d,��6���yId��4���
X���f�:��f�DZx}]iq�5}����>��O����>r��d��Gv���� ��l�A����đ_������f��uۄ���*0辑���^�$�u�y5���h�}#ql͠ϫP�*z�����3���[=��ea]�t�;~�w�>��`z��bF7+r#�\T�#�"Tt����(4��)������5��=�f��&���͓�a�Lj���l
-M\S܆�kO�T���V'����Z�r(��#Z���p��2 -9� *ٿY���̍g��fr|��|����I|k�3D-�O�:�>NP�Ί�IX�\O�\��ڹ$�s�j璄��%1N!�3#O�Swp����aSJ����j�nДR;uo����>U���+#	{;���v.@�۹$o�2���K�v�>y����"g$a�sI<�s�j���e��KV;��TQ��6� W�I�0���q,�zc=HŊ�q'!u��đk�-;�����I�MJ��
)���%��Vo�"AJ��\ ~�y�Ƈ�M��v�f��4@��yU��e�pf�>Rݭ�[�3s+�"]"�JN�X/R�t@�(���P��	(��Pa�e(+�(*$tB��#�3��tIZ�8��fA��s4�}����P{�~Jt��eq�
�R��(�iغ���a�����������0��6���X&�a�� ���@,�Ӱ�bY���6]?`=	v,k��vlٖ-A��
��ȹ�e[����b˶l�yK�xQGj�-�������[��`��^_����~�8�ć�[A��T��& ���} b� ����j$�߫
����]?��F�z>A��XbC6�����),�e��~=�n>\�5!�\�q�؈���U���:�A�����&cI��v m�z�6X+:�E���x�=j��?��cI��l�&�c) E>|�����br��A�"���6k;
�^�	�{��2.��lz���g2����Nx�e#5°�d:6;�r;m7��o�����T�fyR�����"`3�qg�[A�#c���)�Ȇ�m��a�0�RanӍ����;ҙ�bmTgP�F2\��E��!��� dn��X�
�yb���������?/6�Y�=vk�Jv�5��Ȃ�rҌE]�BX�ge�D�����'7$sG���+���E�����Y9�`�N���#Y�4�� ��jyxè�Xu4ٕ�T��z��V�,�KBGZ��)K*אM�oֺUn���e����)��"��K];��8��0�ѳ�@��������&I���.��"Ib�4���u(�n�݄i�	dˤ&�mx���@�Y���Hxa�XҐ��B���#>��qq,��z�q�Ժ��D-�y��Kc^oA���*�Д� z-M9�WӼ�!ˁ{�Z�1���q�%c�[6q��bW qY��A<��gA�e:-�aY�X҂�ܲ�� .��qY�� 6Y[[?X�N.�*��nۓ�y@�b�Nh��<[���������a>��%�t+֛X�X
E6�(V�0��AG��B��%�0~Mj�O$ƥ,v�d�=~����;�i�_�aa'Mv��'�-�IOr��u���.��!��Tu#������oa'Lb��yui�,��ns�IKok^���7�t:��@��2mw�,�nha��}����,�`>�g(c�1T{Yk=��"[1��f�wcħѬ(�O���a�&)1�ֻ�'lӎ�V5<�u�����X����1q1b��ňS����B�ĥ5&>QԠ8 ����b��6;4(.F̠�1��b
�UȠ����%���``P�L�>;4(.F̠�1��b
�UȠ����%��]���>�����:����M�h���QPI�؋�<RIl�C* �$���z��ou���lQ���Fj0p[�H�!�cK)B�ql�#��+�[�mJ�)��­K�� �44���R�'�m���2?14[w�u&�j������YV��{�^���%",�2�2[�]��!n}�y#��t[���M����q�oֈ�;qԭ����%��^d�����-p���f�,9��"������/[�Ҋ�u��|�R����[�?��b)��B�ͮ�^�XRhIEF�u�-k�])��}��+��I��	ID���5�@�,r�be�,�\6/`�|���Y<+��X2��[���Q3.#oZZ\V޴-�B�R��9�j���yU�]^[$ԪH��>t%D��"%K�P~|P�"�}R�x�"%JK���TUOܨ���.I�]�������&�Hb�E��ȟ�X�W�A~&�Gz�D)�+ �n��/���
|pw��J�D��>���R�U^�0j�Ui�Q��Ta�¬r
C    V�~{�#��9�B@���
ᰄ�&Rs* 
5GRM��x�FO���,��2!�4>	�P�G�&�%��v�xD�p4�9����yD.KX�r�yD�� r	�\��#�I�b�����
��T�&g:�m[�Z�֡��|�ޫd�����^�܆�:�������� ���Ô9z�#Œ9z�Œ9zUŲO�n��Hdr��gJ��]������l!==�#6J�CL�i�:Iq
�#�M(/�$iڲV�ԫ��������OLj*�(�:�N�R=e�*������|��g�`�n��0��!f�'��fHt:�@�Jȑ�{?J!�rx&��f"�PA�Ȟl^0[P����v!%#[��-7dSa�ƹ�m%*�[�T���L��&3��a7������no!s��DU>�:K�_���׳���MG��3:���la�E�]0�J8	��c��i2[b1uLnk�96"Bfv)-���R�W��x�.��{s�^q�?���g<�X ��J�_�����1��q�މ��۾T�9x�881�BL�_�����CߌC˯D<).�Ge���\�u9��Z�����^��o������i�{ͱ13����F^��u�uQN��jr.��.L5�~�_���x���¾ی�R��ѐp�C[_�y쵼:�槜��F�9�?�$d'j�II�T��%��03�"�P{�V�bw��d�i��p;a�������[�9�y�!2��Yr���N~�����<��"�AjI�&��%\a+�^�
	:�YL4�8/'cW%a��ub>��#�E��O+��|��S�Ye�Oq�N���mb� ���aͯ�����"��Na���P���
�>�X����B�ϥ�6}.���sY�L�K}��s�hz,b��$�D�c����¦�%�2}.���si�M�K.`�\V)��R_e�::�z���d�Kx���	r�+����	r��$<�]0t��Lz�_�����X�������B����]#9�f�Tv�GΡ_q�:߹D`׎��AS�b�9��Q;��ؓ�;�a�۰˚�Y�i6�it��ý|������>����T��,r�K�Z�'b�+���ьñ�9�q"�)r�I���'�:|�@ܞ��hF��>%��l�G@��G팝+[��ng\\1;���W�θ�"vƅ�3.�kg}��;1���&�θ�bv���3.���qiE�+fg\��8���3v�j�')��qq�쌋+fg\\!;�Ҋ�V�θ8���	6�������F�>E�Y���S7脝�;c��P{��l��:(=����Tlh����^�ޙ��,���Ӳ�(����riş�Ϥ9|�'f\:A籣�M�Q	ri%$�a2�Ơ?1'�􉹴O�f:�H�躑ۊ=OZ���|��&��E�/8��3xl{v�\�G��m}��<�n�9 */kk����h7_�G�6N�ā�L�=�m�����^�(Tͮ"�̓2M�@i��Jh��2
�ÐR
ʴL��:�s�n��Wiv-5�V�{Q ��3�#^���g_D� 5�]8�o4�m�2�n�=C��3��A���D��[�^O
'��8[�]s�N��4Y�Q^�cU�,�Ӽl��9z�C��6-��B�<a�Gb���9_SH�ȥ���e��"�~K
GFȹ*��F�9�2$�ި$�ސ�T[oH���:UWrѝ-������h�4�Ff�L;@���0�zDj�9L�F��e��[g�?Z�L&�t�J��4]H����qq�NIS���ܶ;�^���7N��s���p:'�����'F�jΣ��ëy��a'�P����c����8��%��'������`�n�.�{���l
��J���R��oC��SU�h9��:�L�J;�_�I|����`n'�^�ډ9�dl�� �q��Y%��e
K�Kz�9l����`��JH���"��
)��*r��V��Kv~�D��$�;1d�������� v� FĆ���������⎧3N��.��_HwB��E��R*�fCQQp��Dq"�U�]�L;�A�����	`؋�D�ŗ0�ZF�l(2���>7�#���	��y'^���Vux(K��B^E�H��H�)�#?��>��E��)���*6��y=��j�M�ղ"���+��pܧ�tf�^��	]�'Z��)+:��/����lv�	:��-���N���jq7b�c�HZ��
3wl�!C��-8$����C��j~'[�g�dIp՞#Cġ�l)".��`���=.I���A������@
�$K�ɵ��\�A�dj���{A�H��'c���#��W^��w�����^@�_�D��z. ȫV�z�}�]Ny`�s[57b��I�a8�Pe�XAV�����A�E��mu�/�l�+���n�~L6�V��u�9
��V��#���!�I��@�\��q�Vm�TL=��7a<ŧvR��a�`l�&oG����NuHn�^0�c�o�SL�'ʠ�w����f�q�:�=���AC����ݔf��*��)�f��g�40�v��Wr �T3�#.�ٞj�y��҂�G�q`�:�Pg|�&Ьq-�,#w[}r���؆M�?*�2r�4s�4�cHn!�uBT,� ����"O����)s��4��l�+ץ0)��)�:�Sh���z솈����=���Бg�ue�V�䝁�j �#�q��A�O7���L��ŗ�r �6�#O2���i�5�j�	��O0�t�b\����D{�$|�}��=Z��^)p��D� ��� �Wi2�X��9<J�-\js�t�e�C�qit�e��=\]l��6� �U�Cn�f��N��6RH�:�mq���=��&DT�]��W���k�_��M�����iC�]$d!��m�5ڻ�IS�Iy� �H?0�"������4��,�ލR�t��_l�dw�Ÿ�8��3��e5%!z�8� �ݫ!p�0�Ʌ	�����n͏Y7��m���^���������ث���	!�����v���� �
���K������m2�CR�9!o�a���p�SI� =���V7`���ri�A�v�`u��f��_�ρQ_Q��#B���h�`%�q$��̏\�����r���A�K�
��y�Nq)�[+^^�r�a5l3\_�P`^E����!$=w�Q�C���!�9��ݎ��MwY�ε|YNٺۏ�@f1�-@d쩻Վ�MO�Fш�{�$e��5)�!5J�n�&j��~��/�:ݨz-� s5@��/�9�G��/�(9�:쒸V���ɏ:d:�9���=�`��l,}��~U����ߩBD����`��-��ɲ< n��d�����O�^��=sl2xm-��/�e����rE��-m�@���][�h�Ϋ0)��QH�x����#oq'm��W�\]�3{���ԁ �ĝ:���Ӎrկ�/�Xsj~��tY�]���L�S��ۉ������t9+��ҽ�^��l-�ۇ4�N'�r�����@����;vc���c�&*�FK�d���АT3��_Ö{s �������aA7�~�gE|a���,�̉�7Ż��ŕ��k�̎+6�Xu�+1�O��3�Tg8�p�@��C\��"�O@\i�"f�u�'j�j��,��y��Z�J��=W:T�ރ�%C5���p�"b�D�\�����K�F3j<�H�[w�:l�i"��*bLcߊ.bP�ߊ2Pd�v�^���x��9�:�o��� ����zwa(��3�?I�oa�t9�����kt��N�gp���w���NEe=C7�M}+�0&o����Q�0&o��R�0&oZ�0&oZ�0&�.�Y������19���19�Յ1&^�)Xc�E��1&^�Y�0��4م1&^�)Zc╘1&^~Y�,�Ƙم,o����^���S^��`f�� O��t	��ҧ���zc�؝#���d����f�ht�T��8�ڍ.�37�]>�)(��%P��n$��+�w��a#d]���h^D�    U�3WLC4��Ϛ0YiUN�zI_N�8���}��]����L,�d/X>=��I��X_���Fb�����Ȋ�X�]([v�7m�� ���͆��ا�Ie7�Isd�!���U���i����	 *�(e��xhds�W�&�啸��ۼz��r��o�}P�`%
%��s�[�;�W�;zP�H�mz���U��6�A�-!!��Z�Zn7盖����s_0�iz��<uI@H�'^>�C^Q>D�ky�o��������ƅnr֫nrcn,�@FgȘΖ�Ym�3��*T?����v5������7��#d�+V(��^](�sޠP&'��P0ؽ��`6�h�/�&T��F�-�eS_W��b�"�@9�-⏆�@����4lټ�5}�����"�Vm� �yL�Ѱeuw�T6�~j�I�8��-�7�3�L��,�^xWȝ#l �n�lE���1Kٴ"�=�%L¤�>6�J[����K?�?zn��5N[��g�V�F���Qm�b���ή\��^7�a�����[=s�eb�:u����:�U���~��Ci�Qƚ�k�6����rFɾ;y��Z�)�۩�2�b����ы�E ~��Z��E([��A�e�!��2��I s��� Q2�(S͚㸧����#z��M�+˓,6�6P��1ԭ�"���C`A�Ƣ��Z_�2����E����, 0/f���^S�#^U�3J���_W�C���M���M���ҵ ��oP��^Q�h�����݌f��hF'Ќfk�f�����{�Z /�/P`�U��Z /����Zz�Z /�/V`�e��Z /�ۭ��Z=��:��+�[G0�)�"��9�-��sT���������N��C̉o���_���S�c�������!�ط�&#G
^������s#+�e�cs�-���,��7^�ͩ�[�%��l|��K]���-yqB���'��' ��"��C^��h�W߽Օ9�l�
i�M�J��W������Vt5g�z#�f� ����8r�[p�Wp����2�4V!����@&��(Hv�1^32+H�g��.�A��b[�9��[�9���s�k��	I)_S4�c�� ����� ���U9��� �O�m�C��'!�>a�5̸�l@ ��a ou|� s �E>k �A�$I���M
Rɑ�	6��s�k�s̛-�c�)��D�]!���dk����
~6�{^Ol|-?{�+[�6�����3�rtm��(��m�k!�f�mr[�D6�B�kM� <h��AR��Z���o<]��Ea��e�OH==�) y��\1�p#��&�KH򴁬����QPz"-�rg��V�e��و��L`�W�3��i9Ӧs�{� ڂ�����������Ym�ȉn�����7f��l�i�68���^;�)գ0X�M�A�9b2�B>�m�r�Z��x�o��?b�~�9i��z0��t����W�e�ǂ�w��=�����9��Ə-�<G��9z�'�@J�9��|c�E��V�F�$���A@��-v�;at��r���6��~�є��t�>���Y2���^Ц7�����<���g���J�C:O�H����٦7�w-���7�F��6������1��8�(@!Q�,�"���	�ҩ��Nz?����i㤇d�J�d�X3���8=͓�x6=�����������'�����q1M�Sh���qx�<<��O�����TMR�O��ɐ��F�V�O�aX��Vu�Tt{ W}�V��nU[�f��%����_�r�N�Q%��Tvd5�����O??�����h8�N�ᲃG_�������ѧ����٧��tߓ�*]�g��O?��U#�$�	��oR��}r��ȇ���l����H���x!Z���W>jd�~�̞�>]'������xB>�駿}M�����g����~�jG����y�N��#�Wg�LG�|tu?���7 �����-�v�xD������̡b�SIuö��T��H\/z�C��%Wt�0+ �*�Vb:��$ך�~zOS���t1���U�"����u����^�xn͋��:�3�vu�����;��%��>��+R~�-_�_�B��W��Z}�������/��d�>J��4���i2� �Y�`�?��A�A�ɿ�F]�XS�>R�)�5}җ�S��-����t0��$U�D3C;����N�c�Z���^I����l'��i�j$��j��[<.�-�W�h4O��䏆�QqԏJv���|������_S2���d�x�ί�9����F#��c�5��χ�#�7��ߓ��↋�l2����]"�~:Y,�W�_y$$��c���?�翻���?��F�V����h�>�p~~��H?n�������#<<t���yq�D����/��������Ǐ��|<�-���{"h\I�@�Ȁ5{O&	H��(K�}�e��(�$�*�]���ߥo��l���}�A���CV`���׳o�#���p�>�"��ȭ���d<�A��7��������������a|�$�>������_����|	~Q:�t;�i�c�t:��X	_��2~� ���	���4��zIT�e�+�
$N����$#���F�/�8jv�l>�2&�q��	 ��
v��]�>T���+t@�0zιq����Y��xE��ZV�7�����?w�z%����G���a4�M�.���&O��x��o���פ넗�i�j�v����7���Ŀ��G��S�v3���zK]��{�E�;o�_*��p\�FM5��ϭf���|�/������	/�7�ޅ��>��K�{Kiu��弥~'���>�������®�vԞy�]ތ<��@��w&����6Z��θ^�'��uԽy�'i��vu-i|7����E0��s?�^��~�����헗��{����"0�/_��er�����iݞ�A�7 TZ�_���t��ܺ�+����V|�ݟ�����.M�9��d��N'����j�/���bp;��N&�#�x�Խ�:���4�~�R���ϧ���EԿ?����͹��ӊo��QЉϿ�ՙ|y�mq~�7_��#�|zs��..�G���f�|��� �0�Mu��<n�LN[S��@�����E��8��s%�n���V��L��ux�"<�n��zj��e�ֺ���z�%�ӛ�Q��o�J���vy{ssy�\��.㛻ˋ�I&Ǹ>k_^@�����-�o�w��ɤu��wO'����E�R�$�=|��eWH�3|���|t�FH܏��Y���j1�K���N���ޫ>�����jx����=����%�0f������:�I�WPЋW���#}�_��E2�\�G$/���~x���;�&I�V�<� 	鯒}�
���^}W��oO�=@�]���?���?��v�v� -��$U��aK���r�,+���y�u<{����J�n_A'Y�/G��h�O�g��!��XGy��W�v�8��`�M��W�'��-��W_%�X��e,gy0*�>�� ��$�LE��"9���|W�I� +y��Q^=�ȉ\4Y������#��p��$H��@��|jz��g�ϩ�Tm0��n�������tt�RTS��͗��` _RG����T �TMS�0�z���z�3&:� nNi����OW?�L�`
{=h��*2>�� TS%H��������wF���	�P��ᘉ��#�(����3��ks`�h�����!�ZE���HImC��n@ ���";u������do��dU��`em[�m�Kg}�DR_i2�K�?�W�R�?K��з��
[)�V
��շ!�H��m�?�

"��q��SH��7���d6��|��`�L�;�u$�`��"��P֜Ab%��L]��$5����e��1��2�ؖ��^�t[�Ձb�J��Y~ܲ���㞉fd�nWm;�]m)��ЖXT�9��\ñ�d�*��[����J�JDc[Y�FEWҴ20�b����q�Ư;,A��W�U�'+�#��W(��_    v�Ho�m���t~5���5��H-GZj�hrj��r�euT\��F�U��_;�J�*Z�N�ڔ5y$���:N�A�y��i���q7����Z}�Ċ$�I�0�-}�=͇)�>��%O<]�8�@��K�d�d�g��?l/A�e�G�՝��n��!�����t����U2Ξ �]�l5c 3�l`��V�V����lh7GU�Jj][��ʚa8%U6I�Ϟ�Ix�ȿ���\�0�����>j�f�e'���f��z�%[�I�R���>ЭJ��먲i[|���֗TE��zS��sh8#g([
{�����z|4��5��aLu	�G,����̴��`,g{E��[�uI��e�Uϖ˴�Uڭ��u�f�w�f��h�%�o@T�R�L�~?���.Y?9�)�z�͠1$��/���:�K�P�}��N��ۙT�ǃ������uۿ0�.?�_���r�B&����ӯ�Fw�����r���f����fPw��J��ԕ}��yШ?��d1���ܬ3Ó����W���'��=g��|z;P��gm��O��j�{�s�����������׮���s<�R��?}?;Vg�/Oѵ�sۺmϾ���N��%��%���M��i`��-��+0\�����8����7O$��d*בd�n�U�ę
�gsP����Տ�G=[L���������_��\��Yv�%��u�=_�֛2o��l�~��1F˝�<Rt�+�1|g�꟯|h�������G�����Zɍ�A Xl���r���(<[G�_����(��Ɂ���䲛��5��R[���۾���6ʂ^�7�j��W�O�U���:����Im���:��܈ڔ��v����J4�>��(��$����Za�u��!'y��l�U��~GvTw$()�'Y��4�kk*嗮>ޢ�5<��YF�t�?^g��o����ra��h^�\)�-���\%U]ͦW����Q"7���w�0DV&M��[��;�B@Ί�nse4Q��%����{'~�8�)�k��H�V��ڎݸz����<�g�d-�`��dD�������o ������7e�(���ﶊ��BӶO*�h�)��B������>���D������Ζ6}���jy<�����Z��h�΂�=������'� 3��d�VRGEP���F���W({�t��:N>�>��<)뢺��Fny��}�ܨA�K=�7FA��=�k�<�������������?j���������I�^vE��;wH��r�a��!��˷sH�mR9��}������	3������Gj�?��?�λ��U��?�co���V�����k�����AYw4�2�Hk��3�ǜQ����-���q��fΨ��{K:�ʝ=�WƒW��Q�\U.��Cm��C���xg�4�	�wuH���s��<R�Z�G<���R�FR���H��OR����1�T�{E�T�{EGy�%����$m�K�����m����vG�|�r������t��;�j~���Y�[bȋ�˺�^n��6��%�s#�'�ʻ'�ﶦs���.�s7=r�츑F޳x�W����P��?�kj��c*��s���5ߠl����]n�-�C[�\��a��웪�?���o�����;�珻�zv៑�ϤS�R�t����]=����J������|W���}�G{�����{ި���������aN.�J�r�#����n||����-�7w��[�y��rW��9"|����C�)Ea�W��*�` �Ƀ��z�G���#�wh��}h�O���#�o���w�Gj��I/�(u�c�l5����<�}������9�{ԙ�{ԩ�_�ٻ��t���H9?�Y�C����wrѥ�+��ؕ�-��f�[������4�:H�r������#���]�CY1*��kg�ɕk�Д��j�D�>�6�g�峈jc����e[��ɥaÊ�غi���Wj�a>ˮ7WG����u[C��_�ze��v�4U3�͡��w��ӥ����^}D��y��Q���Ky�Ky�Kp��x����;��'�����lT�����uwy��<Z�)�W�����e��<�i����qY]��������~�t'����r��ݜ�T�)/nΧ��e��H�7�g�M�����y�r&�OG��yO~P��Coqz��J��i��SG'�����m��������]���]>to�_�^�/�W�����b���ܵNһ�+\'��\/�o���K��^�ݗ���oݗ�6�	����]P�{iŁ�R�J�r��q�&�=�6�zp߂��z����zܻ����M�#�����Wz��r�/C�P�}��
{��#��n��3��a�<\F�^/�.&���%�r�-f��l������i+P&�����n��r>������ŷ���h�QϵK�P�A����{��������<���}o2�;=�[_Ë���������v����N�.�fK����a�۽wr	2j�zw�_	�q붯]��߃��=��݇���v:�>�A� ��d�-��˭��zY��a�U�"�˻R��RǴ�\�+\{p1
�V��7���Ed��%@�-{7�fk:�p(��-����78lO��&��'-_�G/P]��FW���]l�(��]�V��o��l
��x=���?��V�{_#+�"��z,Cs��O��>e�WsJ����[�`P��h:M����l��n�lIϫǫ�
Uy+���a�Z��%��ˋ�v�e7���#�^Q�|�u���jEn�VE9Ђ4�Σ�+j6�/jm>�_���Ֆ[1>�-?mI���u�1r��el�)��z�*�6}
q�@����2�"Ԏ!��( ���7�P��/9��i�������m�,r���S�1#��KENU4rƑ{v�/:����	�HC����D��]�S�DNS(r:�#g�d�n����9�й/�R�S�ۛ�e�AD'��h�T�)�:����fK���(�;���o ~Rg��^l�%��I��/~�����!���K�O]0|�y�������i(:���	�K{5*���q��Q��O8�V:j.��Q�������xQs_�e��r�|P�z��j.d�'��Y_�Z<tZ�^*r��	NS�5��⦢VT󏸹������y�z��I���M�]�M�^f���1��}ɗ	����Hk���ԥ~�D
PM��3O�d������7���o �R�׾;e�����!�-#(B/A3������P�`Q��y�N=M����C'��`�4Z�'p��jlm������b��	�@����w�#p���Lqҁ�K-t�.��3��R�I���%��_�����`�zE=X-���K���Kj��A�ChB��=W8Qz�N�����K�K�p9��c�N2ݦ	Q`[��PtkH���`�n���8�y���#p�k�`v��ql�z 0�-��w?�9�����/G���\��^_y$��2�����u�鷳3$��U��|6��d�&䍺,��w"H�w)y:&@�'O��T���R-}H�"}&�����)�����ɗ�wMRX�sq3^���lT�HǓٝt!�x�ΛH��]2O��UX�yN��k��k��j�e"�Ww�z��GC��+bKB���i��L9`A�D/a_�� B+%�Nz�ӪVJ�B`��� l�!��@��դ 1u���'h>�-e~{��y�b�m'��~�V��Y���@2���C���1�\��Dr�i7d��T�ϥ�tN����x.�3�M1H���dΡ	*C�ƍp"��j��kA g�O�g �a�������b��!�-�"@[\$��X3P[\"0�"DE� �W����`�xbF8��h|@��@ ZDl��TPM�R"-����x1�I�D/c�7����� aRa-��B�y�t�?&�#o��V��k��ϋ��+���	(�n����AUYbg�*0����m�'^v뢲��=���� �e�AՊL�B0�F�A2b�'�Dn�#�(��0$=\�WP�y�8�c⊨����(� .P\�T��菓ErϤ�<�ƍ���;�W     �3I��R����|=+C� �/Hq%@�h��;)���m2�O�lf1}�0�
�׈��J�x�ڹ�5��m4�jukv��egH��ۋ�Tu;'����*����Y�j��ڷ����k�	��:�}Pk����R�mz���b���Q���t\�(-nW��p��eal�ꟹ-h�`8|Ʊw�Bq�k� R5��a��T��fًʳ���"P�f�@���>�-)@Ǐ9���m�v �� ���t/؇�]A��L�L:��ye9	e���$d�h��#)���4ɶ@|���� I�H����b��w���g���9���l��>��K�j�"Ų� U�Q��Ӱm��Q`�lz��[S�5�{SW�LG���)C'-�Q*�3&P�;�dj���C�ULN�ۚ���&���Śgf���cB���yL���ᨪ������B���H�Ev�\f�>�Q�X���Zw'�c��9���BD%��S�u��	
�.�৚���.xү�b�Y�(
���hy�QQ/ə��e�I�'S���:H�o�Q�v�y5Ʉ���i�B���Ǟۖ)���F�h�PT�Kv���B�,�L�vjD��
&���N�ע5͆�E�È]U�� lF�5�b��rl"�#+b�Q#��R�* Lôx6��}�T*�f����\�Cf��,�e�᮲����C4A��q��=��^)��ڶ�;���3��Y�if,�2�C�a4"9(Sj��,=�F��
��[W�D����ad��S����>�v��w�B26�{)��o�r�84 �
I��84��8\N�^�%y>*�ej�	8�b�&G��@�L�2�i"���(���dЊm�����&�gC��h[S�8��$��9�
�������'�2�;ג9 �E5s�
�(2kbC�qs�+��\�̙,���d��p����El���!�f�D3"9;#:�P�Q�? )��Mc*C�0:�g�(��1F�0*�Rb?d1�����^�N�X:�6gU�x��Y��ʬ2~G���,[9�Cf֪eI�� q�62�e+|?-ղlJvl��,U�oxZ
82Q����<*3/]Nd�$98���l�N�x�Md�!y�L}J���U�/� �1 ]�L�d�D�Țhi�AVg�q��C %��w�l,/˺�Ŋc���pH_C�,�ɐtۚ���>�&��^�RՑ�$���OW��[�s�i��-�0苠pߊ�j�L꧳�L�G�o?�;fA�$��&�<cJ��&gR�9��	P|$sz���8����?���� |��?{����Ǳ㛡��ߎO��lp9H#��N�WZ$鱬�&(�R�<|fM��4�q�v �[�m���2�5=7�J���^5�����.+g�p|M<GH��$8L�c/j�M�����fr�n���C�aK5�v|��Y�u*��������ln���%�E�/�h��J_(`��G��2�}d�X�O4�}�i��u}�������~3���?���3��!ғAf�aF���>��ݛ#�G~5�jR\cϛ��m�B�D���F�Rjz1<�֥j��|���A�	�ı5�>�Bil�0�2Jc�Ϥ��o�@����u��=��5ߍ�����n̊�T�lȍ�rQ̓�d�Pљ�k/�д��>�f"��֔�O����w�+T�4��6O��3��#�)�4qMq�=-SY��[�؏�GbSh�ʡdB�Dh�ʚ��R� ��d�d�f�&K37���z���Il������'���8>I��x$�8AU;+�g$a�sI<�s�j���e��KV;��8��Ό<E�N��)�v�M)�Swl
���ASJ�Խ�2j�g�T��2��$��\�۹ ao�����v.I��9$�䉪vV������%�����KP;�!�v.IX�lRES���ܪ'��f#Ǳ�E�� +��Y�H��U3xlGJ�<��jkЂ_'u6q(�+��z��R[�`�)��pe����*V4���ڽ�-�� �*k�U=��7�墏Tw����\�
�H���8֋=P8
B�7;bh�B�:TcJ��7�
	���(ƌ��]�3��YЁ��M�v�2�qD��2Ԟ���wY�B����
G{�.��f��<�08�`�p��m �y��ͣi �	h�4��n�4��4,{��XV�a�êM�XO����q�[�eKP��B�-rnlٖ-p�ز-[�x��'^ԑZaKb�jh�r8�֣0X�����'5ư��-�>�� �V>:�����v<`��6��*w��I ����%���m׏�����OP6<�ؐf~'9�l
p�jF��_ϥ�� �mMȆ� �e\:6bFz��x��m� ��dCh����V���`EǶv8/�G-�s���t,	8��$t,�ȇ��ULN2�_���fmGa��0ta�8�@ƥ՚M[��@�cs�U���	�l�F֘�L�f�Tn��F��ށұѓ���,O�t��[Bl&2��t�#�zd��Y��!����<,FS�!�%or��M�#��-�Fuei$��z^�2�/B�����0��'F�9
<9L{�C�2a��L���c���d�Y���,H!�/'�X�e)��|VOd�x�9yrC2w�Y�����aZt�n�H���	V ��8��K[J`����0����UG�]�NUo��	o�L�" ��$t�e��1��r�T�Fa�[�YX�yH�n0��m/�Iq��Ű.�#��=��*>��l�?�j��p�8�"�.�$vN���{[�"���M���@�Lj�݆�
l��eϐ8N���!q�%��-dH;⃋YW�����YO��)jAԒ��X�4��Ċݯ� zMi��Ҕ� z5�[Y��gA����aY�X2q�ec\,qqb�����#��{�Z�3�B�q�%-��-kA\p1��
X��:b㑵����/��R�B=�=)��4�)��F���u<@��ʪ�M�惙X�HG�b�����P�a��b��tː,��Z��פv�Db\�ba�Ov���jXع����Ev�d�=~���Θ�$W�YW@Y�钞�"�HU7�){��-\�n�v�$v?K�W�V�B��F1W�������[xsH��8da��-�v̂�6_�Ǩ|�B��cx�B0&C�����k+����n��y7fA|͊���X�F`��l�~¦1��oU��#^������=-,#fL\��1q1���*dL\ZQc�E�B.,?0(�ja�C��b���3(.��AqY��K+lP\��Aq@���ɤ��C��b���3(.��AqY��K+lP\��A�A����3�y��^���X��F��H�Ď�H�#��v:��JbK��\��V���0��!(o�Ǳ����8��"D�?R��¹�ަD@���-ܺ�� �QR�ACS�l!5~b�f�)�C�u�\g��v��9��eտ�'��(�]"r�b+à+a��oХ���V�W��7IM���zٔZ�N�w�f���G�j܍P�Z�h�E
����?��mVM��C�/2N�;�x��5-��Z׻Q�'O!���ٿ�CK.��/����z앏%��Td�^Pw۲�Qؕ�z݇Ⱥ���*��DdL�Q[��b!g,V��r�e��ˇ�[0�ųb>��%�5�5�2��e�M�r($o�>�+卝��V�]N�W���ձEB���+�CWB�0*R����)R�'���*R���K�IU�čx	�Dݕ��Y ��HmҊ$�\�z����y��a"z�WN�"a���<�B*����q>��K�p���X��*��\�U
��_�V��MF/�*�0d���7:\�3)Th<AΠKhl"5��Ps$դK�'n$�J��bI*RN�0	�zDjZ��ig�GDG#�Ș���+�G䲄��!!g��Gd/ �0 ��e	?"��/�Iaۋܬ`]`�MEor��ض���QPl��ˇ�J&�� �~A�蕮�m�����X�Ao�\^����1L��7?�Q,��    ���Q,��W��Q,�D���1ًD&z�$��)X��.A����c:b�D;�T������)q1݄�BH��-kUO�*�hؾ���Ĥ�2�b����^ ��Sƪ����͏ͷ�~v�F��.!bVb�o�D�c$��ɺ��������*ɞ��=����3���)Յd��3wdɲ�H������-G��K���O& �L@^��έ^�J@�H""#####)����tAR�!�AR�d���#e]�}{u��)K��b�QU)X�+)̶gU��l�~,e!ܾ�Y���*�UA.f'�z[�R�R�j92�t��W��g+�SZ5�*�%l�1���̨f����%� ��J�%�L�mS���ljUk+ge�H��&SR��e�� ��<TY�@?7�ڪ�O94�ڲ2�j�J�+@?.�޺R�*�rD�t�ʭ�f/�T��#r�+��ց����q�+����C��XJrI*z�Gy�v9Jݔ"�ݏ�zR��������%��T������f�VCS��4m�%)�j5	.��\8��-z���b�2PfwX�XC����Q�]��l�fhM��O	"e5*�XR�1A��De�%L���Qj$f&��e��a�i��ʪS�U�u;(�
�t� RV�2���sb��R'�҇t8N=C	ŰU��%A�R�*��5�vK3Π���0��B�-1´RI�\wl'.G|MG.G=�3����C�#W���X����U:w�>=3�WH#!�4��m����Luѫ�~�K��EU�R��U��U�_�z�ꗢ�Z�K��P�R�W�~)�T���WQ�b'V����/�;Z�K_����G�~)ګU���/�z�ꗢ�I�KЩs�wpx����9<ԀޫJ�7:<��/�tx(�_���Ԃ!�~ɤ��I����L�����y7N�AK��fG�5���Ԝ�C�����K���w���#	I��M��q��̫�Y�4&�(�����kM�d�4��5��H�SZ|�Ӯ��Nd����2Lú*¢�!�aU)k��U��=_GRF\Q����bV)w������r�=�zJFR�X��)	\��!P��S���W��S9�����g�p��Y)�QzV�v�����g�p�zV�@�D����1���&�����g�p��Y)�QzV�v�����g�p�zV�@������s�ɓ�����g�p��Y)�QzV�v�����g�p�zV��T!�|Z5�Q!O��j�E]�u{�vY�TP܀ت�@)8��вr4�9���]B�^i��yQ/�+(�@���1J)8�����h�m9&�ÿ���N�񊭯B��,E{K0Jc���������⋋1U��j�u�nX���+��g�QO������UbTr.�+�g�܃_�G�x�ڧ��� �P�h ��m�@��~m�./�#�/�0�K�=�i��w<c�lv@��2�B�A����F��Ne�����W�j&O����W�l3���j�t�F�fi�Μ֍K�����{_�4�Sj��^�(K_�2��29�a���AQ�s���:G��kI���J�8�謹^Ϧ���ċӮivH���}bzRo�����ќ���l���Z�{l�R��69���J��%bJ��,F��U�R���(%<��!"w#�>�� ��FD*�e��Xn���Xzgu�N]� �$���g��.�fH���}�P��`ˑ�]�Y,QJ�r	f�l��?$������$vLݟ�ow�`�� ���_��m!=�����n��l`�C�
��靷/۽�^��SA�j�G���kh�fQ�NC�_�������ש�L{��8��b�X�����O;��bb�J��5�$GS�����(���`/�r�r���mkT�T.U˄n@T�޳�Q{VIa��R>��Ez�O�^��R��\,EzK�)��\���\,Ŭ��R�7p�P667��A�5�H�c��HU,>�f ��O�H�.hi��!����h�(h%��dVb�h�ʭ�(�U2��yQ9+����lX���Ǳ⼊������v�_�K�࿪.��KQ_��bP��7���2���үL�\3z��>��hmAGQ��CY7�k2Wf�k2C���l���
{;�ͦZ��Ќ4�g�:L�aŲҎ����~��QÐpV�6��}��OY��}LJg�@�fcR�I�.\LJWvDJ�Y�YHW�#&�.ae�� s�2�d�G���b�QBn�v/
�QqpO_�CJ��as�҅s�|�����bAx���6��Ճ.Hm,�N�ł�5��;"�ZS�G}��H4���z�;� �^iz�M��C���H�qNhٯ_�訕r��}a�S8�ՍF�,�ʛ ���dB�P������d�농J���:W׶�l��3��HII�mϦ^��H�H֤C.F"E5Tػ�؍�:�:��ۻ���S��NDC
em��`�JMBG�w]�vu0�N�;(�@;���bҵ�$�ֵ�m )�e֍^T�"I���%=�bR��e�%�$�m�o������X�q% �j��P�K�QHO��$M&֠��#V8'u�i�#��񅍑G^7�hR��(VlbM��*�H�H���S?��-�r�.4TEܡNqO3�
�D��NR����[t�:sՅ��:sA�N%($n�F��5�bBJmq�d5�H�)N긲D���3�T�P�ж�8���dUxٜ����[@҄@��Oi�@�u�3�'�U~C���M��30��H�H�� U.f�@�>-���8��D% $O ����(��x�hf�(�Z8sU�M�X��s��̴-9���̶���b\J�71�R	0�y,2Ӑ��(P����yI�= R��"��%G��A��V㇃������炔����z�E)bv�Hg	�C	$I(H����{��i-�0$�`b�� �cH�/�hu�((Q��{p��t���e��Y�t�\�B���}�Ѷ�*�%��LY�����L�����ф��J+�㊴-��v@׀�Y��P�H^BM,�pu�Fq����I4��"ʮ$�}�Ӊ�p���
}-�v�H�[�@�r���p��&��K��G��5"��v
�9Z
��;�D����C%�;����|*�~e�R����u�RJ�Ͱ�"*�]�{ֽ*��-��UĂE���u�)/C���B݁�X�C��ӑzq�'��j>G	��j��cPf�[@y���Y?��vG��Fѐ�k�D��&����VҪ�WH�]�/�����ǧ��f�iF�	�	�@d��LpH���A��,�@I���@�T)������NE�ѐњ��:����G� P�`��;�N��v��m�y=�Y��C	�"<��P7Q�����Ι+��^�p�K��⨺DW$�nI�Qa��-vw%Z��q}'��3���je��D_3���m���}q5�gt����D�ީ0����v��د�<^p��U�^��%`Į���(� a��n�������J�H�^�U������A:�^d'J�D�����<_�WL��n�`�O>��DM�u��r
2�U�FquiJVk7h�����R{���jz��.F��2M��i>d�H�qzW9����wU��^�J�V�k�V�1b���HYg �΀Ô�P�@;T�pPE�P)�A���T�j@T��ȊY��*�J@��H)w���)�Q��M)�JmF�-��q�]+:�"F�IJM�&�Yo�/{�L�h���Tì��)�R��ާ�LPʜ��>��*[�O�3���T ƶ�gv+��ԙ�_Rk�8]�B������N�Ǔ=8�g�7�V'BE-�.K�8��Ę��-�1	ěc�W'�$�oK�I@^����&1&!}}bL��Ę��c�7$�$��@�=1&zsb�D�ڬ�#ѓ6+$�H���#c$z�fqb�D�Ǭ�#�31+'�H�����ⵉ1RT��ݖ�7./$(o[^���0�/�v�tۇ�'cՍ��VT�;�$�* �꽺�@5j��rTrd��j���eݴ��DKA���۪�`��Y��n�[T     #�#�"�Y��^MB�>EB���ɊQ�趨E�Dr�3����i}X��b׋�g$Ȥ���������"�OZ[cE*��1X�.��)�jiw	�k����!�B��z�aA�^�N� �v1�S���/R&��5��	�qim +d�U@ymr[4eq�,��lY��[�]���
i���o�������u���֝�7�;#�F�c�n��H�M�^�t� �C�-B�L&]#^nN-(>�i}���i:���D@��z�P��!�@=�����	��� e4>:�&�zs�M�S07�A���tsf�\^�AX+�&��}f�m����wȢC8��D��͉2	�;$�$HoM��0����	��p�&��UJ�-�xm�o1��~!���1�@	�{����#��._�����ӆ���@�4�n4R	�MS+�2<-�^��"�bd�B������%�L^�#0:�ت��#ŀ$��F�v���D�
��A^�I�_�.F%/�������!��D9b�<-��ǀSX����%!*�X����i���!����]��.�H�"6�+:1柇��F�U�������˼,���y�2 �F=��X J�{�������Ӌ2daK�2%F_-/�����8��b���Q��0PU���52ᠪX�Y�k�Y��]f/�C1Nխe�(���'��4����ޏن�phs(jP$1�k���E�Je��YM�0���(`2=a�0 �{K.@�\��չ 	��r���$���HH_�� �: ��\��� 	I���HX���t�H�VF��\ ��y_!@�'�� ӳ�sdzZ}�\ ��K_9@���� ���Ksdz�^��:���We�N�g��Z�`������'@��O�^�O �!^�����׬!&�ﷆ� �q1A��5DM���e1�}�2	d�2� o��Q�ݔ�k±	�;�c���c�w�&�o�"��,|$��*��о�pBB���		��'  �bK�5��k�2:��J$`��RA�I�+r
�7�&(o�)D �h۱+�	֛W0���` ����8��J�H�ސ��(!�׼f��eDx��R� ���p�0�x���Q>�
u!��yܒt��%������.I#�K������I#�⛽�A����ׯ,  ��s̲mC4���J�|�&�ጛ����F�]xdH<�������b��]R�G�/Mc�W�<�{k�<�y��9-;�z2��9T#I-�Rpz?͵^YKz,?:صX�
=��~��Y+�h>U,n��X�z'�6�VǠ�.Z�FF ~��*�$�Ό��RO<��P��nŏ��'t=�"U��Q(O3�b0���94�EM�8O����b�RZ�ĥ܋��Z��0Q�����a��g|'�$��и�܇b R@� PZ�^����sv�����+��S+f�z�?��D���	cH�iv��i�he�=���ukc�#F�G Rz�mG�B���s�=]����:���N )K�R�ۂ�3׋��-(-��z��P��E(�����S7�$(Х?�G�Ol*�"O�1���SF�$fO~*@����\?�u�Ә��]��H�l�Z�x�ct������i���_�I�`�^m��3^mR��2�u��.�798Zt#��z�n��ݺ,j|�٢7���v´V+��ԩ �����.�L���פ��Ŕ�ޞ�i�l����^0��_���Ŀ�8��jy�?�,��j�t�|:������ ����p������Sc��3��翈����@��EE9p%�6�Y�&��ZSe���P��ê�'�� �O����q���*':�U���_��6O�牷Z./n���n�G?ϝ.}�$ۓ/���O'�ڗ�m����M�������׭N���q���ԇ|J�GL:���;�k�Y-RO�K� ��)�(/����%��+�����q��o�`�wӈ���G��6\=�|;�6�t2�������Wg�|xx�Nv��ue6��P��� \�-�Wo�,}g��.V~~^O�4�.!��B9:�	D���(��=0v���� 8���QD��U%.�������\MP�D��(����c6�:ݳ��?���Y�'���3z�\���d��~�o&M��GQ<i���C��A�"e�e_:^�bZP,[� ��wj���X�a�V��&����<��[��7�v�t��,�Ϝ
>�h���Lc��A۶���5@� ���8��8�ܮW�C�!N�>z2��.��=Ak7Y��͂��'�=��*!��W�:b�￟�v��g/�l�OdV��˛��J^}����}�@��&L}?�}��y��������oa;���aC�M>I'P}'�ȎFB�-�,��[g3ݬv���j���k�l���i:��g��� ���Ö���R��� 	g���_T�ԯL�aIbo���H�	ƫGx	= �-@�F�P;©���l�Z~bbK��3�+T��t�������ߙ?~�/�^�kp����M�@��f�>˿�g��#��[�.�{��?1~0!?1�>�X�qm��Hd}�m�X�û�ܹ\�v��L��xg��R�v�˖ފ)]���t�zǍ�A�6��Vl�<�5'�~��h6��Rl������Q]G�#�˃����(7�[��S�%�x�M����al~�$h0�K<�;s�3�5�{��Okږڋ�6��e�9Sl~$���׶^w�=���޶���{�۳�t����57j�N�n�����hL:��[�@�������k����������¿]X��C�%ތ͑}�����l��3\����������h.����$�Q���u�Fs��:�0Fss�߬D}6Zك;b'�&�މC{2q\��y8�]�}ڝ���,����?9���=�f����χ���F�b1j\�UFsn4����xc0Zt��p0���;ј�ؾ�����K��3��q��C�x;�j����k鶿�/f���Y�ߜ١���
�s���w��Ƣ�����;�4C�n��-��8�m�.΃���õ3Z��6�G�)�_�m�����][�h������*4;:��}�t��3s r&7�X��f��swy���o6.A����k6\���r8���fÍ�|����°ڜ1����E�Y�����b����q�0Z\?�Z��pa,��խ97j���-賺8Z4CJ�2�!��<|�y�ƽ�����7��AdӠ��{��@#Z���m��v�C׷p���6ӻ���'k�)rS�?2������M�u���l��&�&�~�-4qh����*L�d<���Sx���x�n�1z�;������&������ps�X�����E�b������ʅ�ǭ�lPkn�����ޢODm�#�z��»;g�8���U������%����[�Ϩ�'���m�:�h�H]aj���i/�Ȕ���A�a\�4M� BS�7��~e�d
��'S�<����9:N̿^!�1z�2�yꨦf�+%�+M����H"̳��*gf	���r�y�E<�">b�m��f����f��ň�Q�'�Zm�N�0�he!O+���~�2b�N��lC�F׬�m��IU yD����3p"k���ry��+)*(�+T>:K���y]|%"4-�/�{�ؗ�r����ij��{Έ&���ϵF�n������\������@���R���b:�<A�4���;]uS.�r���u;�b�>�$�"EοH�3DW��U'�<**�y`��Q#q�c��DB��,�IV�S2�����?^��/�8���h2D<lG֊�WQ7JXi��gv�6����嵙����q$b�>�c��5P񕈸���{vV�%�I�{�Vv;��p�+t,�����!���V�
��w��j��=#��iؘ�Ђ�i3�+Fȓ	1J	�R�#6����.�c*�� ���qi@�7�MB)l��w��c2�0�"�j�=�m\�.4tpq���b�_G1�F֤�W�0��y=��n���G�a������NY�2�ǘn���I,���H�    Z�� u�v�md���'�YHbE:%a�KB�K3Fm=߹E6߹����)�ØK�fw��t���)!O)%�n��u�p��+���E�\̓��O����1'�M����� cr;z�R셢x��-rV��bM���J�^���Av�<�_��Y`S_ۻ��cڈ��u�b/	v���W~?�"��f+;�F�X���|<0�V���`�љ2��!6�`�Fԗ�#��8���]���F�~���s{*���Ө�T.O��(�F��F�T|��|�����CU�:�+�-t�SlH�v��J�B8����l���CZ�F���Ӛn�,��
���G�Y��Ƶ�ӶiCo�����0��ʙr�6 � ��i_"�Ӵ&sZ7O�k[��c%�ux%��y�t�S8�tB�M��C  #���a�P�z�稌9)2���C���/���<$�@{�٥f0p��F3���$��+�f8c_�sB���K�]�ޫ����)��d���N53Y�M�c0��4�޲�����+�F׎
St���0�N��u<�gHyC��Z 6?@��`ۗ:�Ŵ9oU�ɥ�֑�QYWF��Y~��|W�$6G���Ӑ�c��C_2/tlL���QN�8r��=83h�4Q� 6$cFW��W���䁅�08"F�}6����w���!֋13��]tY��&i��M���d,M�����a%l\���n���~xi�{���I'�((��$���!�aa�H)Ϣ^�4�h;[��O|�+E@Fݨ㚋��y���ۦ^�l6{y)��=�G㭊�V���6p�H�x�ʁIc�>;�sO���"ѓ�������
�	�L%��SoY @D���)������
���<�J�6�
�uP�brKDL+D�V�C>�m�/Q�p]ç��2�$�ޥN1�|^�8��b�ʶ��yzk�@j�e��:4�(w���F� 231��i��m��0/]H'�uH�1���b@̓� '�P2>����y��X��`���t�U�Gq!��u�:��z�s9$46�J���rX�ۇ1pJr���f <���]i=�Fbz�\<��9��9���G!OS�3楝��q��q>G�]͉��ft���:��b*a�1�7?2�db�>��O� �w����eׄ�j�	YO
KB#��-��B�ѹ��"����d.�s�M�<F�)M�zfH��(�������W�rx�<�\R6qI4��&֡s��ډ&�؋0�b>B3��:��,����.�c��Jo6?ցxn��D~F�w�@2GN���e�bP����������F�x�1%0���\2l�_G�	��q�>4�N#��d�L|���}�6��PQJ��JXt��	���wq�wE[LOb_&���<�Rs�C���Ym���1˭���uT͊�H��e�PCL� Q0E�xAL�p,�ñ����s��퍙^7[hc���#�N�b"���b�H-��\b{�i/��`�Uq"r��S���$�H�@��j0�t9e�V�*�aUL{T9�����a��Ji2�ψ�w���N�F�Y:[��
�w	�ȯ:hg��/���Tl�J��\��Bi|%�?�I&��8é�]�	c;��Y�N��#�06u�T� C�-��WRЃ�S�&�6�1YL�´r�w��oE�B���c�&����]^�E�ii��a�KTj��&Fqn�v̾$a�u��`=SV5OO��R�iX��K�FZ	�\����GL_@�ֹ_�#����_��]f�/c��c1a�*�Wl���X����1���;$z������f:�D�?Ip���c����cPf����N2���B�apy��+Tb�z�Xt��	Dwy�BJq�1 @�]�\���<K��tJlh�۸�I鎘�^�J2Rb�d���J�����޾G�C*6^L F�x���ir���Z�fZzejzo*�!�u���Xd����f��X�`3a��Tԗ�A � T@E^�"e�w�\��s����Ͽw��<8���ho$f�y,/�?�%d�$i�('���
�k��t'��H8,�'6�i,�`i�Q$�	��I_���{ó'%-*DIdB�,�ʓ�FQ����H��t�Ø���J��4@D	�|���/���ƅ(�2���EA�6C�X�cq��	��ad��1������9�X.��q���"��^��P�b`�S�FɈ���p��� K"/v��sd�7arg�rO]XO1y�*��)p^�\�C�EC��P���$�����h1�PSS�È��q�=|�=�:9&��wq\��^���`��'$�?2`��W� �7��ߜ�%t���帔���� s��މ�S�)�M��~
����\ ���GDTh�#�{D9�X�r���Ɯ�sn�Ϻ�]q8���NEK�"�Ug�HHa9 �VLA1E�V�y�1qEs�=1��" �/����@�~�&!9X�@�u�0f$L,S9�����Z��)�%*G��v��3����m����H%��&t��Xb����G���ox�"���>GGiu�Z�O-��aX̿�,�y�u�|WKC{��> l�Y�x�O�&��f��K���!�_�bz��4Z��`!yw�0b
���}`�cDZ�T^��0�q	�b��u4[�F���B�8�m��Ø�������E�v9hG�.�/¦��~>�*,ȌE�"?Q��]?�J��8,��-��&��_3�� ����n�~ݪ�谾9X����+%���E�4E������!t�G��p��5��y��!5��N�������:Fݲ�z'����:�;���:J4�.�;�������u4	�h�뼪_��f_��oF���+c�2�[1�����+�Vӻ��r�υ���{�4�pV�m����'�,��>��2�����@�ұԂ��+���$a�pd$C^�.��4���ȱ�����Q�*J������Sh.Fڇ�l�nX��*7�t#RHLlQ4H�����>�I��u��ջ�\�&�Rc���<,zٓJ[n���F��p<� ��mǣB�י86/��
�8�k���G�"{i<���lN��D�ǠW�c�3l��w�V�����E�������r��pw��X@�O�;Q@#]Wg�,�-`��B�@
Oܹ�1L�o���\����1�T(nJU��a�ց��-3E̊Fs+�L��3g�q��`�:���'`�V�v��ʐ�U)����l�W�X�D0l�*j�gF�a%T,�]���ZK���ú��,��n��-�#����fkpl:�	�B꽏v�����˳�L�����*��<Rx�)*�~��<˧��r���}��'���=�	C�3V�S�jP�ԣj���P9����̇���{������r8�g�̳\�>}DU{�e�	�f(�����Ff:x��]�Y���Z���3O����'3Io NxknV�������j�R���s�ي��m��n���aϥu��,�a�!|�!|ܐ������'�̓����7!�	��y\��6�����������2�y�#��6E�pD�9���.XF�3O�l1�FUs��2�I�s�v�=�y�Ľ<g���tJ���[`±i�ۤ�6rU�Q#M�o���!� %�:#h��==�����)�(�*Иx���ۄ��nMP���Zƒ�x���O�
ؚ�l͕Y��{p���ʾ�r}{��g��-����4Uӛ�5�l���	�Q��Ւ@�9w�݈��� �s��a0�_}����goa��z��m�=�%���ѩ|�����o�/f�����_��6������;ZӺ������ð�g~��W���~�t�,W;fy�d8ć��У�c{	�n�;�(��%���P��NGKX�f�3f`Q��{ܢC`�Cd����g��*6�cv+�s$��K��:��_�8#��j�V�-���j���5�����
'�s�q��M*6��m����Q�����K���z_/�_\����gyǟ��Ay�Д6������z�5���M�&    t�x	 ���g�'s���}1h=N�~�?�{��l��>����5p�}˷�K�͂s�}�:�h_s�nh���^&�#M�c?�n��ѕ�X=�v�ux:�͛g��}v��U�[	#�pݛ�W6���L�]�C���u���`w]���.A8-������u��?7C`�]˘������b4�6>��Ƴ�4j\���'�-��4A_�g��7����NJ�;.��~��ymؓ�p��z瓑;hvt��]���5�7�v+����|Y١��5ך��h�j���̙����ncp�iOc�g��u>Y��I�?}��1۽�:��6�������1�Ӡ5������'������o����5������?5ص�ݘ\��Z���0Ms��z�]���Ѹ~4�p>|� �ڂ�|'���?_�Ύ��bԺ��bw�~��猆�8|î�/����p`s��d�[�ߖ����<�/��h�FfP�&ZQ]ş� ��r��ȃ�\�`�F>��U�܂?��"?��j�������5���=�&��Wa\sǪ\���^�\VL=���p����@qj@�ݱ����o,C���ϩev�����ʎ��L8]Lwwp�����e��ŭV\68U�%G�E_��WEe��uAU�Z�²�>�lZUx�VK�\sY�����z�/s�+U֧o�V�}�?�6�~�s�����	�;���ӏ��G?z����\�f����V��6}�?ڼ����X���uX��5�}o�\��ݖTͪ��vF�|�4�Yt��6��˞�����Y��[�M�믻��8hi�17v#�bfj���>��o��/́�2����&���_���4o�͋K�[>����|��-���Wݛɍ�ތ������eҟ���G�gM��-sj4� �Ϭni]����To��C�e�O���3�}�#|V���-�k߱�~t�<��F�׬��Xu۵��Y��d��K�w����Y��±Z���K}Ί����n4;���2��/���e��Oww^�p�=�KV���1��Y�O�^k=�F�?5��o��?ܹ����r}�?�׋�I0�EG3�.j�t74n&�~������?�ms0h=���ٷ�I��e��`���~Ys~���
g�l.v-����3+8��͹QÜ�.�ux�9ӭ����>ꍋ�hfz���Z�&~t��'~�Og�;r�������3�Y;�"�*�� ��+��3�:z�Z%G�»�u�����][CxU���������7N�=��0�O������H*��N���Z�>�:�T�s[?;��������۳�$f�]��궁2O�j���&�P[o�^���P <w��ZZ�x':��xg�>�~	{���E ��� �f�����ΞO8\c���|�,ύ�nZ�	��_��?
��@z	�er�W`t�<�C��ZW�-���h@=~&z�9p�I�RT��3���.;����x,��ᡱ���5�����*P����=W�rY����e����1(�3R��U|���0��>GYU�fE��d�U����T��N��7���'�A���9�[XN�)� B}�z/��h
��j�n��v�C�⯹k�e͜���}X*��]��Vd>�w��6���n�xݺ����~I�Z�$ߴ��#��g❌��o��%����v1��=mw4�Wz����q'5��s�7e�:!�(2��k��)Z�����A��w���r�+�@������i_:D�M��t����vx��/=���@R]��Y�z�챁�I��y���ϧ{���G�k*���`�*4+�'�>d�mpvdO��/J���$˄!�9J��6!B����簁;�$@Vt�Ċ����R�R󽚀L�"HAM� �������������/51%5��R.[S��\c��}4 ��Zj*Yj�,5)-5���I~M�% �"Ȟ��EU�d�)�E�\jrZj�Zz�� 7f�@
�~h��>�)i��rMPy����+�$J�����?��Ԥ?�Ԓp��kʘ�7��\	�5e��c�M"wxH�(5u��T�b֜1Q�����^�7M3Y�v�����cOƊ,�Py��@�I��hX%&�{&+l�kx��P�k�#95�eV�ƂxHE���J���k(鈜;PjP*�"��2�0VTQ��]>���I-� ��`�U^ �"����@��Yj*��CJ:�፡@:�Ԁ�r</	��|��$/2�k����T6�[�"ޤE�h+0ħrj�?���Q�Z�#?G i_�ܦ}g�:E�C�~�:	�Jk+7����$�n'hNn¡\���B��%�l��2E1�_P�� ȉd��>��l��U1�EB3�U1���s�3D�3�&��_�~R�7 �oV*��	6To�rh2H7y_�r�A�����c�}l�F��F�F�u$*��Oq�X<��b�+��B�Ũ�Z��
q{�o��m.ڬZ���Ks9Q����f9n����њ,U���h>��r���6]`�޷�;�
Jն��T�+s\H�d�n�u�ǹ�VKq���cWV1g�,Ve2�7���ls�Yޕ9,%:���;�#~�n�
�M��9�
�O%0�e�cGQ�� Ƒ^bz�ćSh����ªJ����������>�uOpڷ��7�b���5&R�J�aii��ԃ�Ͳ#�˹pZ\2��]^R<����[P�L/�,�_˞X���Ȝ'������8i���T~MO��o(MW2o�*��PO� EU�c��㥙^j	$�&�>_s\Q���t������Uĩf����6-N�s%��ʋ+���;QAU�W���L�l"���A�ր=o g�c��_'N��46+�N9HK��";�#��P�
� �(H 8��o>R�鵙1��hG�x59���5�?�4#7�҂[F�\�!-M��]���Su,z�?x�@��Ry9� M5-M��&���zҸ�ʮ+�������Ҍg>�V�2�C�P���Q]�D�tx"��n�K��y�'���ũ�W��(�	���x��d�S���!G�hFXi�(#M��IS�n&+*>������| ��\Y ���fj�h��NM�C�H�#���?e�g��(ٜj���>t�����V�}��)�;���_� H?�4�XB�Ŧt�T��4ᜄ�,��DU�8N�ex�$
c�yE�L����ǩ��8pk�����uŏ�&�� J�p�E�Ɔ�X`;!��>z��ʋ\ΓUj ���+��*�(����6��b�(�\w��;pR�@�F��տ�����>:���rIw  �sń�,J�T�*�J�����{�%�1~t����%=� G�~"4f��y5�� ��#����H?tI��9 �� ��c�������\�ǐK6��|p��c咄?ů�� �U��HçU6�R���z�c� $�RM�G��Y�R�J�ء�x� �%)+5�����	���
�B ��XTy��YE�x	N��
'���J�D�����5�"�5���@�K��
�2��Z�B���q�����e�2?�U����\|8�YN\��<T�rr�c�%�����c咞����vqQek��c�J�p��1�"~Ӡ���%��_0�9�?��9��B��)yO�dW��#�%9f!�y'�9.�B��*�]IP���fbT�,>��E̶NT^�F�U������_��U%S���d聓TU�����Ǖ;��j�b���K�����;|U�S���hjL]���hɹb��dL-q���n�v6HQƫ͢�����qW���<�V���p@f�x�dN���&�@��h�S,pBT`,)�TV���;,�F*z����z��S�2�����6֝�vN�=��Q13����yfOթ>���V��?_<��)k��i�:�;s���90�~�i��7�|'�[�����Š�ٞ`.��ޢ��捡���8��7�ֈ�sݾo�\\:�u�oL.M���h�gp�ap.\M��Z���/ZC~.y;]��ah����dd��hNG֜��gc�/    �T�V�Y�����bfD����F�91׬13�F�tj,.fCk.���lԘ?�=[�F�PwCcj-�+�u��n.fvk���8o�w�k�C��>�\{��1�6���lw[�J_�w&?��Z�P_�#��o��d耇�kۜ��I[�׀;��Ő���;�n�g~sb�g��_8�9���ś��WCp'���ưE��]�٘덋�g��5Ѽ�f�ݝzK�̟�Ӽď*"�s�3�����5g�� ��~F�Ȃmn \��������n����9�u1�2���h2��EϲE�n_aT��?Pů�z>xq���6�\��"�e�잲 �����L1��'��o�kh�}t�P�z
<}y��>6�E��7��� ��mG���-��%ڮ:�'�
�]�
��T�mY��������ظݎ�����M�ħ��C�ܫ�C%Nً�� ���L�����Ίǳ.�5|�� �Rsxǃ3��,�| r���ۚR���h��m����߿��j��[>x��>���YO�~�ʬH��9T.؅~�,:ǻ�bZX.�7Ip��j�x�1J�+Kv���H�ѿ�
�:�� u��p�͡j�'�MwI�t�������� �C�^����N,��������__���B���;�R�oh/�/?��Z�7:�i��ߓ���kRx�hnK)F:
�\ͅ��˺�*;�CQ�C����E�
�9�:V�@q�8��^�v���~��� �'T%����tO�[g�C�����}16{�~�7&�o���+��'���.�9|����=��~��GF�x�|�W�A>�*46�P�,���8���(�@���q�9|	𱟛�1&1���<r�(��k�"�� �ǻ�䗭i�b���"n3N(u���l7��ii�2E�PAy1w�Tq-4����8�e�/���@�< � ��x�g僗���<!pg��(<4U�@T��Rt�告��O�V�W�+����rcՅsa���}�P�D�`l�?g���y�3�DΚ9�����������޳�+:���B�3�ir�D���9����n��4���۸S@��ǲ�c�l8�+|M��6�dNU��I}%[C�	���gԆ2�%���fF@G�ֻ�l �;�պ�nVHr!��
Nqi&��2�[s_��<_�2��5�Z:_љ�ՙ|��iV ���⸦�1ȴ z/�(�o��x���+&����]h�W䃚#B��pû�W}d%�k�YE6�:���cB���$tsjʘe��R=UPx������2X|�I��]�`?t�����~���>��o�?9u�'����<�k�����e ��t[�<��]��*A7��\B�!��з�y���`�̹	̝�]��?�	'�m��h�?\>��ܟ��67�����l��l�4ls��}Io���pMͷ�E�y$��+�k<���J�CSp\��Z_�~4�͞�|��s�r�7E��m��0g���=��X�f�X�O#�4�w=�s�M��nL�A�t58��BȜ��Ny�6��V����n�������k]?-c�m�����Ѭ�`��0�)"�P�՟���4��}=Ǘ���`���i��?:l�1m�mX�f?-ĵ۱����w�G+�y�t����ɲ�����c�jN6v˔`[;��!Y�o����l��U��������Ѝ�d6��gw����hq��/����&}6y����5Z;��ek|0G�j�L����q��`4����م��D��l�܂�\��5�ԇ������ј5Ñ5�|��<l�ěg[5���F����97�����5	G3�a��r��C�s�Pm8^�ŵ�g�Ѥ���"Gf��G�P<7�Й�?��e����'�����y��%ޗf'�ݗf?I��@�������*�XT��H�$P?�,�'�L�K�D/���{��9r�߉w�s�DG��*2d8���C�˓O�(�O��\%����R�Y�\)x��r���	�*s�Z]Ŵ맮���*_����>�Ϧ����ꉠ�CpV��Ϥt���V�ݓ���yN"�����U��A���n��3�ף�����FS��S���q�����g� ���)<�"��)E
�So�QE�ehTQ�m��5�Z�i��ƚ��ş�X�o6�<'bϼ��v�3q�e�:y��e�� H����h䔠����f�/�'��6a��^z���<6��Q>�G.'���?F����[�7�(h�������[�_�D��~��G� \�c݀g?F�y�E��S�B��/�wk�9���X�%���O��&�/�@��� ����-2+�r�_��s�� U���|� 0�Vpx�#: �z+8ٛ ���(�w�䷎ �b\#v L�~v�cG _�9O�� D��>
��� �����#��G Ln?;@���G߽D�ʪ_8��; ���o}J���O��t YdV����p��yo�  �sx�:Ջ���~�I�(z ���/�;��I���.�rқ] ���20��t��� �ǋ@�����
_X�a�7v ����� ��қ] �q|�I0eY�O�����2;���?��J%��sx$����[W}%N`՟1�o�����Ṫ��aC����=ߐ���pMz}�9<���^�������&�Y�Z91{����¾U�y�1���}Apd�w}�>��pv���,��'�N|?@|�*/JsxG��g(� 
/��+@�Cd�Y��'���~��7;<@V�������9�+��ʾV'TL��=��^�Q���<���7���?�S��C�%�@�J��������;����tVys<Gf��M��q}�C�����ٽ�Q?OE�� �y�o��7o� ���#	J���y��|Q���U��/O�/Rw��������TNP=V�z-��c��� |���u�7����=�-�� �%�c��K+D��"��m�
�u��(o�ڗd�ڶ��#��=~w쫮'H�
?�5��?�}�;��Q�<��T-�����(�,��������s�>m��.�w��0�����{�������r�cVcf8��M���t�,W;�[-����f�b���7G�h�a?�����I��,	�ꨪ�!]EB��8��,���`�OWQ޼�+��ϱ�ی���
����,���8�I���v  ��^1?�g!�#u7��B�ٟ� ��U+��#�4Yg?8����od�u,
��w"}�w.��'���R��c��7ﵒE|�����Sߍ���������������֕�_���yg �_���z|?�Gt6�����7g�<����s�����w9^p��'��S�ˀ���Xso�����k<��GO��7aL�'�$&g��K:�KAE'����ć�2�s�9�/1�݋U�������F����U�"|N�?^N����:u���w�Q蜵��e�����P�Lw<�zA�n�25��E�3�B���0��j��U��yp�Βi/���n3et����b��t�@�~ǜ¿v���`�l��� g�}#9YK� ��ܯ��*�"K������"�(f��֠��v,H�i�21�0�i�G`�r>�_� \8K��쟲�6��q� �l���}d�q��o��ZX�0f �?��_�ښ�+A.$�$$�����%�3��緀�'�,"u%���3c���3��v��n3��3պ�3x��Ԙ�`�C�\.>3�3���k�@�����z����Ӌ��pJ��WV�~�UAT��-�������n�fJ��(P���Y7�L�\�7�bx�1�B4�?�2�8w%�2;p\�f��@���de&��w�g�L����d�&:�����aN���b�3I�g��S���~d�9��Wx�ͬ\�S8�p�$�
%éY��x./���^<*.��U.}������l�Lǉ��s��>�/�i�D����g�X��*���tw_`����+�D�NM��m�/8�y    ��������K�0>-��s��u\�V�N 걌����D`X(�$��a�S�32����j�����`s�ű��Z����حy+��	�e,�3f�b�O�(�`
'��}x�#ȉ��?�,�#̉52�!#��9��w�a?����'�B0QBw���\�G�?8d.��q"�o�M�7Ɍ>uv΂�������	A5�i@�t�����2��$�I�L��hL�󵳦�y"q�"�#�r���Ċh5VfP�g��� �g/K�ga<an|Nc�r�lp�#s�<�"����?>��}�x��l3���t�n�0�v����ק������*����S��2YmwKg@�?6[o��'��<UD���BK��,ȁ+��� �&�[s�_SY) */J��r�& ������x�TY�D����_��6O�牷Z.a�������[������ɗ�D�נ�/c�ƌ7����h��e�64�������$��_sw�����1�@W��+N�����F�}���m���K��x�[����_������9�-B�ו	!���y��`����Ac�;�v����z����t	q�ω���	����X��W�8�w$.DE�P�Lt�*%�����y�\S|'���X�=WU��8�L��`�c���*/��N��q
����'"9�Ƈ��S���%�?�ְ����>Ӄ?�i7Wm3�[��H�3�v��B�~e�:�}�e���'&2"�/`Y��޹����gZc@�1�2��nq/��_ӝB��NX�W������\WVhO^t=ŁJ�8��
9��Zx\SEU��e���@c%T�� ���������}�n���"�̩�s���~3��s�Z�[��_�E����$�v?� �*߇n����>�����d�l;��o�w�UBRg��ɿ�~��E��<�E?[���˫�}�;v����}�@��6L}?�d��<.j�$������!f���C��I:�v`8>|�ɗFR�-�,��[g3ݬv���
�����(�D_=O�Ё?��_а���a1����xA��<�?6_���_�l�
� ����Ӝn���^B�w8���.x�%��	�J8��A^zD���#~}���������I��t���a��o���R^^V����=|�5X��ާ`="	��
N����t���q��q7��![j;��Gr���~V�6���&����=�t�C�D��V���i������#�#c��f�tJ��2��R������<x���8��[��S���֛8����2���Iа	��ă�37=�Y��u6~�.���-������������~������}��z�ko����=���jjv+�k�����>k.܅/tm����Έ/�����;�?yM��5��~����g�ِ�ֵh�'�q�lTʹG�1�M��/��<��5��>��t�w�m\�<Խ����̮�o
fx�t�NDw>1���Y{vq>�7��e�ў������p�O��6;j5g��t[�G��������Y��Ƴ�8��a�:�tu�h]�����p6lqdS�� �Fs�^���o��	����Wx�X7����;x�f�������b�+��a���'{!�&�!��6�g_?��`\v�������]�y�[N�?����?�7=�v��z�k��Z�h�g���X����!���;�m�W��=_�9�Ǫ�~sb{͑sm]�o>��j�[P��Ӯq}s�h�S�y�v�6��4oy}�_@�>�,�+��`Xu��]�F��gun��Ƴq5ȷ�C׺{����ilw��c:Zج�c���_�1o��[�m��א���o�Z2�Dc^�6vޤ����W�=��{h�����A������н-kI�O�F6������S�r|d�ow�y��}_d-V���'w.�ݶ>�.&�كt�Լ�C�������_N�������6�~�s��-�8A�
���&����S���J�L�!�w!������Y��'��_<����o}�@�z����U���Q���a n_(�".%�\�]o����}4B��M�(l�-P�/�ϓU����2x@��7���w�8P�3f�y����)a�k������'/i��|8B�o/V.to]g	i�9pT�N��[�m�[Z�`�E�(�����|(O4oE��Š��˯�'~�rp!]�z5Av��+{A����1�+�Y�+��!!@S4��\�S��e�����e�5E2a��^�&�+���s�y�[�e�(e����;��qd���+�x1�6�<śt�~����b��dI-oO8�R�����cb��HԝȒ{�����L�%�f&	 �8\*	�mb�p�?�^��ϫt�p�v�����l7���e-�`f��t����ܚ_{���B%ܲ�k�zٙ���׎�uC'p�on@B�iT�a�Fe���Z�n�y?.�xmm[?ۨf�x!cr�������r�r�j�?h��#~��6��Flk��±����6��4v)�����N��"|;��τs~S������|	G��	�����r޵��ԟN���sL�;]�׍��n٠�:�t����v���o><�w2��0������C�D�T�nWm;�]m��m�w�*��׳��t�4�@L#�k�l�����ܫXf�������q��;B�r��{m-��pW�_�Zn�q\;����t��<�z�����S���R�7oe��~)�8;|�Z��k_�������-�����@�̮/ÿj�J{�ud���k���	����3�ݠӽ���������N�"f����V�ծ���v�+���;F	����=o⛿�}z�?����]��3��gvw�[��àk-�ۧ��ѹ�f���י/��lvmy�<���oo���BU�h��-{�*>���0Q���j �����_�K)I���.k�~��|v#�O%Q�ڐ{i����;mbMR�D��6�vc�����\���a�ܼ�����V�E�g�Т^(��j���*��,�����RF��i�
� p�׾7k�����_?>�}�ԡ~����\�b]�Z,�ď����u'Ġ�L�A=��zݎ�Йi�"�q}W��p7�mVer몢n��ӆ�����������#�t���,�#�q}_��6�>m���XA/(t�ig�XX3������6><�W3��:T�?�>�gp/�4/�qm��4X.�E(q̗���6�p�6��8n�^�q"�\~��)��
�{�za�oG�����y���Iw�]��8�G��zOn?���l��ǯ��/�������i>*�W��e�ۏ?�^M/?;W?]�V�rγ����,����ivy�9���(~_a�(oΧ��b����l�Wƿ|)�n�＼}U<��w��W��cߜM�ǉ}s6+o~��t�>���4��N�ޥg�=Ꞻ��bR���>}��]��.��3��o��/v��G+\��O����H���s���kZ��_���_���]�y�u�\��7We�������s�.�4�O>]]�fj�n��wy�cyqy���t/��z�Yܺ_.��dn�5��Ӳ���>~���/�ۋw�n�7wo>\򓫛�ˢ�~Nߏ./�����������k�5�|x�ǁ3�����&��/n^���i>v��y9z_~}�*}7�mv�cw:�O��,�|�ey����l���W�i��&-�\]~N_���W�����ޝt?ĳ���r��qh}ږ��W��.쾺�XW�WfVέ���������L�i9z;���)\	��޾\}�{o^}M�W�?�W�N������J�W�G���������>��ϑ��r$du��GB�z&�(f7�[.�����"�gUI�?0�$�^��k�d��DR�zam
�G&�25r˞�Wk��ۙw[Ǿh�0Φ��}'é��T�:[�`�|�͹���j:`�o}����OS!�<����?��_��=��\��InDWQ����6�IT��*�Ȩ��u��Z`��??��x�
 V��/���Ӓl�8��h�E�^���q;��    ���e���s1*vkIY�"�[�M���Jm~�J,=�{�F3b�����\b�(�k
w���V�wj.r���QK��X}���P��-�Ϭ^�&�k���g���k��������(f�	��"��y|�X�����K��?LF������^w9���� �gA�;�啸�~�}�u���E�-��t�ߝ�$��g�p_r�~ֲ����=M���F�ɹ�F��Q[�kڠD��Ej�]��~�z����;m{݃�>�
��\�'z.��1����������?�{O �́Zgyj��������4�>���[�ϐ󟽳�ߏrC�o\�F�������w�u}��}��3���ľ����;C0�<�-�����`��w��6���~�ΓZ�k:O�<�a�g�ˌ<�I���s�yω4���~h����9�N��*�O�9�?���[���=緌:Qz�� �{�~�8+gϹ/���Ӗ3�=�ύ2��g1���y�n�7�inK��m���&�z�mz6n������)���)���p�` y0t��.t����{���tN������[9MO�i�!g�,7���\+��`Cm�i�����<������xL��[pT�cZ;kO�1z���:��wv��bo�.�#x���Y24�Lꀳ�۴l?D������I<�l�i��v����.S��1l�O�2�?���u\���<�~����\&Bo���]��o�5��d4�s�6?����E��\����L����La�n�:H���:M��pj9M��Ӕ�g���D�������8M��>\�'�q��f?��c��N��;Cȉ��N���� ��=�N�F?�F��N���4��i�F���QNopz�������v���N'�w�3�x ~ �\����ߍ�$͆�Oӝ���T#m���O����[ڼ)��N�6��'��ZK�)�B�[
�et����p��ۦ�/���
�� ��O�w�[]O���l]#��}����䪏���w�s�\�hS?��SQ�|���8����S]L�|\�,S� �-�����H�oeq���|Ir,�����R~	pp�ٯ��uE��/?L����ſ��_�7���tz7�e��&���\�y��4N��Fg�ĕ4�_�[���U+������\>�',o<Nz
K"�;��zA�c�����%���4XSM��� ����5v+�߉��ͅ�愯��������p?���4NW�Z8N�<��2ߞ1��m&�ͻ��A����$���
5����U���a��B5�Ԙ[�-����������7����4MSZ4���@��A�����l���y�cB��=L���m0$t���:V��0M]��8E�0�jA����6��zL��i+@��k@�\�&:�qfD��7}����{-�b���,>6��
�&5ւ6��*4�'�8K��8��_-ט��
����8.�؝�avN�*�푾�T�;٪��ڈ,N�t릲U/��@}�2�~�eP&�q�$7E�^h��G��8��`6zXZ�P��n
�D,��h� �/}u�P��S����9�ٙ��;�k��IҠ��׏yS�f��@��׀4W���&X�Ycul���������Ci�j�l���S"\�n�ͩW�yYu�7�~�G~v\�WF/*�V]�ښL�N�<��[\{��L����E:��;\��?�ڻL{c��$���8J�GE���ٮL�K��ˈ����G#т`�<�$)'�PĒ\b��|��X*Bڔ�X��W_�um�6�
���R ��dl߂mB  �zX�(؇�C��E+L��8�EFW�U�2���,�I���H�g�$�"�_`Z��Ar0R*�C�'����VA(�Աy���-��II�<�K�İ,_&q��σ|ԛ�y<*�J0=7��l8�{e��*���R��c��P��������/�I����dʹm���X��)�m[���y�X�r���	�ӧy��pBK�#����cc$�#�
	��R���>�}FG�Zt2!?Êߌ��j�����dVu_��t�`��e��,��y:D�x ��1����V���l�9�X�(QLӵ��$�'�����"Ey�{m�=�l/�\�����1�^�Ű��MN�����Gm�U�@�y$9^&E_��#�LGL&6���I����%�����?ZM،�A���I��Dt���Š/Y��w�0]��lܢǊgvlە�'CtP�240;0;�`ل������P��0DO��8�ݳ���M+�NX��O�� K�|ϫX엒ӈk;b6�1�P�18?I(X#�BG�j��)M��
�D��b��Xnǳ:�K3�O�?T;2��q�?��N���C�:�C�ۑ�4�C�A4)�zyp�;P��P�(�v<�3;n�c�:����*��nj�����۩���B+�'�f1Z�'Ѝ㯦N˴;�m�8�S�+1���-i+���q,&�R�d����w:D5,�L�t䪉����*V�ֱ��]f�,p��k��f‗އC$;����h�n�!%TĐ!jyK����&�a�yGڳX(��F���a,�KM��E�|,o8N��N�;b�]A���Z����ZD�v9�ɲ��rem������Q����A|XjW�T7���-���a��Ʌj�Y� _�Sɸ�^ȸ�'cp���l�.�8c���8�+���@x��`�"�qE�l{�G�t�Ț���$�NdC܄������vh,犻�[�b3t���l�{�M���;��v�xxB���U�|+�B�'��K��rruC��:G.���V�'&}>�r��ו���T(L�������CJ�HU�����忉��j�g��+�$�u焏x.~��Iٗ딮ߺ��/�=wkn�q�sM���o'/�E��;8����B�.�WZ��q�t<�p��y��ZZ��U�J
O�s���R�Ԇq�'䩒���W�����e�`��0������b)_��(L�"��1����LG^�6��8+�:X��}*>թXF/7����H��������F�?��2�>�:v���G�������c���d����a8�G��di7��� �G��£9��2Oze�7�>�nv�Q�M�rT�����ƥ�$#;5zy�O��G��5^W�4�*\8TFi��<X��B�?�+�n��"�'Q~E�BL��ƬH�faiCQ.�����H�	��Ǹ�*
��5%MDh�C�����i�'�j��j��4Hk�/+�޹1��@�)P���D��kE*��ɨ(���$�+����@�ʚ�)U (8� :��R�d!s���!��I���x����$��x����$]��H�<����I[�,�S;�V;K�P;��V;K�V;K"N#��������&jlZ�<�i�v��������6j�#}P�T�U��G;K�F;��,Ic����Β�G;C�O�ک�"i��%qjg�jgIjg�jgI�j�IH�X�f����q��b5rR�����dj��x"$����&��X<ZvH���Br*�l�̠+$�z@Kɭ��"AR����q������wz@��[�&8P��y܋���g��c�F=1,𕹅%@�.IBG�E��(�����E���Х#��,,}�����n�EØѐ��K��=�yht�=�q�B�_�`���P���褿�b�
��R��KP��ؾX����U�΁���`�@�u����!e6��n��QC�ƢGDY��]��$���V�c�]����`U�E��mi�c��궴��%+��0F�Ƞ�m4v9�vO�,��p\���61��w��'>5�h�SS:��h��� D� r�\LF} �Uk9J�t9I�Q�Wg#٩Z�lx�ؐf���� ��\Z�����\�|4��5!�\ʸl�̣Kc�����z��� N��8Dr����8�G*a���v8E�&�G��8���[Ȇ4	 �� }�frbxȤ~����u�g�� ��� L/�yi�gs![�'�#s�������l�A��IG�`�C    �[��<��O�l��ۚ���Xn�Ld���V��zd��YLߐ�j���l>��AJ9�Eè4��0)��hDTWPJ#��eR��E��4#��,U��jN��9j|9���\l��ٞ=��j'����<dC
a�x:i���V��Og�x�;9�!�;��<���2L������t"�G&a7GR�t�������RL��UJ��T%�A��/*᭶	(2jBa��!��bA����ͳ���&Y�X�yH�*��KFR,�;��y����+��
_���m��Y�7�A���M�\ntLS����C�N��X���hY��G�8�l\4�eϐ�A��ʐXbKCb��icG<����Ĳ�� ��4� 0%��Sc�� �weApMk�si�Y�M�T�l�Y�y��5��Ė>���A,��bq|�:�1xdxς�m:Mԡ,�%�� ��ւXp3bq,�egA4�[����&��L�������aK����$�V���;��D 1�yX��(_�a�b+<m�(�x���Q�!�h�Z������ ����퓝�x]�w��/��c7Mv��7�}�Ʌ%U��n�\D�%��ыr�d�˽��(�M��n���OF��o���%+O(��ǧ�	^)
�.���m��a�0����>��1��H��c8C��ǀ��ֺ*[�f��.��c�n̂xdEYy&-H�]�:�)S��.�'4���d���XB�n!�����>�������3&���XV#cbiM��'�B
�5����РX��A�=�b1�e52(��ؠX��A1 ����A1��;4(�gP,FϠXL�bY���56(��kP4+��d_	,�i�
���ǖx����<
�D�^$�$уɀI���|�)�\.�)-�5BS�H������8Z�H"��ŏ�"�pQ�b�"�a�H��n�zp�eԂ�r@h�M�����6�/$�OM�)gRg;���jN%����zBoF�t���V�+a��wa�#,B��ԏ|��F#T�uS0Q]6=�$þTQ�^9���U����Q�,����$S95�/*�E|���\�5VT�O'�(�_a�&?U���(��e�]�p�;5
**�^/�Ӷ�}�M���4�u�1��*\�td���	r�X����R�n��zy���,ΊyBK橸5k�5�6�����<'?R��=�^O�r��^եc��Z�Wڇ����a,$ei��IR�'�����TӍ���w�<�&��r������&�Hz��S��j��-��o�t�gN(H7�� ��7���+~(��&Á��M:�d\�4jl�0j��00�����<�'U���Na�NC/ot�5� wR$��|��A�Jh4��Q�9j��č���x%�JH�Ɠ0	��D0 m��`�������'kp}��D���E����F>��@�0 �Ȳ�?�&�qF6��JX��|��J�0��-|�@�:t�Ǉ�^Mo�����/(-�ZC���	�ӃV�K�N2��9Z�FQ2G���(J�h�2E�'Z�C��q�����;%��O��v	��������F�v�T���4��!q3lB*R�iu��˸��6vn�S�X�TfyiWE�F�el���푺6?���:TE�
�n!bV�F��
�.�$����~�B"��$wɏ&����H�LV%�6�5�};n�d�Ha�rCU-0�0�JT:U�,�YJ��dF�V�M�L��ަCf��xU���β�g�h�*�F�)VMG�̈�bx2-=ϴfK�Y�#tZdƚ��6:dZz>u,����@����.#��`�ޕ�?����.X��9h���<������9 ��W�\�;�c*z�3X�{��/t�}Y�9x��� �)!f��ལq��8P|�3b��}T�L�]^�!��M�к�I=��5�WϜ�^3h=ӂ{�؅�������c>��I�N�iV�Fq�.�p�Rs��x� �B��*Ϯ�aye��qw;�u�Γx��/?)"r�Cd�?*r���2a*��J�H�TT�j�:*#���� �N;�ATdC��*��?�UD��i�H�Ω9���G]�6\��Ʉ�36d.���aa:B>��d�z"@l���w���8a�T6�y\�A��d��d0��'�j��f`�T��]LNzy2�)0��$�'=��h��c�t�U�BM��56}����Yj#�gi�M�%70}����Y�Q�����X��� �C�c��Y\c�g��L��62}����Yr�gY�L��e�]c=A��.��<�^�� sd���i� �_� �Aj����,z�K��<ηx|x�~��ggY�(#����x�Ł��`5?.q���Y#��#
4������q�Gel�w*�a��lB-�|x�}��Q���0�N��^^�&c��1�B��tʚ(���p6����QeNN�0uʝ(d�0�
ya���(d�[0��)
��.G@�գvF��>�����5�3���X\#;ciM쌅5�3��C�Q��с���p;cq���5�3���XZ;ca��űv��ngt��Ë��X\3;cq���5�3����XX3;cq��ф��BP�?M/n�%�b�N_Fi�e|N���`���  � z���w*6�B��΅^��y���(Q~�Zz�
�:��eiͿ�gB��E'`�}xZF%��ZH�a�1�/f� <A�_��Z|1�aO5�Dy4*��XU`��ZC_�X��Y�G�L�h{�ܞ��G[_[�#u+���,���"�W�y�J(�m�a��.l{�k��)`�����-�9(i:
�#��^e�J�SJ+(i�6��u��������1�F�N�q��ſ�Yz�EB�
ҏOЍC���n{�d��2{B�x��f� ��M"}����B����l$ߚ+�	�(�֐,N�<�.��Q�>u{h�	ە	Cj6G�zX�Um�"��420����s���������:Ջ�������7��a��iC���h�!w@�7$�����za�I��Ǟ:k]͐�hruO�R��a�zDr�&�Q$c�a������fz7_ś��ш�~��x��{DH�����I)��z�O��a28�|��Uv8�Yr�I���HZU<�2���q����W�`ƥ���������H���_o���=OCw���aң)`��0�O��oC�Ѓ�$�b5W'��UZd/��O�Z�"�j�EEY=�Z�La�������}�j!E��-E�t�6R9�"����Y��Y�R��r���OT����&��x�$���Đ�?V9C�� VA#bS�W�/|a79`%�8�1+p��7�HwZY񢠽���l�+
�Lg:n���"$팃b��qf�🮀Y|+��6����WMW�GVs�V�8���Q�\���P���E>E��de��d�i��$ˍ+��vS������I?����#1����bO���دuLtR������/���)��릸(<����.��C��)n�)��VNr�!#�n͈
�3w�Đ�f�@�;Z~Ȗ[?)��x�%%�U{F�Ȁ�c�RD����#2n��$]b{C���Ny�U�d(/���k�X\� B:�\Z#�#��G$q��9��V��*N�6mR�	�[��~�I�]D!�Z�!p��rR/y�L��QN^�U$hV�*<VP���7��dI��D�x�T�\٤O��g�8()i��s�j|���#��ǐi���މ�|�j�oM��mo|2�)��s唂�Gb
�NjT;��Ӹ��aD�avI*���oͪ[Li�ˀ�;��� u�G����	�Z�}B"��B��e����͞&?	O#���(ϰyE S���Lp�d{�"U�LmA��+l��:�,�hd�k1Vy4��א��O6X_}�f��LS�e���Vx�"���29�#-�5>	���A�����|r�8�b���x��N)
$��(9��n���dT�I�eG(CG&���ʔVi�f`C�@��&yL8w���)�/g���� �%l "Nr1��i �  �^)���_b�刼ĸz�{C���Q �b�
}�BUO
��9Q
 ��>�!I�j��=�sy�n�6,��}(1����wX,�
A�#@s��G	���l*A��6RK�mq���=��	���y"�C�e�a�IS�]�M%;t��1�Lk�[�V�BBJ� �X"|azE\���b �l0uػQJ�B�ņ,OGD�b�#�īrJ2���� ��{���Z����������T�8�̔�{2E���!��q�lT-�(�1��u�+��v@6_OC �4���`���X��"()��K4�C����Jp���X�1k!ב� �L� `WV�6�\UH���O��5"�̆DsKA/+w�2x\E~���_S8�U�t<���ş�E��,�`�u����z٘�&��"�U`��CHx�OYO�qz"lG"��װt;h�:	��|�N٪��3��A)�Br�9�zE�&�X��h����0���Q�-�%�(K5g��?$���W�E7z�P�@��T��8r�D�"���.��B$t�e|T��T5�X�P�i�[��Xx$�~��  ap�=���?�$l�&���Y�঄'�C��(���^���w�h2ymm����һ��]�����HPEŔ��ᮇ�]��?�Ģ8���T�f?3F^q�m��W?\��Y���"�I�A�`��v #��B��~�c��'�xQ񝂁C{��)p��e��}i4����R4(���ՉuBC��o2L��O�r�v��aB���<>�J�	�|��D'ņQMC^A�h������u�>�ݫ�H؋���a�a�I�~Bu��N'gX���70�x�	�be�34VfǊMgh�:�J~�81�(�tF��C��-� Vږ��W]�Dm��>��X��k�h�{V:�i�AxɀF��V*:�,��J��w���/j�5�M�<:��Zh���o��S�ط��T��Y��E��BC�9�"�+��\�h����ۅ�v?����%�d���)
4�(y<��Ά#8��N��� ��zh��s�db�jwLb�B���cT��c�Mb�j�&1F5m�� �c��O��@G$�(�S$�(��1
ttb��gmj&�xxҦFb���g6H���M:1���1uc<<S;1���/��E���*��d�
w��w��UUa�/�n�d�f��(�� z�*v+$�� �Q�0��`�S�q�:�/��(/#�	z
����2�5�x&�.�$dT��F��%瑞��1χb�2��h�>E���r�DW���Q�3�,Ar��_/zK���kmH4{b�?���{��;h�v���v'1�A��<xs ����0X6G�T��I4�F衅"6Kk� jd�iP�&�qh�p��o��r)n�v��wk����~��AKQhq�hOu�pG�;KzQ�Iҭ=EҭB�O�U�'H��$d1��F�q�:�$Hz��}�5�0.�֥!!�~����>$	購����1� �q��::�Fq�����E�t^Kfu\N0��U+P���v/�$����'Ȣ�d�k�(�@G'�(�$�(ұ�2��u%�i\��_����K#�&����~+��$Ha���؈���I��ƶ���0�֕��ZYd4�o%���19dll[�ᮕJ��[$��6�?��Ed��W�`��qّ5Gh d�Y�#��=f�ZV�I,d)a����B�:T���5���8�=N���g�%��˯��Q�Q�Ϫ.NW%��I����.�>o�ΣAe@�yC����i4����<�#Ǎd����Z���1����tF�D߅
UW�=�N;m�(�.����^^��D�"�7�llOz��	B��6��I k��� ]��h�ͪp�-�u�@st����^�
�h
4���hx�����`k�TXP��<���4��,�vq���c�����	�d.�jwL.�B���sT��r�M.�j�&@5m�� �s��O��@G�(d������ �h�F3�ָf���x�F.��'�7���,{:����us|<�^;��S���x=����zz�u>���sZ��zMN�$��d�^��b�^����+���K�;��Q��Q�<CT�oq�(��N�1g�
��e2R�L9�F���~��X�{��XE;f;V!�x;VQ�ێ��c>T�V�Tۖ�T�#'(J��	��h�9*�g��|��J(X�,�[���)T�#s
帜B	�vۚ��*��'�s�	�D`7�'p(�S%p(�	���r���4�eT�éE��m��:&V�cffI�l��%9H���HZ��>�V�'8�V�c��%	)�IQ��I#��f-J(��"P��'�D>M�mt��'-��O���Z���jB����>*�-H�Y�ԙNd�DGO��"9H��MЬ��4W�c7���6ͱ��d"	�J�l��l�"� ���f��z�{��î��|�﯄��:�w�P���Y�hXi[V�3�Y&O��:0Hp�lt}�&�BY!�����=c��8J�i�W.�<>n��<m �=��.�N�@�H�6Q5ؤ��J`�����
�L��U�>� hCy`���>_���� $ot��J���)�٘��58���^�i��Y�zM��qq "�Fc�ڸ5+h"2
W}k4
�+v�w�e{ܼЋq�a���.�+���7�iG�m��g��~E��s��3s������~s�~��f����*��a�"q��'����[#8:)���}n�`���Ig0�O:V?2&n��m�c�i���p�0}�b\�?l��kd�wo�~1f�a���§i'*�U?:��&~�t�6>}{���cp�` y�B��'#�>.�NoJq�R���[C�?�'}�>,����q��ǿ��óů�Ƿ�w�^8���.o��<{a������ǻ��R4�������Çg��������6L������Y�_B���3���<o�q�i�	���z�u�K�;ӭ_�9^�qfvg긳��/��º�-�/y��?]>|�˿�������>���7��fo��H>>{����3�g/�}\ވ�3��q�pk���2=ȅ �"z�z(�S�g�[A{0�ݿ�������?]5|��ֿ&}��� Ѓ���~z���_ �'f�2�>����eL�vR�.������x|[i�|��#�7�������|\��������?������O�>��~�x{#�g����]�U�����������Q�eӇ���������7������B�L?�Ĺ��l7���e-�`f��t����ܚ_{3ّfdw��Z��t�ufs����Kgq�p�ӹ��H�U��Xꍄ�������ˁ%U�����m��^�x\~~4n޾_���]�����v�&��o���f#����P�/�m�?T�XRӏ�v�WO�k���{1I�~S������k�u���IN��r9���l�O��t�9��K�������������ø      �      x������ � �      �      x������ � �          �   x�m�M�@ ���+���Ő��L�G"m�Mh��v}��]ݞy y�`*g]0%/�Pl�3�͋���0�U�+��FKo�C��;�m�@��%�x�$��AX���]����&���Rtz�P{q>�;�yR�qw��̻�jE<a~� sI�%e6g�6.�}�K?]�-��7 Z0Z�a��w���4��<A�     