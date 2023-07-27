/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2023/7/27 12:46:39                           */
/*==============================================================*/


alter table AccompanyRecords 
   drop foreign key FK_ACCOMPAN_R_MEMBERS_MEMBERS;

alter table HealthRecords 
   drop foreign key FK_HEALTHRE_R_MEMBER__MEMBERS;

alter table Members 
   drop foreign key FK_MEMBERS_R_MEMBERS_MEMBERS_;

alter table Members_acount 
   drop foreign key FK_MEMBERS__R_MEMBERS_MEMBERS;

alter table NursingRecords 
   drop foreign key FK_NURSINGR_R_MEMBER__MEMBERS;

alter table OperateLog 
   drop foreign key FK_OPERATEL_RELATIONS_STAFF;

alter table Orders 
   drop foreign key FK_ORDERS_R_MEMBERS_MEMBERS;

alter table Orders 
   drop foreign key FK_ORDERS_RELATIONS_STATEMEN;

alter table PaymentRecords 
   drop foreign key FK_PAYMENTR_RELATIONS_MEMBERS;

alter table R_Activities_Members 
   drop foreign key FK_R_ACTIVI_R_ACTIVIT_ACTIVITI;

alter table R_Activities_Members 
   drop foreign key FK_R_ACTIVI_R_ACTIVIT_MEMBERS;

alter table R_Order_Services 
   drop foreign key FK_R_ORDER__R_ORDER_S_SERVICES;

alter table R_Order_Services 
   drop foreign key FK_R_ORDER__R_ORDER_S_ORDERS;

alter table R_staff_role 
   drop foreign key FK_R_STAFF__R_STAFF_R_ROLE;

alter table R_staff_role 
   drop foreign key FK_R_STAFF__R_STAFF_R_STAFF;

alter table SafetyRecords 
   drop foreign key FK_SAFETYRE_R_MEMBERS_MEMBERS;

alter table Services 
   drop foreign key FK_SERVICES_R_SERVICE_SERVICEP;

alter table SmartDevices 
   drop foreign key FK_SMARTDEV_R_SERVICE_SERVICEP;

alter table StatementPrintRecord 
   drop foreign key FK_STATEMEN_RELATIONS_ORDERS;


alter table AccompanyRecords 
   drop foreign key FK_ACCOMPAN_R_MEMBERS_MEMBERS;

drop table if exists AccompanyRecords;

drop table if exists Activities;


alter table HealthRecords 
   drop foreign key FK_HEALTHRE_R_MEMBER__MEMBERS;

drop table if exists HealthRecords;


alter table Members 
   drop foreign key FK_MEMBERS_R_MEMBERS_MEMBERS_;

drop table if exists Members;


alter table Members_acount 
   drop foreign key FK_MEMBERS__R_MEMBERS_MEMBERS;

drop table if exists Members_acount;


alter table NursingRecords 
   drop foreign key FK_NURSINGR_R_MEMBER__MEMBERS;

drop table if exists NursingRecords;


alter table OperateLog 
   drop foreign key FK_OPERATEL_RELATIONS_STAFF;

drop table if exists OperateLog;


alter table Orders 
   drop foreign key FK_ORDERS_R_MEMBERS_MEMBERS;

alter table Orders 
   drop foreign key FK_ORDERS_RELATIONS_STATEMEN;

drop table if exists Orders;


alter table PaymentRecords 
   drop foreign key FK_PAYMENTR_RELATIONS_MEMBERS;

drop table if exists PaymentRecords;


alter table R_Activities_Members 
   drop foreign key FK_R_ACTIVI_R_ACTIVIT_ACTIVITI;

alter table R_Activities_Members 
   drop foreign key FK_R_ACTIVI_R_ACTIVIT_MEMBERS;

drop table if exists R_Activities_Members;


alter table R_Order_Services 
   drop foreign key FK_R_ORDER__R_ORDER_S_SERVICES;

alter table R_Order_Services 
   drop foreign key FK_R_ORDER__R_ORDER_S_ORDERS;

drop table if exists R_Order_Services;


