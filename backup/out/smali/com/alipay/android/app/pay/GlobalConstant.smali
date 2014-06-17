.class public Lcom/alipay/android/app/pay/GlobalConstant;
.super Ljava/lang/Object;


# static fields
.field public static API_NAME:Ljava/lang/String; = null

.field public static API_VERSION:Ljava/lang/String; = null

.field public static final APPID:Ljava/lang/String; = "SPSafePay"

.field public static DEBUG:Z = false

.field private static DEBUG_TEXT:Ljava/lang/String; = null

.field public static DEFAULT_SERVER_NAME:Ljava/lang/String; = null

.field public static DRAW_COLUMN_FRAME:Z = false

.field private static DRAW_COLUMN_FRAME_TEXT:Ljava/lang/String; = null

.field public static DRAW_ROW_FRAME:Z = false

.field private static DRAW_ROW_FRAME_TEXT:Ljava/lang/String; = null

.field public static final GLOBAL_SETTINGS:Ljava/lang/String; = "global_settings"

.field public static HTTP_CONNECTION_TIMEOUT:I = 0x0

.field private static HTTP_CONNECTION_TIMEOUT_TEXT:Ljava/lang/String; = null

.field public static HTTP_SOCKET_BUFFER_SIZE:I = 0x0

.field private static HTTP_SOCKET_BUFFER_SIZE_TEXT:Ljava/lang/String; = null

.field public static HTTP_SO_TIMEOUT:I = 0x0

.field private static HTTP_SO_TIMEOUT_TEXT:Ljava/lang/String; = null

.field public static HTTP_URL:Ljava/lang/String; = null

.field public static final KEY_RSA:Ljava/lang/String; = "trideskey"

.field public static MONITOR_URL:Ljava/lang/String;

.field public static MSP_PACKAGENAME:Ljava/lang/String;

.field public static NAMESPACE:Ljava/lang/String;

.field public static PRE:Z

.field private static PRE_TEXT:Ljava/lang/String;

.field public static RSA_GET_COUNT:I

.field private static RSA_GET_COUNT_TEXT:Ljava/lang/String;

.field public static RSA_PUBLIC:Ljava/lang/String;

.field public static SID:Ljava/lang/String;

.field public static TID_COUNT:I

.field private static TID_COUNT_TEXT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "com.alipay.android.app"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->MSP_PACKAGENAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertProperties(Landroid/content/Context;)V
    .locals 3

    const/16 v1, 0x4e20

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_CONNECTION_TIMEOUT_TEXT:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_CONNECTION_TIMEOUT:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_SO_TIMEOUT_TEXT:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_SO_TIMEOUT:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_SOCKET_BUFFER_SIZE_TEXT:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_SOCKET_BUFFER_SIZE:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG_TEXT:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->PRE_TEXT:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->PRE:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[GlobalConstant]Boolean.parseBoolean(PRE_TEXT) = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/alipay/android/app/pay/GlobalConstant;->PRE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->TID_COUNT_TEXT:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/android/app/pay/GlobalConstant;->TID_COUNT:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_GET_COUNT_TEXT:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_GET_COUNT:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->DRAW_ROW_FRAME_TEXT:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DRAW_ROW_FRAME:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->DRAW_COLUMN_FRAME_TEXT:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DRAW_COLUMN_FRAME:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :goto_8
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->MONITOR_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "https://alipay.com"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->MONITOR_URL:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "http://mclient.alipay.com/gateway.do"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEFAULT_SERVER_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "P610"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEFAULT_SERVER_NAME:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->NAMESPACE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "com.alipay.mobilecashier"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->NAMESPACE:Ljava/lang/String;

    :cond_3
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->API_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "main"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->API_NAME:Ljava/lang/String;

    :cond_4
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->API_VERSION:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "1.0.0"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->API_VERSION:Ljava/lang/String;

    :cond_5
    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "global_settings"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "url"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    :cond_6
    return-void

    :catch_0
    move-exception v0

    sput v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_CONNECTION_TIMEOUT:I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sput v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_SO_TIMEOUT:I

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const/16 v0, 0x4000

    sput v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_SOCKET_BUFFER_SIZE:I

    goto/16 :goto_2

    :catch_3
    move-exception v0

    sput-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    goto/16 :goto_3

    :catch_4
    move-exception v0

    sput-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->PRE:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[GlobalConstant]Exception = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/alipay/android/app/pay/GlobalConstant;->PRE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    goto/16 :goto_4

    :catch_5
    move-exception v0

    const/16 v0, 0xe

    sput v0, Lcom/alipay/android/app/pay/GlobalConstant;->TID_COUNT:I

    goto/16 :goto_5

    :catch_6
    move-exception v0

    const/4 v0, 0x3

    sput v0, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_GET_COUNT:I

    goto/16 :goto_6

    :catch_7
    move-exception v0

    sput-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->DRAW_ROW_FRAME:Z

    goto/16 :goto_7

    :catch_8
    move-exception v0

    sput-boolean v2, Lcom/alipay/android/app/pay/GlobalConstant;->DRAW_COLUMN_FRAME:Z

    goto/16 :goto_8
