.class public final enum Lcom/alipay/mobile/lib/model/RequestType;
.super Ljava/lang/Enum;
.source "RequestType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/lib/model/RequestType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM_REQUEST_PUBLIC_EVENT_PROCESS_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum BOTTOM_REQUEST_RESPONSE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum EVENT_REQUEST_RESPONSE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum NONE:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum PUBLIC_REQUEST_RESPONSE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum REQUEST_ACCOUNT_MENU:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum REQUEST_BOTTOM_PUBLIC_EVENT_PROCESS_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum REQUEST_BOTTOM_PULL_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum REQUEST_CLICK_EVENT:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum REQUEST_CLICK_EVENT_LOADING:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum REQUEST_DELETE_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum REQUEST_DELETE_MESSAGE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum REQUEST_PERSON_CONTACT_INFO:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum REQUEST_PERSON_CONTACT_INFO_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum REQUEST_PUBLIC_ACCOUNT_INFO:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum REQUEST_PUBLIC_ACCOUNT_INFO_DB:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum REQUEST_REFRESH_RECORD_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum REQUEST_REFRESH_RECORD_MESSAGE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum REQUEST_TOP_PUBLIC_EVENT_PROCESS_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum REQUEST_TOP_PULL_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum SUCESS_ERROR_SUB_VALUE:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum TOP_REQUEST_PUBLIC_EVENT_PROCESS_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

.field public static final enum TOP_REQUEST_RESPONSE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