alter table R_staff_role 
   drop foreign key FK_R_STAFF__R_STAFF_R_ROLE;

alter table R_staff_role 
   drop foreign key FK_R_STAFF__R_STAFF_R_STAFF;

drop table if exists R_staff_role;

drop table if exists RetirementStation_acount;


alter table SafetyRecords 
   drop foreign key FK_SAFETYRE_R_MEMBERS_MEMBERS;

drop table if exists SafetyRecords;

drop table if exists ServiceProviders;


alter table Services 
   drop foreign key FK_SERVICES_R_SERVICE_SERVICEP;

drop table if exists Services;


alter table SmartDevices 
   drop foreign key FK_SMARTDEV_R_SERVICE_SERVICEP;

drop table if exists SmartDevices;


alter table StatementPrintRecord 
   drop foreign key FK_STATEMEN_RELATIONS_ORDERS;

drop table if exists StatementPrintRecord;

drop table if exists TransactionRecords;

drop table if exists role;

drop table if exists staff;

/*==============================================================*/
/* Table: AccompanyRecords                                      */
/*==============================================================*/
create table AccompanyRecords
(
   Accompany_record_id  int not null auto_increment  comment '',
   member_id            int  comment '',
   accompany_type       varchar(50)  comment '',
   accompany_time       datetime  comment '',
   accompany_hospital   varchar(200)  comment '',
   primary key (Accompany_record_id)
);

alter table AccompanyRecords comment '��������¼��';

/*==============================================================*/
/* Table: Activities                                            */
/*==============================================================*/
create table Activities
(
   activities_record_id int not null auto_increment  comment '',
   activity_name        varchar(50)  comment '',
   activity_content     text  comment '',
   activity_start_time  datetime  comment '',
   activity_end_time    datetime  comment '',
   activity_avada       bigint  comment '',
   activity_status      smallint  comment '1-¼�� 2-��� 3-���� 4-ɾ��',
   activity_create_time datetime  comment '',
   operator_id          bigint  comment '',
   primary key (activities_record_id)
);

alter table Activities comment '��ʱ�Ի��¼��';

/*==============================================================*/
/* Table: HealthRecords                                         */
/*==============================================================*/
create table HealthRecords
(
   healthck_record_id   int not null auto_increment  comment '',
   member_id            int  comment '',
   healthck_weight      decimal(5,2)  comment '����',
   healthck_height      smallint  comment '���',
   healthck_blood_pressure varchar(20)  comment '',
   healthck_heart_rate  int  comment '',
   healthck_blood_sugar decimal(5,2)  comment '',
   healthck_time        datetime  comment '',
   primary key (healthck_record_id)
);

alter table HealthRecords comment '��������¼��';

/*==============================================================*/
/* Table: Members                                               */
/*==============================================================*/
create table Members
(
   member_id            int not null auto_increment  comment '',
   member_account_id    int  comment '',
   member_name          varchar(50)  comment '',
   member_gender        char(1)  comment '�Ա�',
   member_birthdate     date  comment '��������',
   member_id_number     varchar(18)  comment '���֤��',
   member_nationality   varchar(20)  comment '���壬�����ֵ�',
   member_residence_province varchar(20)  comment '��סʡ�ݣ������ֵ�',
   member_address       varchar(200)  comment '',
   member_telephone     varchar(20)  comment '',
   member_wxID          varchar(50)  comment '΢�ź�',
   member_health_status text  comment '��������',
   member_health_report varchar(200)  comment '��챨��洢Ŀ¼������',
   member_selfcare_ablility varchar(20)  comment '���������������ֵ�',
   member_resident_status varchar(20)  comment '��ס״̬����Դ�����ֵ�',
   member_emergency_contact varchar(50)  comment '������ϵ��',
   member_emergency_contact_phone varchar(11)  comment '������ϵ�绰',
   member_emergency_contact_address varchar(200)  comment '������ϵ�˵�ַ',
   member_emergency_contact_relationship varchar(20)  comment '������ϵ�������˹�ϵ',
   member_avanda        varchar(500)  comment '',
   member_present_illness varchar(20)  comment '�ֲ�ʷ����Դ�����ֵ�',
   member_medical_history varchar(20)  comment '��ʷ����Դ�����ֵ�',
   member_family_history varchar(20)  comment '���岡ʷ����Դ�����ֵ�',
   member_intelligence_situation varchar(20)  comment '�����������Դ�����ֵ�',
   member_disability_type varchar(20)  comment '�м����ͣ���Դ�����ֵ�',
   member_status        smallint  comment '0-ע�� 1-����',
   memeber_create_time  datetime  comment '',
   member_passwd        varchar(50)  comment '���룬������С��������',
   member_last_modified_time datetime  comment '',
   primary key (member_id)
);

