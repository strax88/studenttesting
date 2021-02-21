--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-02-21 21:12:09

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

--
-- TOC entry 3267 (class 1262 OID 17366)
-- Name: testing_db; Type: DATABASE; Schema: -; Owner: admin
--

CREATE DATABASE testing_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'ru-RU.UTF8';


ALTER DATABASE testing_db OWNER TO admin;

\connect testing_db

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
-- TOC entry 221 (class 1259 OID 17501)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO admin;

--
-- TOC entry 220 (class 1259 OID 17499)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO admin;

--
-- TOC entry 3268 (class 0 OID 0)
-- Dependencies: 220
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 223 (class 1259 OID 17511)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO admin;

--
-- TOC entry 222 (class 1259 OID 17509)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO admin;

--
-- TOC entry 3269 (class 0 OID 0)
-- Dependencies: 222
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 219 (class 1259 OID 17493)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO admin;

--
-- TOC entry 218 (class 1259 OID 17491)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO admin;

--
-- TOC entry 3270 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 227 (class 1259 OID 17557)
-- Name: background_task; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.background_task (
    id integer NOT NULL,
    task_name character varying(190) NOT NULL,
    task_params text NOT NULL,
    task_hash character varying(40) NOT NULL,
    verbose_name character varying(255),
    priority integer NOT NULL,
    run_at timestamp with time zone NOT NULL,
    repeat bigint NOT NULL,
    repeat_until timestamp with time zone,
    queue character varying(190),
    attempts integer NOT NULL,
    failed_at timestamp with time zone,
    last_error text NOT NULL,
    locked_by character varying(64),
    locked_at timestamp with time zone,
    creator_object_id integer,
    creator_content_type_id integer,
    CONSTRAINT background_task_creator_object_id_check CHECK ((creator_object_id >= 0))
);


ALTER TABLE public.background_task OWNER TO admin;

--
-- TOC entry 225 (class 1259 OID 17545)
-- Name: background_task_completedtask; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.background_task_completedtask (
    id integer NOT NULL,
    task_name character varying(190) NOT NULL,
    task_params text NOT NULL,
    task_hash character varying(40) NOT NULL,
    verbose_name character varying(255),
    priority integer NOT NULL,
    run_at timestamp with time zone NOT NULL,
    repeat bigint NOT NULL,
    repeat_until timestamp with time zone,
    queue character varying(190),
    attempts integer NOT NULL,
    failed_at timestamp with time zone,
    last_error text NOT NULL,
    locked_by character varying(64),
    locked_at timestamp with time zone,
    creator_object_id integer,
    creator_content_type_id integer,
    CONSTRAINT background_task_completedtask_creator_object_id_check CHECK ((creator_object_id >= 0))
);


ALTER TABLE public.background_task_completedtask OWNER TO admin;

--
-- TOC entry 224 (class 1259 OID 17543)
-- Name: background_task_completedtask_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.background_task_completedtask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.background_task_completedtask_id_seq OWNER TO admin;

--
-- TOC entry 3271 (class 0 OID 0)
-- Dependencies: 224
-- Name: background_task_completedtask_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.background_task_completedtask_id_seq OWNED BY public.background_task_completedtask.id;


--
-- TOC entry 226 (class 1259 OID 17555)
-- Name: background_task_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.background_task_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.background_task_id_seq OWNER TO admin;

--
-- TOC entry 3272 (class 0 OID 0)
-- Dependencies: 226
-- Name: background_task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.background_task_id_seq OWNED BY public.background_task.id;


--
-- TOC entry 217 (class 1259 OID 17469)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: admin
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


ALTER TABLE public.django_admin_log OWNER TO admin;

--
-- TOC entry 216 (class 1259 OID 17467)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO admin;

--
-- TOC entry 3273 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 215 (class 1259 OID 17459)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO admin;

--
-- TOC entry 214 (class 1259 OID 17457)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO admin;

--
-- TOC entry 3274 (class 0 OID 0)
-- Dependencies: 214
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 201 (class 1259 OID 17369)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO admin;

--
-- TOC entry 200 (class 1259 OID 17367)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO admin;

--
-- TOC entry 3275 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 228 (class 1259 OID 17605)
-- Name: django_session; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO admin;

--
-- TOC entry 213 (class 1259 OID 17429)
-- Name: studenttesting_answer; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.studenttesting_answer (
    id integer NOT NULL,
    text character varying(500) NOT NULL,
    correct boolean NOT NULL,
    question_id integer NOT NULL,
    test_id integer NOT NULL
);


ALTER TABLE public.studenttesting_answer OWNER TO admin;

--
-- TOC entry 212 (class 1259 OID 17427)
-- Name: studenttesting_answer_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.studenttesting_answer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studenttesting_answer_id_seq OWNER TO admin;

--
-- TOC entry 3276 (class 0 OID 0)
-- Dependencies: 212
-- Name: studenttesting_answer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.studenttesting_answer_id_seq OWNED BY public.studenttesting_answer.id;


