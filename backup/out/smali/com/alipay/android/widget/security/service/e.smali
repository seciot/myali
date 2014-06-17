.class public final Lcom/alipay/android/widget/security/service/e;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field protected a:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "SecurityOperateRecordsService"

    sput-object v0, Lcom/alipay/android/widget/security/service/e;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/e;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iput-object p2, p0, Lcom/alipay/android/widget/security/service/e;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0xf

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/widget/security/service/e;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;
    .locals 6

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/e;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/SecurityWidgetFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/SecurityWidgetFacade;

    new-instance v2, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;

    invoke-direct {v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/widget/security/service/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->setLoginId(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v3, "login"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "UserLogin"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "WapLogin"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->setNormType(Ljava/util/List;)V

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->setPageNum(I)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "forward"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {v3}, Lcom/alipay/android/widget/security/service/e;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->setStartDate(Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    const-string/jumbo v1, "forward"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-static {v3}, Lcom/alipay/android/widget/security/service/e;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->setEndDate(Ljava/lang/String;)V

    :goto_1
    if-nez p2, :cond_5

    const-string/jumbo v1, "forward"

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->setDirect(Ljava/lang/String;)V

    :goto_2
    :try_start_0
    invoke-interface {v0, v2}, Lcom/alipay/mobilesecurity/biz/gw/service/securitywidget/SecurityWidgetFacade;->queryOperationsLog(Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz p1, :cond_3

    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Lcom/alipay/android/widget/security/service/e;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->setStartDate(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/alipay/android/widget/security/service/e;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{[info=OperationsLogRes], [msg="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "]}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v2, p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->setEndDate(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2, p2}, Lcom/alipay/mobilesecurity/core/model/mainpage/operations/OperationsLogReq;->setDirect(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v1, Lcom/alipay/android/widget/security/service/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=initListView], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    throw v0
.end method