alter table Members comment '��Ա��Ϣ��';

/*==============================================================*/
/* Table: Members_acount                                        */
/*==============================================================*/
create table Members_acount
(
   member_account_id    int not null auto_increment  comment '',
   member_id            int  comment '',
   member_account_balance float(10,2)  comment '�˻����',
   member_account_freeze_amount float(10,2)  comment '������',
   primary key (member_account_id)
);

alter table Members_acount comment '��Ա�˻�';

/*==============================================================*/
/* Table: NursingRecords                                        */
/*==============================================================*/
create table NursingRecords
(
   nursing_record_id    int not null auto_increment  comment '',
   member_id            int  comment '',
   care_type            varchar(50)  comment '',
   care_staff           varchar(50)  comment '',
   care_time            datetime  comment '',
   primary key (nursing_record_id)
);

alter table NursingRecords comment '���Ż����¼��';

/*==============================================================*/
/* Table: OperateLog                                            */
/*==============================================================*/
create table OperateLog
(
   operatellog_id       int not null auto_increment  comment '',
   staff_id             int  comment '',
   operatellog_operation text  comment '',
   operatelog_operate_time timestamp  comment '',
   operatelog_status    smallint  comment '1-δ���� 2-�ѱ���',
   primary key (operatellog_id)
);

alter table OperateLog comment 'ϵͳ��־';

/*==============================================================*/
/* Table: Orders                                                */
/*==============================================================*/
create table Orders
(
   order_id             int not null auto_increment  comment '',
   statement_print_record_id int  comment '',
   member_id            int  comment '',
   order_services_times smallint  comment '��������',
   order_amount         float(10,2)  comment '',
   order_create_time    smallint  comment '',
   order_discount       decimal(3,2)  comment '�ۿۣ�Ĭ��100%',
   order_start_time     datetime  comment '',
   order_end_time       datetime  comment '',
   order_status         varchar(20)  comment '1-������ 2-������� 3-ע��',
   primary key (order_id)
);

alter table Orders comment '������';

/*==============================================================*/
/* Table: PaymentRecords                                        */
/*==============================================================*/
create table PaymentRecords
(
   payment_record_id    int not null auto_increment  comment '',
   member_id            int  comment '',
   transaction_type     varchar(20)  comment '֧����ʽ�������ֵ䣺1-�ֽ� 2-ˢ�� 3-΢��ת�� 4-֧����ת��',
   amount               float(10,2)  comment '',
   transaction_status   smallint  comment '1-��֧�� 2-��֧��',
   primary key (payment_record_id)
);

alter table PaymentRecords comment '��ֵ��¼��';

/*==============================================================*/
/* Table: R_Activities_Members                                  */
/*==============================================================*/
create table R_Activities_Members
(
   activities_record_id int not null  comment '',
   member_id            int not null  comment '',
   primary key (activities_record_id, member_id)
);

/*==============================================================*/
/* Table: R_Order_Services                                      */
/*==============================================================*/
create table R_Order_Services
(
   service_id           int not null  comment '',
   order_id             int not null  comment '',
   primary key (service_id, order_id)
);

/*==============================================================*/
/* Table: R_staff_role                                          */
/*==============================================================*/
create table R_staff_role
(
   role_id              smallint not null  comment '',
   staff_id             int not null  comment '',
   primary key (role_id, staff_id)
);