--
-- TOC entry 203 (class 1259 OID 17380)
-- Name: studenttesting_customuser; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.studenttesting_customuser (
    id integer NOT NULL,
    last_login timestamp with time zone,
    full_name character varying(250) NOT NULL,
    email character varying(30) NOT NULL,
    phone character varying(20),
    password character varying(150) NOT NULL,
    avatar character varying(300),
    user_type_id integer,
    is_staff boolean NOT NULL,
    is_superuser boolean NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.studenttesting_customuser OWNER TO admin;

--
-- TOC entry 230 (class 1259 OID 17623)
-- Name: studenttesting_customuser_groups; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.studenttesting_customuser_groups (
    id integer NOT NULL,
    customuser_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.studenttesting_customuser_groups OWNER TO admin;

--
-- TOC entry 229 (class 1259 OID 17621)
-- Name: studenttesting_customuser_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.studenttesting_customuser_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studenttesting_customuser_groups_id_seq OWNER TO admin;

--
-- TOC entry 3277 (class 0 OID 0)
-- Dependencies: 229
-- Name: studenttesting_customuser_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.studenttesting_customuser_groups_id_seq OWNED BY public.studenttesting_customuser_groups.id;


--
-- TOC entry 202 (class 1259 OID 17378)
-- Name: studenttesting_customuser_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.studenttesting_customuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studenttesting_customuser_id_seq OWNER TO admin;

--
-- TOC entry 3278 (class 0 OID 0)
-- Dependencies: 202
-- Name: studenttesting_customuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.studenttesting_customuser_id_seq OWNED BY public.studenttesting_customuser.id;


--
-- TOC entry 232 (class 1259 OID 17633)
-- Name: studenttesting_customuser_user_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.studenttesting_customuser_user_permissions (
    id integer NOT NULL,
    customuser_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.studenttesting_customuser_user_permissions OWNER TO admin;

--
-- TOC entry 231 (class 1259 OID 17631)
-- Name: studenttesting_customuser_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.studenttesting_customuser_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studenttesting_customuser_user_permissions_id_seq OWNER TO admin;

--
-- TOC entry 3279 (class 0 OID 0)
-- Dependencies: 231
-- Name: studenttesting_customuser_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.studenttesting_customuser_user_permissions_id_seq OWNED BY public.studenttesting_customuser_user_permissions.id;


--
-- TOC entry 205 (class 1259 OID 17393)
-- Name: studenttesting_menu; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.studenttesting_menu (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    url character varying(255) NOT NULL,
    role integer,
    "position" integer NOT NULL,
    CONSTRAINT studenttesting_menu_position_check CHECK (("position" >= 0))
);


ALTER TABLE public.studenttesting_menu OWNER TO admin;

--
-- TOC entry 204 (class 1259 OID 17391)
-- Name: studenttesting_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.studenttesting_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studenttesting_menu_id_seq OWNER TO admin;

--
-- TOC entry 3280 (class 0 OID 0)
-- Dependencies: 204
-- Name: studenttesting_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.studenttesting_menu_id_seq OWNED BY public.studenttesting_menu.id;


--
-- TOC entry 211 (class 1259 OID 17418)
-- Name: studenttesting_question; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.studenttesting_question (
    id integer NOT NULL,
    text character varying(500) NOT NULL,
    "position" integer NOT NULL,
    test_id integer NOT NULL
);


ALTER TABLE public.studenttesting_question OWNER TO admin;

--
-- TOC entry 210 (class 1259 OID 17416)
-- Name: studenttesting_question_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.studenttesting_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studenttesting_question_id_seq OWNER TO admin;

--
-- TOC entry 3281 (class 0 OID 0)
-- Dependencies: 210
-- Name: studenttesting_question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.studenttesting_question_id_seq OWNED BY public.studenttesting_question.id;


--
-- TOC entry 234 (class 1259 OID 17671)
-- Name: studenttesting_result; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.studenttesting_result (
    id integer NOT NULL,
    completion_date timestamp with time zone NOT NULL,
    answer_id integer NOT NULL,
    question_id integer NOT NULL,
    user_id integer NOT NULL,
    test_id integer NOT NULL
);


ALTER TABLE public.studenttesting_result OWNER TO admin;

--
-- TOC entry 233 (class 1259 OID 17669)
-- Name: studenttesting_result_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.studenttesting_result_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studenttesting_result_id_seq OWNER TO admin;

--
-- TOC entry 3282 (class 0 OID 0)
-- Dependencies: 233
-- Name: studenttesting_result_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.studenttesting_result_id_seq OWNED BY public.studenttesting_result.id;


--
-- TOC entry 207 (class 1259 OID 17402)
-- Name: studenttesting_test; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.studenttesting_test (
    id integer NOT NULL,
    name character varying(250) NOT NULL
);


ALTER TABLE public.studenttesting_test OWNER TO admin;

--
-- TOC entry 206 (class 1259 OID 17400)
-- Name: studenttesting_test_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.studenttesting_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studenttesting_test_id_seq OWNER TO admin;

--
-- TOC entry 3283 (class 0 OID 0)
-- Dependencies: 206
-- Name: studenttesting_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.studenttesting_test_id_seq OWNED BY public.studenttesting_test.id;


--
-- TOC entry 209 (class 1259 OID 17410)
-- Name: studenttesting_usertype; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.studenttesting_usertype (
    id integer NOT NULL,
    type_name character varying(50) NOT NULL
);


ALTER TABLE public.studenttesting_usertype OWNER TO admin;

--
-- TOC entry 208 (class 1259 OID 17408)
-- Name: studenttesting_usertype_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.studenttesting_usertype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.studenttesting_usertype_id_seq OWNER TO admin;

--
-- TOC entry 3284 (class 0 OID 0)
-- Dependencies: 208
-- Name: studenttesting_usertype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.studenttesting_usertype_id_seq OWNED BY public.studenttesting_usertype.id;


--
-- TOC entry 2970 (class 2604 OID 17504)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2971 (class 2604 OID 17514)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2969 (class 2604 OID 17496)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2974 (class 2604 OID 17560)
-- Name: background_task id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.background_task ALTER COLUMN id SET DEFAULT nextval('public.background_task_id_seq'::regclass);


--
-- TOC entry 2972 (class 2604 OID 17548)
-- Name: background_task_completedtask id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.background_task_completedtask ALTER COLUMN id SET DEFAULT nextval('public.background_task_completedtask_id_seq'::regclass);


--
-- TOC entry 2967 (class 2604 OID 17472)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2966 (class 2604 OID 17462)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2958 (class 2604 OID 17372)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2965 (class 2604 OID 17432)
-- Name: studenttesting_answer id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_answer ALTER COLUMN id SET DEFAULT nextval('public.studenttesting_answer_id_seq'::regclass);


--
-- TOC entry 2959 (class 2604 OID 17383)
-- Name: studenttesting_customuser id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_customuser ALTER COLUMN id SET DEFAULT nextval('public.studenttesting_customuser_id_seq'::regclass);


--
-- TOC entry 2976 (class 2604 OID 17626)
-- Name: studenttesting_customuser_groups id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_customuser_groups ALTER COLUMN id SET DEFAULT nextval('public.studenttesting_customuser_groups_id_seq'::regclass);


--
-- TOC entry 2977 (class 2604 OID 17636)
-- Name: studenttesting_customuser_user_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_customuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.studenttesting_customuser_user_permissions_id_seq'::regclass);


--
-- TOC entry 2960 (class 2604 OID 17396)
-- Name: studenttesting_menu id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_menu ALTER COLUMN id SET DEFAULT nextval('public.studenttesting_menu_id_seq'::regclass);


--
-- TOC entry 2964 (class 2604 OID 17421)
-- Name: studenttesting_question id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_question ALTER COLUMN id SET DEFAULT nextval('public.studenttesting_question_id_seq'::regclass);


--
-- TOC entry 2978 (class 2604 OID 17674)
-- Name: studenttesting_result id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_result ALTER COLUMN id SET DEFAULT nextval('public.studenttesting_result_id_seq'::regclass);


--
-- TOC entry 2962 (class 2604 OID 17405)
-- Name: studenttesting_test id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_test ALTER COLUMN id SET DEFAULT nextval('public.studenttesting_test_id_seq'::regclass);


--
-- TOC entry 2963 (class 2604 OID 17413)
-- Name: studenttesting_usertype id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_usertype ALTER COLUMN id SET DEFAULT nextval('public.studenttesting_usertype_id_seq'::regclass);


--
-- TOC entry 3248 (class 0 OID 17501)
-- Dependencies: 221
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3250 (class 0 OID 17511)
-- Dependencies: 223
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3246 (class 0 OID 17493)
-- Dependencies: 219
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.auth_permission VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO public.auth_permission VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO public.auth_permission VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO public.auth_permission VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO public.auth_permission VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO public.auth_permission VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO public.auth_permission VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO public.auth_permission VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO public.auth_permission VALUES (21, 'Can add completed task', 6, 'add_completedtask');
INSERT INTO public.auth_permission VALUES (22, 'Can change completed task', 6, 'change_completedtask');
INSERT INTO public.auth_permission VALUES (23, 'Can delete completed task', 6, 'delete_completedtask');
INSERT INTO public.auth_permission VALUES (24, 'Can view completed task', 6, 'view_completedtask');
INSERT INTO public.auth_permission VALUES (25, 'Can add task', 7, 'add_task');
INSERT INTO public.auth_permission VALUES (26, 'Can change task', 7, 'change_task');
INSERT INTO public.auth_permission VALUES (27, 'Can delete task', 7, 'delete_task');
INSERT INTO public.auth_permission VALUES (28, 'Can view task', 7, 'view_task');
INSERT INTO public.auth_permission VALUES (29, 'Can add custom user', 8, 'add_customuser');
INSERT INTO public.auth_permission VALUES (30, 'Can change custom user', 8, 'change_customuser');
INSERT INTO public.auth_permission VALUES (31, 'Can delete custom user', 8, 'delete_customuser');
INSERT INTO public.auth_permission VALUES (32, 'Can view custom user', 8, 'view_customuser');
INSERT INTO public.auth_permission VALUES (33, 'Can add пункт меню', 9, 'add_menu');
INSERT INTO public.auth_permission VALUES (34, 'Can change пункт меню', 9, 'change_menu');
INSERT INTO public.auth_permission VALUES (35, 'Can delete пункт меню', 9, 'delete_menu');
INSERT INTO public.auth_permission VALUES (36, 'Can view пункт меню', 9, 'view_menu');
INSERT INTO public.auth_permission VALUES (37, 'Can add test', 10, 'add_test');
INSERT INTO public.auth_permission VALUES (38, 'Can change test', 10, 'change_test');
INSERT INTO public.auth_permission VALUES (39, 'Can delete test', 10, 'delete_test');
INSERT INTO public.auth_permission VALUES (40, 'Can view test', 10, 'view_test');
INSERT INTO public.auth_permission VALUES (41, 'Can add user type', 11, 'add_usertype');
INSERT INTO public.auth_permission VALUES (42, 'Can change user type', 11, 'change_usertype');
INSERT INTO public.auth_permission VALUES (43, 'Can delete user type', 11, 'delete_usertype');
INSERT INTO public.auth_permission VALUES (44, 'Can view user type', 11, 'view_usertype');
INSERT INTO public.auth_permission VALUES (45, 'Can add question', 12, 'add_question');
INSERT INTO public.auth_permission VALUES (46, 'Can change question', 12, 'change_question');
INSERT INTO public.auth_permission VALUES (47, 'Can delete question', 12, 'delete_question');
INSERT INTO public.auth_permission VALUES (48, 'Can view question', 12, 'view_question');
INSERT INTO public.auth_permission VALUES (49, 'Can add answer', 13, 'add_answer');
INSERT INTO public.auth_permission VALUES (50, 'Can change answer', 13, 'change_answer');
INSERT INTO public.auth_permission VALUES (51, 'Can delete answer', 13, 'delete_answer');
INSERT INTO public.auth_permission VALUES (52, 'Can view answer', 13, 'view_answer');
INSERT INTO public.auth_permission VALUES (53, 'Can add result', 14, 'add_result');
INSERT INTO public.auth_permission VALUES (54, 'Can change result', 14, 'change_result');
INSERT INTO public.auth_permission VALUES (55, 'Can delete result', 14, 'delete_result');
INSERT INTO public.auth_permission VALUES (56, 'Can view result', 14, 'view_result');


--
-- TOC entry 3254 (class 0 OID 17557)
-- Dependencies: 227
-- Data for Name: background_task; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3252 (class 0 OID 17545)
-- Dependencies: 225
-- Data for Name: background_task_completedtask; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3244 (class 0 OID 17469)
-- Dependencies: 217
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.django_admin_log VALUES (1, '2021-02-16 16:53:59.595225+07', '2', 'admin@task.ru', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (2, '2021-02-16 16:54:12.961576+07', '1', 'kstr88@mail.ru', 2, '[{"changed": {"fields": ["\u0424\u0418\u041e", "\u041d\u043e\u043c\u0435\u0440 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430"]}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (3, '2021-02-16 16:55:40.690699+07', '1', 'Администратор', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log VALUES (4, '2021-02-16 16:55:49.773236+07', '2', 'Преподаватель', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log VALUES (5, '2021-02-16 16:55:58.052255+07', '3', 'Пользователь', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log VALUES (6, '2021-02-16 16:56:57.243851+07', '1', 'kstr88@mail.ru', 2, '[{"changed": {"fields": ["User type"]}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (7, '2021-02-16 16:57:09.057842+07', '2', 'admin@task.ru', 2, '[{"changed": {"fields": ["User type"]}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (8, '2021-02-16 17:00:03.397278+07', '3', 'Студент', 2, '[{"changed": {"fields": ["\u0422\u0438\u043f \u043f\u043e\u043b\u044c\u0437\u043e\u0432\u0430\u0442\u0435\u043b\u044f"]}}]', 11, 1);
INSERT INTO public.django_admin_log VALUES (9, '2021-02-16 17:00:11.10311+07', '3', 'ivanovsr@mail.ru', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (10, '2021-02-17 09:01:56.662032+07', '4', 'kononovkp@mai.ru', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (11, '2021-02-17 09:18:03.302621+07', '5', 'ivanovsr@mail.ru', 2, '[{"changed": {"fields": ["User type"]}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (12, '2021-02-17 09:18:10.575164+07', '7', 'ivanovpg@yandex.ru', 2, '[{"changed": {"fields": ["User type"]}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (13, '2021-02-17 09:18:22.803917+07', '6', 'kononovkp@mai.ru', 2, '[{"changed": {"fields": ["User type"]}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (14, '2021-02-17 09:18:46.594229+07', '8', 'repinanv@google.com', 2, '[{"changed": {"fields": ["User type"]}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (15, '2021-02-17 09:21:23.330696+07', '7', 'ivanovpg@yandex.ru', 2, '[{"changed": {"fields": ["\u0424\u0418\u041e"]}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (16, '2021-02-17 09:22:11.732089+07', '8', 'repinanv@google.com', 2, '[{"changed": {"fields": ["\u0424\u0418\u041e"]}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (17, '2021-02-17 09:22:33.883636+07', '6', 'kononovkp@mai.ru', 2, '[{"changed": {"fields": ["\u0424\u0418\u041e"]}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (18, '2021-02-17 09:22:43.589389+07', '5', 'ivanovsr@mail.ru', 2, '[{"changed": {"fields": ["\u0424\u0418\u041e"]}}]', 8, 1);
INSERT INTO public.django_admin_log VALUES (19, '2021-02-17 09:37:11.773246+07', '7', 'История', 2, '[{"changed": {"fields": ["Role", "\u041f\u043e\u0437\u0438\u0446\u0438\u044f"]}}]', 9, 1);
INSERT INTO public.django_admin_log VALUES (20, '2021-02-17 09:37:35.43505+07', '9', 'Выход', 2, '[{"changed": {"fields": ["\u0421\u0441\u044b\u043b\u043a\u0430", "Role", "\u041f\u043e\u0437\u0438\u0446\u0438\u044f"]}}]', 9, 1);
INSERT INTO public.django_admin_log VALUES (21, '2021-02-17 09:37:44.99384+07', '6', 'Обратная связь', 2, '[{"changed": {"fields": ["Role", "\u041f\u043e\u0437\u0438\u0446\u0438\u044f"]}}]', 9, 1);
INSERT INTO public.django_admin_log VALUES (22, '2021-02-17 09:37:53.386377+07', '4', 'Тесты', 2, '[{"changed": {"fields": ["Role", "\u041f\u043e\u0437\u0438\u0446\u0438\u044f"]}}]', 9, 1);
INSERT INTO public.django_admin_log VALUES (23, '2021-02-17 09:38:02.933066+07', '2', 'Моя страница', 2, '[{"changed": {"fields": ["Role"]}}]', 9, 1);
INSERT INTO public.django_admin_log VALUES (24, '2021-02-17 09:38:14.917858+07', '8', 'Отчёты', 2, '[{"changed": {"fields": ["Role", "\u041f\u043e\u0437\u0438\u0446\u0438\u044f"]}}]', 9, 1);
INSERT INTO public.django_admin_log VALUES (25, '2021-02-17 09:38:22.175834+07', '5', 'Студенты', 2, '[{"changed": {"fields": ["Role", "\u041f\u043e\u0437\u0438\u0446\u0438\u044f"]}}]', 9, 1);
INSERT INTO public.django_admin_log VALUES (26, '2021-02-17 09:41:41.379872+07', '3', 'Профиль', 2, '[{"changed": {"fields": ["Role"]}}]', 9, 1);
INSERT INTO public.django_admin_log VALUES (27, '2021-02-17 09:41:59.975483+07', '2', 'Моя страница', 2, '[{"changed": {"fields": ["Role"]}}]', 9, 1);
INSERT INTO public.django_admin_log VALUES (28, '2021-02-17 09:42:10.034801+07', '3', 'Профиль', 3, '', 9, 1);
INSERT INTO public.django_admin_log VALUES (29, '2021-02-17 09:44:55.683552+07', '4', 'Анонимный пользователь', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log VALUES (30, '2021-02-17 10:27:49.545348+07', '2', 'Моя страница', 2, '[{"changed": {"fields": ["\u0421\u0441\u044b\u043b\u043a\u0430"]}}]', 9, 1);
INSERT INTO public.django_admin_log VALUES (31, '2021-02-18 19:53:48.344978+07', '12', 'НИОКР подразделяются на:: краткосрочные, среднесрочные - Неверно', 3, '', 14, 1);
INSERT INTO public.django_admin_log VALUES (32, '2021-02-18 19:53:48.355978+07', '11', 'Организационная стратегия интеграции производства и операций, управления трудовыми ресурсами, финансового менеджмента и управления активами, ориентированная на непрерывную балансировку и оптимизацию р', 3, '', 14, 1);
INSERT INTO public.django_admin_log VALUES (33, '2021-02-18 19:53:48.357978+07', '10', 'НИОКР подразделяются на:: краткосрочные, среднесрочные - Неверно', 3, '', 14, 1);
INSERT INTO public.django_admin_log VALUES (34, '2021-02-18 19:53:48.35998+07', '9', 'Организационная стратегия интеграции производства и операций, управления трудовыми ресурсами, финансового менеджмента и управления активами, ориентированная на непрерывную балансировку и оптимизацию р', 3, '', 14, 1);
INSERT INTO public.django_admin_log VALUES (35, '2021-02-20 10:26:17.346691+07', '2', 'Компьютерные технологии', 2, '[]', 10, 1);
INSERT INTO public.django_admin_log VALUES (36, '2021-02-21 17:50:42.312929+07', '1', 'Главная', 3, '', 9, 1);


--
-- TOC entry 3242 (class 0 OID 17459)
-- Dependencies: 215
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.django_content_type VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type VALUES (5, 'sessions', 'session');
INSERT INTO public.django_content_type VALUES (6, 'background_task', 'completedtask');
INSERT INTO public.django_content_type VALUES (7, 'background_task', 'task');
INSERT INTO public.django_content_type VALUES (8, 'studenttesting', 'customuser');
INSERT INTO public.django_content_type VALUES (9, 'studenttesting', 'menu');
INSERT INTO public.django_content_type VALUES (10, 'studenttesting', 'test');
INSERT INTO public.django_content_type VALUES (11, 'studenttesting', 'usertype');
INSERT INTO public.django_content_type VALUES (12, 'studenttesting', 'question');
INSERT INTO public.django_content_type VALUES (13, 'studenttesting', 'answer');
INSERT INTO public.django_content_type VALUES (14, 'studenttesting', 'result');


--
-- TOC entry 3228 (class 0 OID 17369)
-- Dependencies: 201
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.django_migrations VALUES (1, 'studenttesting', '0001_initial', '2021-02-16 16:51:51.270792+07');
INSERT INTO public.django_migrations VALUES (2, 'contenttypes', '0001_initial', '2021-02-16 16:51:51.325793+07');
INSERT INTO public.django_migrations VALUES (3, 'admin', '0001_initial', '2021-02-16 16:51:51.346792+07');
INSERT INTO public.django_migrations VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2021-02-16 16:51:51.369794+07');
INSERT INTO public.django_migrations VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2021-02-16 16:51:51.380794+07');
INSERT INTO public.django_migrations VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2021-02-16 16:51:51.40421+07');
INSERT INTO public.django_migrations VALUES (7, 'auth', '0001_initial', '2021-02-16 16:51:51.45252+07');
INSERT INTO public.django_migrations VALUES (8, 'auth', '0002_alter_permission_name_max_length', '2021-02-16 16:51:51.501508+07');
INSERT INTO public.django_migrations VALUES (9, 'auth', '0003_alter_user_email_max_length', '2021-02-16 16:51:51.51101+07');
INSERT INTO public.django_migrations VALUES (10, 'auth', '0004_alter_user_username_opts', '2021-02-16 16:51:51.521111+07');
INSERT INTO public.django_migrations VALUES (11, 'auth', '0005_alter_user_last_login_null', '2021-02-16 16:51:51.530103+07');
INSERT INTO public.django_migrations VALUES (12, 'auth', '0006_require_contenttypes_0002', '2021-02-16 16:51:51.53272+07');
INSERT INTO public.django_migrations VALUES (13, 'auth', '0007_alter_validators_add_error_messages', '2021-02-16 16:51:51.54172+07');
INSERT INTO public.django_migrations VALUES (14, 'auth', '0008_alter_user_username_max_length', '2021-02-16 16:51:51.552721+07');
INSERT INTO public.django_migrations VALUES (15, 'auth', '0009_alter_user_last_name_max_length', '2021-02-16 16:51:51.561747+07');
INSERT INTO public.django_migrations VALUES (16, 'auth', '0010_alter_group_name_max_length', '2021-02-16 16:51:51.575645+07');
INSERT INTO public.django_migrations VALUES (17, 'auth', '0011_update_proxy_permissions', '2021-02-16 16:51:51.589449+07');
INSERT INTO public.django_migrations VALUES (18, 'auth', '0012_alter_user_first_name_max_length', '2021-02-16 16:51:51.598427+07');
INSERT INTO public.django_migrations VALUES (19, 'background_task', '0001_initial', '2021-02-16 16:51:51.645452+07');
INSERT INTO public.django_migrations VALUES (20, 'background_task', '0002_auto_20170927_1109', '2021-02-16 16:51:51.83143+07');
INSERT INTO public.django_migrations VALUES (21, 'sessions', '0001_initial', '2021-02-16 16:51:51.849425+07');
INSERT INTO public.django_migrations VALUES (22, 'studenttesting', '0002_customuser_user_type', '2021-02-16 16:51:51.870423+07');
INSERT INTO public.django_migrations VALUES (23, 'studenttesting', '0003_auto_20210216_1618', '2021-02-16 16:51:51.987426+07');
INSERT INTO public.django_migrations VALUES (24, 'studenttesting', '0004_auto_20210216_1624', '2021-02-16 16:51:52.038424+07');
INSERT INTO public.django_migrations VALUES (25, 'studenttesting', '0005_customuser_is_active', '2021-02-16 23:09:25.595229+07');
INSERT INTO public.django_migrations VALUES (26, 'studenttesting', '0006_auto_20210216_2335', '2021-02-16 23:35:16.82695+07');
INSERT INTO public.django_migrations VALUES (27, 'studenttesting', '0007_auto_20210217_0905', '2021-02-17 09:05:59.353232+07');
INSERT INTO public.django_migrations VALUES (28, 'studenttesting', '0008_result', '2021-02-17 12:14:00.415834+07');
INSERT INTO public.django_migrations VALUES (29, 'studenttesting', '0009_auto_20210218_1432', '2021-02-18 14:32:15.249869+07');
INSERT INTO public.django_migrations VALUES (30, 'studenttesting', '0010_auto_20210218_1433', '2021-02-18 14:33:54.411502+07');
INSERT INTO public.django_migrations VALUES (31, 'studenttesting', '0011_auto_20210218_1440', '2021-02-18 14:40:05.095034+07');


--
-- TOC entry 3255 (class 0 OID 17605)
-- Dependencies: 228
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3240 (class 0 OID 17429)
-- Dependencies: 213
-- Data for Name: studenttesting_answer; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.studenttesting_answer VALUES (1, 'сообщения, находящиеся в памяти компьютера;', false, 4, 1);
INSERT INTO public.studenttesting_answer VALUES (2, 'сообщения, находящиеся в хранилищах данных;', false, 4, 1);
INSERT INTO public.studenttesting_answer VALUES (3, 'предварительно обработанные данные, годные для принятия управленческих решений;', true, 4, 1);
INSERT INTO public.studenttesting_answer VALUES (4, 'сообщения, зафиксированные на машинных носителях.', false, 4, 1);
INSERT INTO public.studenttesting_answer VALUES (5, 'содержимое баз знаний;', false, 3, 1);
INSERT INTO public.studenttesting_answer VALUES (6, 'необработанные сообщения, отражающие отдельные факты, процессы, события;', true, 3, 1);
INSERT INTO public.studenttesting_answer VALUES (7, 'предварительно обработанная информация;', false, 3, 1);
INSERT INTO public.studenttesting_answer VALUES (8, '4 сообщения, находящиеся в хранилищах данных.', false, 3, 1);
INSERT INTO public.studenttesting_answer VALUES (9, 'Закон убывающей доходности.', false, 2, 1);
INSERT INTO public.studenttesting_answer VALUES (10, 'Закон циклического развития общества.', false, 2, 1);
INSERT INTO public.studenttesting_answer VALUES (11, 'Закон “необходимого разнообразия”.', true, 2, 1);
INSERT INTO public.studenttesting_answer VALUES (12, 'Закон единства и борьбы противоположностей.', false, 2, 1);
INSERT INTO public.studenttesting_answer VALUES (13, 'справедливом распределении материальных благ;', false, 1, 1);
INSERT INTO public.studenttesting_answer VALUES (14, 'удовлетворении духовных потребностей человека;', false, 1, 1);
INSERT INTO public.studenttesting_answer VALUES (15, 'максимальном удовлетворении информационных потребностей отдельных граждан, их групп, предприятий, организаций и т. д. за счет повсеместного внедрения компьютеров и средств коммуникаций.', true, 1, 1);
INSERT INTO public.studenttesting_answer VALUES (16, 'товарные НИОКР, Капитальные НИОКР', true, 8, 2);
INSERT INTO public.studenttesting_answer VALUES (17, 'краткосрочные, среднесрочные', false, 8, 2);
INSERT INTO public.studenttesting_answer VALUES (18, 'стратегически важные, потенциально интересные', false, 8, 2);
INSERT INTO public.studenttesting_answer VALUES (19, 'объективные, субъективные', false, 8, 2);
INSERT INTO public.studenttesting_answer VALUES (20, 'ЕАМ (Enterprise asset management)', false, 7, 2);
INSERT INTO public.studenttesting_answer VALUES (21, 'ERP (Enterprise Resource Planning)', true, 7, 2);
INSERT INTO public.studenttesting_answer VALUES (22, 'PLM (Product Lifecycle Management)', false, 7, 2);
INSERT INTO public.studenttesting_answer VALUES (23, 'APS (American Physical Society)', false, 7, 2);


--
-- TOC entry 3230 (class 0 OID 17380)
-- Dependencies: 203
-- Data for Name: studenttesting_customuser; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.studenttesting_customuser VALUES (6, '2021-02-20 15:24:14.605188+07', 'Кононов Константин Петрович', 'kononovkp@mai.ru', '+79360003580', 'pbkdf2_sha256$216000$gTwDKU2AYdAo$GxfpNApVsjDtphc+L4YWjt+y+IvLqY7HIqC4GLNqFbQ=', '/media/avatar3_student_6.png', 3, false, false, true);
INSERT INTO public.studenttesting_customuser VALUES (1, '2021-02-18 14:24:31.453554+07', 'Стрелковский Кирилл Константинович', 'kstr88@mail.ru', '+79233066700', 'pbkdf2_sha256$216000$4LrmuXb0OHYT$xbkBY4OlpD8pkLCl6AARjidciPSEaQFDqQ4P6ri1usI=', NULL, 1, true, true, true);
INSERT INTO public.studenttesting_customuser VALUES (5, '2021-02-21 17:51:24.511044+07', 'Иванов Сергей Романович', 'ivanovsr@mail.ru', '+79364667895', 'pbkdf2_sha256$216000$gw5gypUkv4DL$TbM/w75zhihRI7Xf/ob06YZC0xStgv+GuRxGVprR/e8=', '/media/avatar2_student_5.png', 3, false, false, true);
INSERT INTO public.studenttesting_customuser VALUES (7, '2021-02-21 17:53:35.802292+07', 'Иванов Пётр Геннадьевич', 'ivanovpg@yandex.ru', NULL, 'pbkdf2_sha256$216000$gOZ28G85GhG4$WIF7Zo6xm/fOodR9NNPK05FeZX4j+DE3trOWwdFq46I=', NULL, 2, false, false, true);
INSERT INTO public.studenttesting_customuser VALUES (9, '2021-02-21 18:52:47.692361+07', '', 'admin@example.com', NULL, 'pbkdf2_sha256$216000$LJz8LGG2rGU8$kq64o+ae57ACNxLOShejDHrYXok6GQDX9oBVl+N5xrc=', NULL, NULL, true, true, true);
INSERT INTO public.studenttesting_customuser VALUES (8, '2021-02-17 10:59:37.761216+07', 'Репина Наталья Витальевна', 'repinanv@google.com', '', 'pbkdf2_sha256$216000$nfqcn3wfKRzG$ZhfmGfzHdn2tWfPhwp+FBfLiSkYM22J2SL4ORwiIpFE=', NULL, 2, false, false, true);


--
-- TOC entry 3257 (class 0 OID 17623)
-- Dependencies: 230
-- Data for Name: studenttesting_customuser_groups; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3259 (class 0 OID 17633)
-- Dependencies: 232
-- Data for Name: studenttesting_customuser_user_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--



--
-- TOC entry 3232 (class 0 OID 17393)
-- Dependencies: 205
-- Data for Name: studenttesting_menu; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.studenttesting_menu VALUES (7, 'История', 'history', 3, 7);
INSERT INTO public.studenttesting_menu VALUES (9, 'Выход', 'accounts/logout', 1, 99);
INSERT INTO public.studenttesting_menu VALUES (6, 'Обратная связь', 'feedback', 3, 6);
INSERT INTO public.studenttesting_menu VALUES (4, 'Тесты', 'tests', 3, 4);
INSERT INTO public.studenttesting_menu VALUES (8, 'Отчёты', 'reports', 2, 8);
INSERT INTO public.studenttesting_menu VALUES (5, 'Студенты', 'students', 2, 5);
INSERT INTO public.studenttesting_menu VALUES (2, 'Моя страница', 'index', 1, 2);


--
-- TOC entry 3238 (class 0 OID 17418)
-- Dependencies: 211
-- Data for Name: studenttesting_question; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.studenttesting_question VALUES (1, 'Цель информатизации общества заключается в', 1, 1);
INSERT INTO public.studenttesting_question VALUES (2, 'В каком законе отображается объективность процесса информатизации общества', 2, 1);
INSERT INTO public.studenttesting_question VALUES (3, 'Данные об объектах, событиях и процессах, это', 3, 1);
INSERT INTO public.studenttesting_question VALUES (4, 'Информация это', 4, 1);
INSERT INTO public.studenttesting_question VALUES (7, 'Организационная стратегия интеграции производства и операций, управления трудовыми ресурсами, финансового менеджмента и управления активами, ориентированная на непрерывную балансировку и оптимизацию ресурсов предприятия посредством специализированного интегрированного пакета прикладного программного обеспечения, обеспечивающего общую модель данных и процессов для всех сфер деятельности – это…', 2, 2);
INSERT INTO public.studenttesting_question VALUES (8, 'НИОКР подразделяются на:', 1, 2);


--
-- TOC entry 3261 (class 0 OID 17671)
-- Dependencies: 234
-- Data for Name: studenttesting_result; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.studenttesting_result VALUES (15, '2021-02-18 22:33:41.39561+07', 15, 1, 5, 1);
INSERT INTO public.studenttesting_result VALUES (16, '2021-02-18 22:33:41.40761+07', 7, 3, 5, 1);
INSERT INTO public.studenttesting_result VALUES (17, '2021-02-18 22:33:41.41961+07', 3, 4, 5, 1);


--
-- TOC entry 3234 (class 0 OID 17402)
-- Dependencies: 207
-- Data for Name: studenttesting_test; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.studenttesting_test VALUES (1, 'Информационные технологии в управлении');
INSERT INTO public.studenttesting_test VALUES (2, 'Компьютерные технологии');


--
-- TOC entry 3236 (class 0 OID 17410)
-- Dependencies: 209
-- Data for Name: studenttesting_usertype; Type: TABLE DATA; Schema: public; Owner: admin
--

INSERT INTO public.studenttesting_usertype VALUES (1, 'Администратор');
INSERT INTO public.studenttesting_usertype VALUES (2, 'Преподаватель');
INSERT INTO public.studenttesting_usertype VALUES (3, 'Студент');
INSERT INTO public.studenttesting_usertype VALUES (4, 'Анонимный пользователь');


--
-- TOC entry 3285 (class 0 OID 0)
-- Dependencies: 220
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3286 (class 0 OID 0)
-- Dependencies: 222
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3287 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- TOC entry 3288 (class 0 OID 0)
-- Dependencies: 224
-- Name: background_task_completedtask_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.background_task_completedtask_id_seq', 1, false);


--
-- TOC entry 3289 (class 0 OID 0)
-- Dependencies: 226
-- Name: background_task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.background_task_id_seq', 1, false);


--
-- TOC entry 3290 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 36, true);


--
-- TOC entry 3291 (class 0 OID 0)
-- Dependencies: 214
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- TOC entry 3292 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);


--
-- TOC entry 3293 (class 0 OID 0)
-- Dependencies: 212
-- Name: studenttesting_answer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.studenttesting_answer_id_seq', 1, false);


--
-- TOC entry 3294 (class 0 OID 0)
-- Dependencies: 229
-- Name: studenttesting_customuser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.studenttesting_customuser_groups_id_seq', 1, false);


--
-- TOC entry 3295 (class 0 OID 0)
-- Dependencies: 202
-- Name: studenttesting_customuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.studenttesting_customuser_id_seq', 9, true);


--
-- TOC entry 3296 (class 0 OID 0)
-- Dependencies: 231
-- Name: studenttesting_customuser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.studenttesting_customuser_user_permissions_id_seq', 1, false);


--
-- TOC entry 3297 (class 0 OID 0)
-- Dependencies: 204
-- Name: studenttesting_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.studenttesting_menu_id_seq', 1, false);


--
-- TOC entry 3298 (class 0 OID 0)
-- Dependencies: 210
-- Name: studenttesting_question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.studenttesting_question_id_seq', 1, false);


--
-- TOC entry 3299 (class 0 OID 0)
-- Dependencies: 233
-- Name: studenttesting_result_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.studenttesting_result_id_seq', 19, true);


--
-- TOC entry 3300 (class 0 OID 0)
-- Dependencies: 206
-- Name: studenttesting_test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.studenttesting_test_id_seq', 1, false);


--
-- TOC entry 3301 (class 0 OID 0)
-- Dependencies: 208
-- Name: studenttesting_usertype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.studenttesting_usertype_id_seq', 4, true);


--
-- TOC entry 3015 (class 2606 OID 17541)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3020 (class 2606 OID 17527)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3023 (class 2606 OID 17516)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3017 (class 2606 OID 17506)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3010 (class 2606 OID 17518)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3012 (class 2606 OID 17498)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3031 (class 2606 OID 17554)
-- Name: background_task_completedtask background_task_completedtask_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.background_task_completedtask
    ADD CONSTRAINT background_task_completedtask_pkey PRIMARY KEY (id);


--
-- TOC entry 3047 (class 2606 OID 17566)
-- Name: background_task background_task_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.background_task
    ADD CONSTRAINT background_task_pkey PRIMARY KEY (id);


--
-- TOC entry 3006 (class 2606 OID 17478)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3001 (class 2606 OID 17466)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3003 (class 2606 OID 17464)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2980 (class 2606 OID 17377)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3058 (class 2606 OID 17612)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2997 (class 2606 OID 17437)
-- Name: studenttesting_answer studenttesting_answer_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_answer
    ADD CONSTRAINT studenttesting_answer_pkey PRIMARY KEY (id);


--
-- TOC entry 3061 (class 2606 OID 17640)
-- Name: studenttesting_customuser_groups studenttesting_customuse_customuser_id_group_id_6188c359_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_customuser_groups
    ADD CONSTRAINT studenttesting_customuse_customuser_id_group_id_6188c359_uniq UNIQUE (customuser_id, group_id);


--
-- TOC entry 3067 (class 2606 OID 17654)
-- Name: studenttesting_customuser_user_permissions studenttesting_customuse_customuser_id_permission_dca72058_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_customuser_user_permissions
    ADD CONSTRAINT studenttesting_customuse_customuser_id_permission_dca72058_uniq UNIQUE (customuser_id, permission_id);


--
-- TOC entry 2983 (class 2606 OID 17390)
-- Name: studenttesting_customuser studenttesting_customuser_email_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_customuser
    ADD CONSTRAINT studenttesting_customuser_email_key UNIQUE (email);


--
-- TOC entry 3065 (class 2606 OID 17628)
-- Name: studenttesting_customuser_groups studenttesting_customuser_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_customuser_groups
    ADD CONSTRAINT studenttesting_customuser_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2985 (class 2606 OID 17388)
-- Name: studenttesting_customuser studenttesting_customuser_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_customuser
    ADD CONSTRAINT studenttesting_customuser_pkey PRIMARY KEY (id);


--
-- TOC entry 3071 (class 2606 OID 17638)
-- Name: studenttesting_customuser_user_permissions studenttesting_customuser_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_customuser_user_permissions
    ADD CONSTRAINT studenttesting_customuser_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2988 (class 2606 OID 17399)
-- Name: studenttesting_menu studenttesting_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_menu
    ADD CONSTRAINT studenttesting_menu_pkey PRIMARY KEY (id);


--
-- TOC entry 2994 (class 2606 OID 17426)
-- Name: studenttesting_question studenttesting_question_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_question
    ADD CONSTRAINT studenttesting_question_pkey PRIMARY KEY (id);


--
-- TOC entry 3074 (class 2606 OID 17676)
-- Name: studenttesting_result studenttesting_result_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_result
    ADD CONSTRAINT studenttesting_result_pkey PRIMARY KEY (id);


--
-- TOC entry 2990 (class 2606 OID 17407)
-- Name: studenttesting_test studenttesting_test_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_test
    ADD CONSTRAINT studenttesting_test_pkey PRIMARY KEY (id);


--
-- TOC entry 2992 (class 2606 OID 17415)
-- Name: studenttesting_usertype studenttesting_usertype_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_usertype
    ADD CONSTRAINT studenttesting_usertype_pkey PRIMARY KEY (id);


--
-- TOC entry 3013 (class 1259 OID 17542)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3018 (class 1259 OID 17538)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3021 (class 1259 OID 17539)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3008 (class 1259 OID 17524)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3040 (class 1259 OID 17599)
-- Name: background_task_attempts_a9ade23d; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_attempts_a9ade23d ON public.background_task USING btree (attempts);


--
-- TOC entry 3024 (class 1259 OID 17580)
-- Name: background_task_completedtask_attempts_772a6783; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_completedtask_attempts_772a6783 ON public.background_task_completedtask USING btree (attempts);


--
-- TOC entry 3025 (class 1259 OID 17585)
-- Name: background_task_completedtask_creator_content_type_id_21d6a741; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_completedtask_creator_content_type_id_21d6a741 ON public.background_task_completedtask USING btree (creator_content_type_id);


--
-- TOC entry 3026 (class 1259 OID 17581)
-- Name: background_task_completedtask_failed_at_3de56618; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_completedtask_failed_at_3de56618 ON public.background_task_completedtask USING btree (failed_at);


--
-- TOC entry 3027 (class 1259 OID 17584)
-- Name: background_task_completedtask_locked_at_29c62708; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_completedtask_locked_at_29c62708 ON public.background_task_completedtask USING btree (locked_at);


--
-- TOC entry 3028 (class 1259 OID 17582)
-- Name: background_task_completedtask_locked_by_edc8a213; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_completedtask_locked_by_edc8a213 ON public.background_task_completedtask USING btree (locked_by);


--
-- TOC entry 3029 (class 1259 OID 17583)
-- Name: background_task_completedtask_locked_by_edc8a213_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_completedtask_locked_by_edc8a213_like ON public.background_task_completedtask USING btree (locked_by varchar_pattern_ops);


--
-- TOC entry 3032 (class 1259 OID 17576)
-- Name: background_task_completedtask_priority_9080692e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_completedtask_priority_9080692e ON public.background_task_completedtask USING btree (priority);


--
-- TOC entry 3033 (class 1259 OID 17578)
-- Name: background_task_completedtask_queue_61fb0415; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_completedtask_queue_61fb0415 ON public.background_task_completedtask USING btree (queue);


--
-- TOC entry 3034 (class 1259 OID 17579)
-- Name: background_task_completedtask_queue_61fb0415_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_completedtask_queue_61fb0415_like ON public.background_task_completedtask USING btree (queue varchar_pattern_ops);


--
-- TOC entry 3035 (class 1259 OID 17577)
-- Name: background_task_completedtask_run_at_77c80f34; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_completedtask_run_at_77c80f34 ON public.background_task_completedtask USING btree (run_at);


--
-- TOC entry 3036 (class 1259 OID 17574)
-- Name: background_task_completedtask_task_hash_91187576; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_completedtask_task_hash_91187576 ON public.background_task_completedtask USING btree (task_hash);


--
-- TOC entry 3037 (class 1259 OID 17575)
-- Name: background_task_completedtask_task_hash_91187576_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_completedtask_task_hash_91187576_like ON public.background_task_completedtask USING btree (task_hash varchar_pattern_ops);


--
-- TOC entry 3038 (class 1259 OID 17572)
-- Name: background_task_completedtask_task_name_388dabc2; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_completedtask_task_name_388dabc2 ON public.background_task_completedtask USING btree (task_name);


--
-- TOC entry 3039 (class 1259 OID 17573)
-- Name: background_task_completedtask_task_name_388dabc2_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_completedtask_task_name_388dabc2_like ON public.background_task_completedtask USING btree (task_name varchar_pattern_ops);


--
-- TOC entry 3041 (class 1259 OID 17604)
-- Name: background_task_creator_content_type_id_61cc9af3; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_creator_content_type_id_61cc9af3 ON public.background_task USING btree (creator_content_type_id);


--
-- TOC entry 3042 (class 1259 OID 17600)
-- Name: background_task_failed_at_b81bba14; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_failed_at_b81bba14 ON public.background_task USING btree (failed_at);


--
-- TOC entry 3043 (class 1259 OID 17603)
-- Name: background_task_locked_at_0fb0f225; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_locked_at_0fb0f225 ON public.background_task USING btree (locked_at);


--
-- TOC entry 3044 (class 1259 OID 17601)
-- Name: background_task_locked_by_db7779e3; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_locked_by_db7779e3 ON public.background_task USING btree (locked_by);


--
-- TOC entry 3045 (class 1259 OID 17602)
-- Name: background_task_locked_by_db7779e3_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_locked_by_db7779e3_like ON public.background_task USING btree (locked_by varchar_pattern_ops);


--
-- TOC entry 3048 (class 1259 OID 17595)
-- Name: background_task_priority_88bdbce9; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_priority_88bdbce9 ON public.background_task USING btree (priority);


--
-- TOC entry 3049 (class 1259 OID 17597)
-- Name: background_task_queue_1d5f3a40; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_queue_1d5f3a40 ON public.background_task USING btree (queue);


--
-- TOC entry 3050 (class 1259 OID 17598)
-- Name: background_task_queue_1d5f3a40_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_queue_1d5f3a40_like ON public.background_task USING btree (queue varchar_pattern_ops);


--
-- TOC entry 3051 (class 1259 OID 17596)
-- Name: background_task_run_at_7baca3aa; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_run_at_7baca3aa ON public.background_task USING btree (run_at);


--
-- TOC entry 3052 (class 1259 OID 17593)
-- Name: background_task_task_hash_d8f233bd; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_task_hash_d8f233bd ON public.background_task USING btree (task_hash);


--
-- TOC entry 3053 (class 1259 OID 17594)
-- Name: background_task_task_hash_d8f233bd_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_task_hash_d8f233bd_like ON public.background_task USING btree (task_hash varchar_pattern_ops);


--
-- TOC entry 3054 (class 1259 OID 17591)
-- Name: background_task_task_name_4562d56a; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_task_name_4562d56a ON public.background_task USING btree (task_name);


--
-- TOC entry 3055 (class 1259 OID 17592)
-- Name: background_task_task_name_4562d56a_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX background_task_task_name_4562d56a_like ON public.background_task USING btree (task_name varchar_pattern_ops);


--
-- TOC entry 3004 (class 1259 OID 17489)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3007 (class 1259 OID 17490)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3056 (class 1259 OID 17614)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3059 (class 1259 OID 17613)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2998 (class 1259 OID 17455)
-- Name: studenttesting_answer_question_id_bc7f4a5b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX studenttesting_answer_question_id_bc7f4a5b ON public.studenttesting_answer USING btree (question_id);


--
-- TOC entry 2999 (class 1259 OID 17456)
-- Name: studenttesting_answer_test_id_3e4229ce; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX studenttesting_answer_test_id_3e4229ce ON public.studenttesting_answer USING btree (test_id);


--
-- TOC entry 3068 (class 1259 OID 17665)
-- Name: studenttesting_customuser__customuser_id_d5ec70e0; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX studenttesting_customuser__customuser_id_d5ec70e0 ON public.studenttesting_customuser_user_permissions USING btree (customuser_id);


--
-- TOC entry 3069 (class 1259 OID 17666)
-- Name: studenttesting_customuser__permission_id_ff1c9ece; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX studenttesting_customuser__permission_id_ff1c9ece ON public.studenttesting_customuser_user_permissions USING btree (permission_id);


--
-- TOC entry 2981 (class 1259 OID 17438)
-- Name: studenttesting_customuser_email_4dda6ba7_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX studenttesting_customuser_email_4dda6ba7_like ON public.studenttesting_customuser USING btree (email varchar_pattern_ops);


--
-- TOC entry 3062 (class 1259 OID 17651)
-- Name: studenttesting_customuser_groups_customuser_id_c99cbf14; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX studenttesting_customuser_groups_customuser_id_c99cbf14 ON public.studenttesting_customuser_groups USING btree (customuser_id);


--
-- TOC entry 3063 (class 1259 OID 17652)
-- Name: studenttesting_customuser_groups_group_id_2444758e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX studenttesting_customuser_groups_group_id_2444758e ON public.studenttesting_customuser_groups USING btree (group_id);


--
-- TOC entry 2986 (class 1259 OID 17620)
-- Name: studenttesting_customuser_user_type_id_d2f0a957; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX studenttesting_customuser_user_type_id_d2f0a957 ON public.studenttesting_customuser USING btree (user_type_id);


--
-- TOC entry 2995 (class 1259 OID 17444)
-- Name: studenttesting_question_test_id_b7259034; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX studenttesting_question_test_id_b7259034 ON public.studenttesting_question USING btree (test_id);


--
-- TOC entry 3072 (class 1259 OID 17697)
-- Name: studenttesting_result_answer_id_541cad77; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX studenttesting_result_answer_id_541cad77 ON public.studenttesting_result USING btree (answer_id);


--
-- TOC entry 3075 (class 1259 OID 17698)
-- Name: studenttesting_result_question_id_8f19d0f0; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX studenttesting_result_question_id_8f19d0f0 ON public.studenttesting_result USING btree (question_id);


--
-- TOC entry 3076 (class 1259 OID 17699)
-- Name: studenttesting_result_student_id_01bc1ca8; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX studenttesting_result_student_id_01bc1ca8 ON public.studenttesting_result USING btree (user_id);


--
-- TOC entry 3077 (class 1259 OID 17700)
-- Name: studenttesting_result_test_id_11b147ec; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX studenttesting_result_test_id_11b147ec ON public.studenttesting_result USING btree (test_id);


--
-- TOC entry 3086 (class 2606 OID 17533)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3085 (class 2606 OID 17528)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3084 (class 2606 OID 17519)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3087 (class 2606 OID 17567)
-- Name: background_task_completedtask background_task_comp_creator_content_type_21d6a741_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.background_task_completedtask
    ADD CONSTRAINT background_task_comp_creator_content_type_21d6a741_fk_django_co FOREIGN KEY (creator_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3088 (class 2606 OID 17586)
-- Name: background_task background_task_creator_content_type_61cc9af3_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.background_task
    ADD CONSTRAINT background_task_creator_content_type_61cc9af3_fk_django_co FOREIGN KEY (creator_content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3082 (class 2606 OID 17479)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3083 (class 2606 OID 17484)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_studentte; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_studentte FOREIGN KEY (user_id) REFERENCES public.studenttesting_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3080 (class 2606 OID 17445)
-- Name: studenttesting_answer studenttesting_answe_question_id_bc7f4a5b_fk_studentte; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_answer
    ADD CONSTRAINT studenttesting_answe_question_id_bc7f4a5b_fk_studentte FOREIGN KEY (question_id) REFERENCES public.studenttesting_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3081 (class 2606 OID 17450)
-- Name: studenttesting_answer studenttesting_answe_test_id_3e4229ce_fk_studentte; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_answer
    ADD CONSTRAINT studenttesting_answe_test_id_3e4229ce_fk_studentte FOREIGN KEY (test_id) REFERENCES public.studenttesting_test(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3089 (class 2606 OID 17641)
-- Name: studenttesting_customuser_groups studenttesting_custo_customuser_id_c99cbf14_fk_studentte; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_customuser_groups
    ADD CONSTRAINT studenttesting_custo_customuser_id_c99cbf14_fk_studentte FOREIGN KEY (customuser_id) REFERENCES public.studenttesting_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3091 (class 2606 OID 17655)
-- Name: studenttesting_customuser_user_permissions studenttesting_custo_customuser_id_d5ec70e0_fk_studentte; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_customuser_user_permissions
    ADD CONSTRAINT studenttesting_custo_customuser_id_d5ec70e0_fk_studentte FOREIGN KEY (customuser_id) REFERENCES public.studenttesting_customuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3090 (class 2606 OID 17646)
-- Name: studenttesting_customuser_groups studenttesting_custo_group_id_2444758e_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_customuser_groups
    ADD CONSTRAINT studenttesting_custo_group_id_2444758e_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3092 (class 2606 OID 17660)
-- Name: studenttesting_customuser_user_permissions studenttesting_custo_permission_id_ff1c9ece_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_customuser_user_permissions
    ADD CONSTRAINT studenttesting_custo_permission_id_ff1c9ece_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3078 (class 2606 OID 17615)
-- Name: studenttesting_customuser studenttesting_custo_user_type_id_d2f0a957_fk_studentte; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_customuser
    ADD CONSTRAINT studenttesting_custo_user_type_id_d2f0a957_fk_studentte FOREIGN KEY (user_type_id) REFERENCES public.studenttesting_usertype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3079 (class 2606 OID 17439)
-- Name: studenttesting_question studenttesting_quest_test_id_b7259034_fk_studentte; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_question
    ADD CONSTRAINT studenttesting_quest_test_id_b7259034_fk_studentte FOREIGN KEY (test_id) REFERENCES public.studenttesting_test(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3093 (class 2606 OID 17677)
-- Name: studenttesting_result studenttesting_resul_answer_id_541cad77_fk_studentte; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_result
    ADD CONSTRAINT studenttesting_resul_answer_id_541cad77_fk_studentte FOREIGN KEY (answer_id) REFERENCES public.studenttesting_answer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3094 (class 2606 OID 17682)
-- Name: studenttesting_result studenttesting_resul_question_id_8f19d0f0_fk_studentte; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_result
    ADD CONSTRAINT studenttesting_resul_question_id_8f19d0f0_fk_studentte FOREIGN KEY (question_id) REFERENCES public.studenttesting_question(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3095 (class 2606 OID 17692)
-- Name: studenttesting_result studenttesting_resul_test_id_11b147ec_fk_studentte; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_result
    ADD CONSTRAINT studenttesting_resul_test_id_11b147ec_fk_studentte FOREIGN KEY (test_id) REFERENCES public.studenttesting_test(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3096 (class 2606 OID 17701)
-- Name: studenttesting_result studenttesting_resul_user_id_7a591064_fk_studentte; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.studenttesting_result
    ADD CONSTRAINT studenttesting_resul_user_id_7a591064_fk_studentte FOREIGN KEY (user_id) REFERENCES public.studenttesting_customuser(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-02-21 21:12:10

--
-- PostgreSQL database dump complete
--

