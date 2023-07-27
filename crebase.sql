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

alter table AccompanyRecords comment '陪诊服务记录表';

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
   activity_status      smallint  comment '1-录入 2-审核 3-发布 4-删除',
   activity_create_time datetime  comment '',
   operator_id          bigint  comment '',
   primary key (activities_record_id)
);

alter table Activities comment '临时性活动记录表';

/*==============================================================*/
/* Table: HealthRecords                                         */
/*==============================================================*/
create table HealthRecords
(
   healthck_record_id   int not null auto_increment  comment '',
   member_id            int  comment '',
   healthck_weight      decimal(5,2)  comment '体重',
   healthck_height      smallint  comment '身高',
   healthck_blood_pressure varchar(20)  comment '',
   healthck_heart_rate  int  comment '',
   healthck_blood_sugar decimal(5,2)  comment '',
   healthck_time        datetime  comment '',
   primary key (healthck_record_id)
);

alter table HealthRecords comment '健康检测记录表';

/*==============================================================*/
/* Table: Members                                               */
/*==============================================================*/
create table Members
(
   member_id            int not null auto_increment  comment '',
   member_account_id    int  comment '',
   member_name          varchar(50)  comment '',
   member_gender        char(1)  comment '性别',
   member_birthdate     date  comment '出生日期',
   member_id_number     varchar(18)  comment '身份证号',
   member_nationality   varchar(20)  comment '民族，数据字典',
   member_residence_province varchar(20)  comment '居住省份，数据字典',
   member_address       varchar(200)  comment '',
   member_telephone     varchar(20)  comment '',
   member_wxID          varchar(50)  comment '微信号',
   member_health_status text  comment '文字描述',
   member_health_report varchar(200)  comment '体检报告存储目录及名称',
   member_selfcare_ablility varchar(20)  comment '自理能力，数据字典',
   member_resident_status varchar(20)  comment '居住状态，来源数据字典',
   member_emergency_contact varchar(50)  comment '紧急联系人',
   member_emergency_contact_phone varchar(11)  comment '紧急联系电话',
   member_emergency_contact_address varchar(200)  comment '紧急联系人地址',
   member_emergency_contact_relationship varchar(20)  comment '紧急联系人与老人关系',
   member_avanda        varchar(500)  comment '',
   member_present_illness varchar(20)  comment '现病史，来源数据字典',
   member_medical_history varchar(20)  comment '病史，来源数据字典',
   member_family_history varchar(20)  comment '家族病史，来源数据字典',
   member_intelligence_situation varchar(20)  comment '智力情况，来源数据字典',
   member_disability_type varchar(20)  comment '残疾类型，来源数据字典',
   member_status        smallint  comment '0-注销 1-正常',
   memeber_create_time  datetime  comment '',
   member_passwd        varchar(50)  comment '密码，密码在小程序设置',
   member_last_modified_time datetime  comment '',
   primary key (member_id)
);

alter table Members comment '会员信息表';

/*==============================================================*/
/* Table: Members_acount                                        */
/*==============================================================*/
create table Members_acount
(
   member_account_id    int not null auto_increment  comment '',
   member_id            int  comment '',
   member_account_balance float(10,2)  comment '账户余额',
   member_account_freeze_amount float(10,2)  comment '冻结金额',
   primary key (member_account_id)
);

alter table Members_acount comment '会员账户';

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

alter table NursingRecords comment '上门护理记录表';

/*==============================================================*/
/* Table: OperateLog                                            */
/*==============================================================*/
create table OperateLog
(
   operatellog_id       int not null auto_increment  comment '',
   staff_id             int  comment '',
   operatellog_operation text  comment '',
   operatelog_operate_time timestamp  comment '',
   operatelog_status    smallint  comment '1-未备份 2-已备份',
   primary key (operatellog_id)
);

alter table OperateLog comment '系统日志';