/*==============================================================*/
/* Table: RetirementStation_acount                              */
/*==============================================================*/
create table RetirementStation_acount
(
   retirementstaion_id  varchar(50) not null  comment '',
   retirement_balance   float(10,2)  comment '',
   primary key (retirementstaion_id)
);

alter table RetirementStation_acount comment '����-������վ�˻���';

/*==============================================================*/
/* Table: SafetyRecords                                         */
/*==============================================================*/
create table SafetyRecords
(
   safety_record_id     int not null auto_increment  comment '',
   member_id            int  comment '',
   safety_check_content text  comment '',
   safety_check_time    datetime  comment '',
   primary key (safety_record_id)
);

alter table SafetyRecords comment '��ȫ����¼��';

/*==============================================================*/
/* Table: ServiceProviders                                      */
/*==============================================================*/
create table ServiceProviders
(
   provider_id          int not null auto_increment  comment '',
   provider_name        varchar(50)  comment '',
   provider_contact_person varchar(50)  comment '',
   provider_contact_phone varchar(20)  comment '',
   provider_contact_mailbox varchar(50)  comment '',
   provider_account     varchar(50)  comment '�̻������˻�',
   provider_status      smallint  comment '1-���� 2-ע��',
   provider_check_status smallint  comment '1-����� 2-�����',
   primary key (provider_id)
);

alter table ServiceProviders comment '�����ṩ�̱�';

/*==============================================================*/
/* Table: Services                                              */
/*==============================================================*/
create table Services
(
   service_id           int not null auto_increment  comment '',
   provider_id          int  comment '',
   service_name         varchar(50)  comment '',
   service_description  text  comment '',
   service_type         varchar(20)  comment '����Ƽ۷�ʽ��1-�� 2-�� 3-�꣬�����ֵ�',
   service_price        float(10,2)  comment '',
   service_status       varchar(2)  comment '����״̬��1-����� 2-���ͨ��  ',
   service_check_status smallint  comment '1-���� 2-ע��',
   service_avada        bigint  comment '����ʾ��ͼƬ',
   service_create_time  datetime  comment '',
   service_check_time   datetime  comment '',
   service_update_time  datetime  comment '',
   service_input_staff_id bigint  comment '��Ϣ¼����Ա',
   service_check_staff_id bigint  comment '�����Ա',
   primary key (service_id)
);

alter table Services comment '������Ŀ��';

/*==============================================================*/
/* Table: SmartDevices                                          */
/*==============================================================*/
create table SmartDevices
(
   device_id            varchar(200) not null  comment '',
   provider_id          int  comment '',
   device_name          varchar(200)  comment '',
   device_type          varchar(2)  comment '',
   device_status        smallint  comment '',
   primary key (device_id)
);

alter table SmartDevices comment '���ܼҾ��豸��';

/*==============================================================*/
/* Table: StatementPrintRecord                                  */
/*==============================================================*/
create table StatementPrintRecord
(
   statement_print_record_id int not null auto_increment  comment '',
   order_id             int  comment '',
   statement_print_record_status smallint  comment '1-δ��ӡ 2-�Ѵ�ӡ 3-�ظ���ӡ',
   statement_print_record_time datetime  comment '',
   statement_rprint_record_time datetime  comment '����ش�ʱ��',
   primary key (statement_print_record_id)
);

alter table StatementPrintRecord comment '���㵥��ӡ��¼';

/*==============================================================*/
/* Table: TransactionRecords                                    */
/*==============================================================*/
create table TransactionRecords
(
   transaction_id       int not null auto_increment  comment '',
   transaction_debit    varchar(50)  comment '�跽�������ǻ�Ա�˺ţ��̻��˺š���վ�˺�',
   transaction_credit   varchar(50)  comment '����,�����ǻ�Ա�˺ţ��̻��˺š���վ�˺�',
   transaction_time     datetime  comment '����ʱ��',
   transacion_amount    float(10,2)  comment '',
   primary key (transaction_id)
);

alter table TransactionRecords comment '����-�ʽ��������������ר��';

