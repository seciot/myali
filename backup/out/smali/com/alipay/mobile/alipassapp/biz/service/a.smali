.class public Lcom/alipay/mobile/alipassapp/biz/service/a;
.super Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/alipassapp/biz/common/d;

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/alipassapp/biz/service/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/alipassapp/biz/service/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "entry"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v1, ""

    const-string/jumbo v2, "80000001"

    invoke-interface {p1, v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/service/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/a;->b:Lcom/alipay/mobile/alipassapp/biz/common/d;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/alipassapp/biz/common/d;->b(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getHasCurrent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/a;->b:Lcom/alipay/mobile/alipassapp/biz/common/d;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/alipassapp/biz/common/d;->d(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getHasCurrent()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public distributeApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/a;->c:J

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "20000021"

    invoke-static {v0, p2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "TRAVEL"

    const-string/jumbo v1, "t"

    const-string/jumbo v2, "/pages/travel.html?isFrom=assetIndex"

    const-string/jumbo v3, "b"

    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "discovey_index_has_travel_data"

    const/4 v3, 0x0

    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/service/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/service/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-interface {p4, p1, p2, p3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/service/a;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {v2, p4}, Lcom/alipay/mobile/alipassapp/biz/service/a;->a(Ljava/lang/String;Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/alipassapp/biz/service/a;->c:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/service/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u65c5\u884cwebapp\u52a0\u8f7d\u65f6\u95f4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/a;->c:J

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "20000030"

    invoke-static {v0, p2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "COUPON"

    const-string/jumbo v1, "c"

    const-string/jumbo v2, "/pages/coupon.html?isFrom=assetIndex"

    const-string/jumbo v3, "b"

    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "discovey_index_has_coupon_data"

    const/4 v3, 0x0

    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/service/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/service/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-interface {p4, p1, p2, p3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {v2, p4}, Lcom/alipay/mobile/alipassapp/biz/service/a;->a(Ljava/lang/String;Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/alipassapp/biz/service/a;->c:J

    sub-long/2addr v0, v2

    sget-object v2, Lcom/alipay/mobile/alipassapp/biz/service/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5361\u5238webapp\u52a0\u8f7d\u65f6\u95f4"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/a;->c:J

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "20000062"

    invoke-static {v0, p2}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MCARD"

    const-string/jumbo v1, "m"

    const-string/jumbo v2, "b"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "discovey_index_has_member_data"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-direct {p0, v0}, Lcom/alipay/mobile/alipassapp/biz/service/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const-string/jumbo v0, "has_member_data"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_9
    invoke-interface {p4, p1, p2, p3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/a;->b:Lcom/alipay/mobile/alipassapp/biz/common/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/common/d;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/biz/service/a;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/d;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/a;->b:Lcom/alipay/mobile/alipassapp/biz/common/d;

    :cond_0
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