.field private static final synthetic b:[Lcom/alipay/mobile/lib/model/RequestType;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 12
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v5, v5}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->NONE:Lcom/alipay/mobile/lib/model/RequestType;

    .line 14
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "SUCESS_ERROR_SUB_VALUE"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->SUCESS_ERROR_SUB_VALUE:Lcom/alipay/mobile/lib/model/RequestType;

    .line 16
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "REQUEST_TOP_PULL_MESSAGE"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_TOP_PULL_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    .line 18
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "REQUEST_BOTTOM_PULL_MESSAGE"

    const/16 v2, 0x101

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_BOTTOM_PULL_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    .line 20
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "REQUEST_PUBLIC_ACCOUNT_INFO"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v9, v2}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_PUBLIC_ACCOUNT_INFO:Lcom/alipay/mobile/lib/model/RequestType;

    .line 22
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "REQUEST_ACCOUNT_MENU"

    const/4 v2, 0x5

    const/16 v3, 0x103

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_ACCOUNT_MENU:Lcom/alipay/mobile/lib/model/RequestType;

    .line 24
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "REQUEST_CLICK_EVENT"

    const/4 v2, 0x6

    const/16 v3, 0x104

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_CLICK_EVENT:Lcom/alipay/mobile/lib/model/RequestType;

    .line 26
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "REQUEST_DELETE_MESSAGE"

    const/4 v2, 0x7

    const/16 v3, 0x105

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_DELETE_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    .line 28
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "REQUEST_REFRESH_RECORD_MESSAGE"

    const/16 v2, 0x8

    const/16 v3, 0x107

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_REFRESH_RECORD_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    .line 30
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "REQUEST_CLICK_EVENT_LOADING"

    const/16 v2, 0x9

    const/16 v3, 0x108

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_CLICK_EVENT_LOADING:Lcom/alipay/mobile/lib/model/RequestType;

    .line 32
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "REQUEST_TOP_PUBLIC_EVENT_PROCESS_MESSAGE"

    const/16 v2, 0xa

    const/16 v3, 0x109

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_TOP_PUBLIC_EVENT_PROCESS_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    .line 34
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "REQUEST_BOTTOM_PUBLIC_EVENT_PROCESS_MESSAGE"

    const/16 v2, 0xb

    const/16 v3, 0x110

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_BOTTOM_PUBLIC_EVENT_PROCESS_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    .line 36
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "REQUEST_PERSON_CONTACT_INFO"

    const/16 v2, 0xc

    const/16 v3, 0x111

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_PERSON_CONTACT_INFO:Lcom/alipay/mobile/lib/model/RequestType;

    .line 38
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "REQUEST_PUBLIC_ACCOUNT_INFO_DB"

    const/16 v2, 0xd

    sget-object v3, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_PUBLIC_ACCOUNT_INFO:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-virtual {v3}, Lcom/alipay/mobile/lib/model/RequestType;->getCode()I

    move-result v3

    add-int/lit16 v3, v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_PUBLIC_ACCOUNT_INFO_DB:Lcom/alipay/mobile/lib/model/RequestType;

    .line 40
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "TOP_REQUEST_RESPONSE_ERROR"

    const/16 v2, 0xe

    sget-object v3, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_TOP_PULL_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    sget-object v4, Lcom/alipay/mobile/lib/model/RequestType;->SUCESS_ERROR_SUB_VALUE:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;ILcom/alipay/mobile/lib/model/RequestType;Lcom/alipay/mobile/lib/model/RequestType;)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->TOP_REQUEST_RESPONSE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    .line 42
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "BOTTOM_REQUEST_RESPONSE_ERROR"

    const/16 v2, 0xf

    sget-object v3, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_BOTTOM_PULL_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    sget-object v4, Lcom/alipay/mobile/lib/model/RequestType;->SUCESS_ERROR_SUB_VALUE:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;ILcom/alipay/mobile/lib/model/RequestType;Lcom/alipay/mobile/lib/model/RequestType;)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->BOTTOM_REQUEST_RESPONSE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    .line 45
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "TOP_REQUEST_PUBLIC_EVENT_PROCESS_ERROR"

    const/16 v2, 0x10

    sget-object v3, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_TOP_PUBLIC_EVENT_PROCESS_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    sget-object v4, Lcom/alipay/mobile/lib/model/RequestType;->SUCESS_ERROR_SUB_VALUE:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;ILcom/alipay/mobile/lib/model/RequestType;Lcom/alipay/mobile/lib/model/RequestType;)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->TOP_REQUEST_PUBLIC_EVENT_PROCESS_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    .line 48
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "BOTTOM_REQUEST_PUBLIC_EVENT_PROCESS_ERROR"

    const/16 v2, 0x11

    sget-object v3, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_BOTTOM_PUBLIC_EVENT_PROCESS_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    sget-object v4, Lcom/alipay/mobile/lib/model/RequestType;->SUCESS_ERROR_SUB_VALUE:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;ILcom/alipay/mobile/lib/model/RequestType;Lcom/alipay/mobile/lib/model/RequestType;)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->BOTTOM_REQUEST_PUBLIC_EVENT_PROCESS_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    .line 51
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "PUBLIC_REQUEST_RESPONSE_ERROR"

    const/16 v2, 0x12

    sget-object v3, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_PUBLIC_ACCOUNT_INFO:Lcom/alipay/mobile/lib/model/RequestType;

    sget-object v4, Lcom/alipay/mobile/lib/model/RequestType;->SUCESS_ERROR_SUB_VALUE:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;ILcom/alipay/mobile/lib/model/RequestType;Lcom/alipay/mobile/lib/model/RequestType;)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->PUBLIC_REQUEST_RESPONSE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    .line 54
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "REQUEST_PERSON_CONTACT_INFO_ERROR"

    const/16 v2, 0x13

    sget-object v3, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_PERSON_CONTACT_INFO:Lcom/alipay/mobile/lib/model/RequestType;

    sget-object v4, Lcom/alipay/mobile/lib/model/RequestType;->SUCESS_ERROR_SUB_VALUE:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;ILcom/alipay/mobile/lib/model/RequestType;Lcom/alipay/mobile/lib/model/RequestType;)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_PERSON_CONTACT_INFO_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    .line 57
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "EVENT_REQUEST_RESPONSE_ERROR"

    const/16 v2, 0x14

    sget-object v3, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_CLICK_EVENT:Lcom/alipay/mobile/lib/model/RequestType;

    sget-object v4, Lcom/alipay/mobile/lib/model/RequestType;->SUCESS_ERROR_SUB_VALUE:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;ILcom/alipay/mobile/lib/model/RequestType;Lcom/alipay/mobile/lib/model/RequestType;)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->EVENT_REQUEST_RESPONSE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    .line 59
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "REQUEST_REFRESH_RECORD_MESSAGE_ERROR"

    const/16 v2, 0x15

    sget-object v3, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_REFRESH_RECORD_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    sget-object v4, Lcom/alipay/mobile/lib/model/RequestType;->SUCESS_ERROR_SUB_VALUE:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;ILcom/alipay/mobile/lib/model/RequestType;Lcom/alipay/mobile/lib/model/RequestType;)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_REFRESH_RECORD_MESSAGE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    .line 62
    new-instance v0, Lcom/alipay/mobile/lib/model/RequestType;

    const-string/jumbo v1, "REQUEST_DELETE_MESSAGE_ERROR"

    const/16 v2, 0x16

    sget-object v3, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_DELETE_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    sget-object v4, Lcom/alipay/mobile/lib/model/RequestType;->SUCESS_ERROR_SUB_VALUE:Lcom/alipay/mobile/lib/model/RequestType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/lib/model/RequestType;-><init>(Ljava/lang/String;ILcom/alipay/mobile/lib/model/RequestType;Lcom/alipay/mobile/lib/model/RequestType;)V

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_DELETE_MESSAGE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    .line 10
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/alipay/mobile/lib/model/RequestType;

    sget-object v1, Lcom/alipay/mobile/lib/model/RequestType;->NONE:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/lib/model/RequestType;->SUCESS_ERROR_SUB_VALUE:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_TOP_PULL_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_BOTTOM_PULL_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_PUBLIC_ACCOUNT_INFO:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_ACCOUNT_MENU:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_CLICK_EVENT:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_DELETE_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_REFRESH_RECORD_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_CLICK_EVENT_LOADING:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_TOP_PUBLIC_EVENT_PROCESS_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_BOTTOM_PUBLIC_EVENT_PROCESS_MESSAGE:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_PERSON_CONTACT_INFO:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_PUBLIC_ACCOUNT_INFO_DB:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->TOP_REQUEST_RESPONSE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->BOTTOM_REQUEST_RESPONSE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->TOP_REQUEST_PUBLIC_EVENT_PROCESS_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->BOTTOM_REQUEST_PUBLIC_EVENT_PROCESS_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->PUBLIC_REQUEST_RESPONSE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_PERSON_CONTACT_INFO_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->EVENT_REQUEST_RESPONSE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_REFRESH_RECORD_MESSAGE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/alipay/mobile/lib/model/RequestType;->REQUEST_DELETE_MESSAGE_ERROR:Lcom/alipay/mobile/lib/model/RequestType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/lib/model/RequestType;->b:[Lcom/alipay/mobile/lib/model/RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/alipay/mobile/lib/model/RequestType;->a:I

    .line 68
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/alipay/mobile/lib/model/RequestType;Lcom/alipay/mobile/lib/model/RequestType;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/lib/model/RequestType;",
            "Lcom/alipay/mobile/lib/model/RequestType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    invoke-virtual {p3}, Lcom/alipay/mobile/lib/model/RequestType;->getCode()I

    move-result v0

    invoke-virtual {p4}, Lcom/alipay/mobile/lib/model/RequestType;->getCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/lib/model/RequestType;->a:I

    .line 72
    return-void
.end method

.method public static getTypeByCode(I)Lcom/alipay/mobile/lib/model/RequestType;
    .locals 6
    .parameter

    .prologue
    .line 79
    sget-object v1, Lcom/alipay/mobile/lib/model/RequestType;->NONE:Lcom/alipay/mobile/lib/model/RequestType;

    .line 80
    invoke-static {}, Lcom/alipay/mobile/lib/model/RequestType;->values()[Lcom/alipay/mobile/lib/model/RequestType;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 81
    invoke-virtual {v0}, Lcom/alipay/mobile/lib/model/RequestType;->getCode()I

    move-result v5

    if-ne p0, v5, :cond_0

    .line 86
    :goto_1
    return-object v0

    .line 80
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/lib/model/RequestType;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/alipay/mobile/lib/model/RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/lib/model/RequestType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/lib/model/RequestType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/alipay/mobile/lib/model/RequestType;->b:[Lcom/alipay/mobile/lib/model/RequestType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/lib/model/RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/lib/model/RequestType;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/alipay/mobile/lib/model/RequestType;->a:I

    return v0
.end method