/*==============================================================*/
/* Table: role                                                  */
/*==============================================================*/
create table role
(
   role_id              smallint not null  comment '',
   role_name            varchar(100)  comment '',
   role_description     text  comment '',
   primary key (role_id)
);

alter table role comment '��ɫ��';

/*==============================================================*/
/* Table: staff                                                 */
/*==============================================================*/
create table staff
(
   staff_id             int not null auto_increment  comment '',
   staff_nanme          varchar(50)  comment '',
   staff_phone          varchar(11)  comment '',
   staff_status         smallint  comment '1-���� 2-ע��',
   staff_mail           varchar(100)  comment '',
   primary key (staff_id)
);

alter table staff comment 'ϵͳ������Ա��';

alter table AccompanyRecords add constraint FK_ACCOMPAN_R_MEMBERS_MEMBERS foreign key (member_id)
      references Members (member_id) on delete restrict on update restrict;

alter table HealthRecords add constraint FK_HEALTHRE_R_MEMBER__MEMBERS foreign key (member_id)
      references Members (member_id) on delete restrict on update restrict;

alter table Members add constraint FK_MEMBERS_R_MEMBERS_MEMBERS_ foreign key (member_account_id)
      references Members_acount (member_account_id) on delete restrict on update restrict;

alter table Members_acount add constraint FK_MEMBERS__R_MEMBERS_MEMBERS foreign key (member_id)
      references Members (member_id) on delete restrict on update restrict;

alter table NursingRecords add constraint FK_NURSINGR_R_MEMBER__MEMBERS foreign key (member_id)
      references Members (member_id) on delete restrict on update restrict;

alter table OperateLog add constraint FK_OPERATEL_RELATIONS_STAFF foreign key (staff_id)
      references staff (staff_id) on delete restrict on update restrict;

alter table Orders add constraint FK_ORDERS_R_MEMBERS_MEMBERS foreign key (member_id)
      references Members (member_id) on delete restrict on update restrict;

alter table Orders add constraint FK_ORDERS_RELATIONS_STATEMEN foreign key (statement_print_record_id)
      references StatementPrintRecord (statement_print_record_id) on delete restrict on update restrict;

alter table PaymentRecords add constraint FK_PAYMENTR_RELATIONS_MEMBERS foreign key (member_id)
      references Members (member_id) on delete restrict on update restrict;

alter table R_Activities_Members add constraint FK_R_ACTIVI_R_ACTIVIT_ACTIVITI foreign key (activities_record_id)
      references Activities (activities_record_id) on delete restrict on update restrict;

alter table R_Activities_Members add constraint FK_R_ACTIVI_R_ACTIVIT_MEMBERS foreign key (member_id)
      references Members (member_id) on delete restrict on update restrict;

alter table R_Order_Services add constraint FK_R_ORDER__R_ORDER_S_SERVICES foreign key (service_id)
      references Services (service_id) on delete restrict on update restrict;

alter table R_Order_Services add constraint FK_R_ORDER__R_ORDER_S_ORDERS foreign key (order_id)
      references Orders (order_id) on delete restrict on update restrict;

alter table R_staff_role add constraint FK_R_STAFF__R_STAFF_R_ROLE foreign key (role_id)
      references role (role_id) on delete restrict on update restrict;

alter table R_staff_role add constraint FK_R_STAFF__R_STAFF_R_STAFF foreign key (staff_id)
      references staff (staff_id) on delete restrict on update restrict;

alter table SafetyRecords add constraint FK_SAFETYRE_R_MEMBERS_MEMBERS foreign key (member_id)
      references Members (member_id) on delete restrict on update restrict;

alter table Services add constraint FK_SERVICES_R_SERVICE_SERVICEP foreign key (provider_id)
      references ServiceProviders (provider_id) on delete restrict on update restrict;

alter table SmartDevices add constraint FK_SMARTDEV_R_SERVICE_SERVICEP foreign key (provider_id)
      references ServiceProviders (provider_id) on delete restrict on update restrict;

alter table StatementPrintRecord add constraint FK_STATEMEN_RELATIONS_ORDERS foreign key (order_id)
      references Orders (order_id) on delete restrict on update restrict;