/*==============================================================*/
/* Table: Orders                                                */
/*==============================================================*/
create table Orders
(
   order_id             int not null auto_increment  comment '',
   statement_print_record_id int  comment '',
   member_id            int  comment '',
   order_services_times smallint  comment '服务数量',
   order_amount         float(10,2)  comment '',
   order_create_time    smallint  comment '',
   order_discount       decimal(3,2)  comment '折扣，默认100%',
   order_start_time     datetime  comment '',
   order_end_time       datetime  comment '',
   order_status         varchar(20)  comment '1-待服务 2-服务完成 3-注销',
   primary key (order_id)
);

alter table Orders comment '订单表';

/*==============================================================*/
/* Table: PaymentRecords                                        */
/*==============================================================*/
create table PaymentRecords
(
   payment_record_id    int not null auto_increment  comment '',
   member_id            int  comment '',
   transaction_type     varchar(20)  comment '支付方式，数据字典：1-现金 2-刷卡 3-微信转账 4-支付宝转账',
   amount               float(10,2)  comment '',
   transaction_status   smallint  comment '1-待支付 2-已支付',
   primary key (payment_record_id)
);

alter table PaymentRecords comment '充值记录表';

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

alter table RetirementStation_acount comment '财务-养老驿站账户表';

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

alter table SafetyRecords comment '安全检测记录表';

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
   provider_account     varchar(50)  comment '商户结算账户',
   provider_status      smallint  comment '1-正常 2-注销',
   provider_check_status smallint  comment '1-待审核 2-已审核',
   primary key (provider_id)
);

alter table ServiceProviders comment '服务提供商表';

/*==============================================================*/
/* Table: Services                                              */
/*==============================================================*/
create table Services
(
   service_id           int not null auto_increment  comment '',
   provider_id          int  comment '',
   service_name         varchar(50)  comment '',
   service_description  text  comment '',
   service_type         varchar(20)  comment '服务计价方式：1-次 2-月 3-年，数据字典',
   service_price        float(10,2)  comment '',
   service_status       varchar(2)  comment '服务状态：1-待审核 2-审核通过  ',
   service_check_status smallint  comment '1-正常 2-注销',
   service_avada        bigint  comment '服务示意图片',
   service_create_time  datetime  comment '',
   service_check_time   datetime  comment '',
   service_update_time  datetime  comment '',
   service_input_staff_id bigint  comment '信息录入人员',
   service_check_staff_id bigint  comment '审核人员',
   primary key (service_id)
);

alter table Services comment '服务项目表';

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

alter table SmartDevices comment '智能家居设备表';

/*==============================================================*/
/* Table: StatementPrintRecord                                  */
/*==============================================================*/
create table StatementPrintRecord
(
   statement_print_record_id int not null auto_increment  comment '',
   order_id             int  comment '',
   statement_print_record_status smallint  comment '1-未打印 2-已打印 3-重复打印',
   statement_print_record_time datetime  comment '',
   statement_rprint_record_time datetime  comment '最近重打时间',
   primary key (statement_print_record_id)
);

alter table StatementPrintRecord comment '结算单打印记录';

/*==============================================================*/
/* Table: TransactionRecords                                    */
/*==============================================================*/
create table TransactionRecords
(
   transaction_id       int not null auto_increment  comment '',
   transaction_debit    varchar(50)  comment '借方：可以是会员账号，商户账号、驿站账号',
   transaction_credit   varchar(50)  comment '贷方,可以是会员账号，商户账号、驿站账号',
   transaction_time     datetime  comment '交易时间',
   transacion_amount    float(10,2)  comment '',
   primary key (transaction_id)
);

alter table TransactionRecords comment '财务-资金往来表，财务记账专用';

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

alter table role comment '角色表';

/*==============================================================*/
/* Table: staff                                                 */
/*==============================================================*/
create table staff
(
   staff_id             int not null auto_increment  comment '',
   staff_nanme          varchar(50)  comment '',
   staff_phone          varchar(11)  comment '',
   staff_status         smallint  comment '1-正常 2-注销',
   staff_mail           varchar(100)  comment '',
   primary key (staff_id)
);

alter table staff comment '系统操作人员表';

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