.end method

.method public static loadProperties(Landroid/content/Context;Ljava/io/InputStream;Z)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    if-eqz p2, :cond_0

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_CONNECTION_TIMEOUT_TEXT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "http_connection_timeout"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_CONNECTION_TIMEOUT_TEXT:Ljava/lang/String;

    :cond_1
    if-eqz p2, :cond_2

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_SO_TIMEOUT_TEXT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string/jumbo v1, "http_so_timeout"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_SO_TIMEOUT_TEXT:Ljava/lang/String;

    :cond_3
    if-eqz p2, :cond_4

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_SOCKET_BUFFER_SIZE_TEXT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string/jumbo v1, "http_socket_buffer_size"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_SOCKET_BUFFER_SIZE_TEXT:Ljava/lang/String;

    :cond_5
    if-eqz p2, :cond_6

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG_TEXT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string/jumbo v1, "debug"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG_TEXT:Ljava/lang/String;

    :cond_7
    if-eqz p2, :cond_8

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->PRE_TEXT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const-string/jumbo v1, "pre"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->PRE_TEXT:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[GlobalConstant]prop.getProperty = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/android/app/pay/GlobalConstant;->PRE_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    :cond_9
    if-eqz p2, :cond_a

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->TID_COUNT_TEXT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const-string/jumbo v1, "tid_count"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->TID_COUNT_TEXT:Ljava/lang/String;

    :cond_b
    if-eqz p2, :cond_c

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_GET_COUNT_TEXT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    const-string/jumbo v1, "rsa_get_count"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_GET_COUNT_TEXT:Ljava/lang/String;

    :cond_d
    if-eqz p2, :cond_e

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_PUBLIC:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "trideskey"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    sput-object v2, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_PUBLIC:Ljava/lang/String;

    :cond_f
    :goto_0
    if-eqz p2, :cond_10

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->DRAW_ROW_FRAME_TEXT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    const-string/jumbo v1, "draw_row_frame"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->DRAW_ROW_FRAME_TEXT:Ljava/lang/String;

    :cond_11
    if-eqz p2, :cond_12

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->DRAW_COLUMN_FRAME_TEXT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    const-string/jumbo v1, "draw_column_frame"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->DRAW_COLUMN_FRAME_TEXT:Ljava/lang/String;

    :cond_13
    if-eqz p2, :cond_14

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->MONITOR_URL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    const-string/jumbo v1, "monitor_url"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->MONITOR_URL:Ljava/lang/String;

    :cond_15
    if-eqz p2, :cond_16

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    const-string/jumbo v1, "http_url"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    :cond_17
    if-eqz p2, :cond_18

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->DEFAULT_SERVER_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    const-string/jumbo v1, "default_server_name"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->DEFAULT_SERVER_NAME:Ljava/lang/String;

    :cond_19
    if-eqz p2, :cond_1a

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->NAMESPACE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_1a
    const-string/jumbo v1, "namespace"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->NAMESPACE:Ljava/lang/String;

    :cond_1b
    if-eqz p2, :cond_1c

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->API_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1c
    const-string/jumbo v1, "api_name"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->API_NAME:Ljava/lang/String;

    :cond_1d
    if-eqz p2, :cond_1e

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->API_VERSION:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1e
    const-string/jumbo v1, "api_version"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->API_VERSION:Ljava/lang/String;

    :cond_1f
    if-eqz p2, :cond_20

    sget-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->SID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_20
    const-string/jumbo v1, "sid"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->SID:Ljava/lang/String;

    :cond_21
    new-instance v0, Lcom/alipay/android/app/util/ChannelConfig;

    invoke-direct {v0}, Lcom/alipay/android/app/util/ChannelConfig;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/util/ChannelConfig;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const-string/jumbo v1, "isSandBox"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/util/ChannelConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_22

    const-string/jumbo v0, "https://mobiletestabc.alipaydev.com/mobileclientgw/net/gateway.do"

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->MONITOR_URL:Ljava/lang/String;

    const-string/jumbo v0, "https://mobiletestabc.alipaydev.com/mobileclientgw/net/gateway.do "

    sput-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    :cond_22
    :goto_2
    return-void

    :cond_23
    const-string/jumbo v2, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    const-string/jumbo v3, "rsa_public"

    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_PUBLIC:Ljava/lang/String;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "trideskey"

    sget-object v3, Lcom/alipay/android/app/pay/GlobalConstant;->RSA_PUBLIC:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_24
    const/4 v0, 0x0

    goto :goto_1
.end method
