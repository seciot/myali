.class public Lcom/alipay/mobile/alipassapp/biz/service/e;
.super Lcom/alipay/mobile/alipassapp/biz/service/d;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/alipassapp/biz/a/a;

.field private c:Lcom/alipay/mobile/alipassapp/biz/a;

.field private d:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private e:Lcom/alipay/mobile/alipassapp/biz/common/d;

.field private f:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/alipassapp/biz/service/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/alipassapp/biz/service/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/service/d;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->f:Ljava/lang/Long;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    .locals 4

    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->b:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->c:Lcom/alipay/mobile/alipassapp/biz/a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/alipay/mobile/alipassapp/biz/a;->a(Ljava/lang/String;ZZ)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->b:Lcom/alipay/mobile/alipassapp/biz/a/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/alipay/mobile/alipassapp/biz/a/a;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/service/e;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private a()Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    .locals 2

    new-instance v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->e:Lcom/alipay/mobile/alipassapp/biz/common/d;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/common/d;->b()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->f:Ljava/lang/Long;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->b:Lcom/alipay/mobile/alipassapp/biz/a/a;

    invoke-interface {v1}, Lcom/alipay/mobile/alipassapp/biz/a/a;->e()Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/alipay/mobile/alipassapp/biz/service/e;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 12

    const-wide/16 v2, 0xe10

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/biz/service/e;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "alipass_setting"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/framework/AlipayApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    if-eqz p1, :cond_1

    const-string/jumbo v0, "interval"

    const-wide/16 v7, 0xe10

    invoke-interface {v6, v0, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string/jumbo v4, "last_previewload_time"

    const-wide/16 v7, 0x0

    invoke-interface {v6, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v7, v9, v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v0, v9

    cmp-long v0, v7, v0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/biz/service/e;->a()Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->success:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->getPassTimelineList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;->getPassList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    iget-object v1, v0, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->gmtModified:Ljava/lang/String;

    if-nez v1, :cond_5

    :cond_4
    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/service/e;->a:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v1, v0, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->passId:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->gmtModified:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/alipassapp/biz/service/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-boolean v0, v9, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->success:Z

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getOperations()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/biz/service/e;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getConnType(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_3

    invoke-virtual {v9}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;->getPassInfo()Lcom/alipay/kabaoprod/core/model/model/PassInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getPassBaseInfo()Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->displayInfo:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_7
    :goto_3
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getAppInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getAppInfo()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/androidquery/AQuery;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/biz/service/e;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v4}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    check-cast v1, Lcom/androidquery/AQuery;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AppInfo;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/alipassapp/biz/service/e;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    :try_start_1
    new-instance v10, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassInfo;->getOperations()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v4, v5

    :goto_4
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_6

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v1, "format"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v11, "img"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;->getMessage()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg$MessageText;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;->getMessage()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg$MessageText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg$MessageText;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/androidquery/AQuery;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/biz/service/e;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v11

    invoke-interface {v11}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v11, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v11}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    check-cast v1, Lcom/androidquery/AQuery;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg;->getMessage()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg$MessageText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationImg$MessageText;->getImg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    :cond_a
    iget-object v0, v0, Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;->displayInfo:Ljava/lang/String;

    const-class v1, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/b;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lcom/androidquery/AQuery;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/biz/service/e;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v9}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    check-cast v1, Lcom/androidquery/AQuery;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getLogo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    :cond_b
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getStrip()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Lcom/androidquery/AQuery;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/biz/service/e;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v9}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    check-cast v1, Lcom/androidquery/AQuery;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getStrip()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    :cond_c
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getExp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/androidquery/AQuery;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/biz/service/e;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v9}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    check-cast v1, Lcom/androidquery/AQuery;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getExp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    :cond_d
    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/androidquery/AQuery;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/biz/service/e;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v9

    invoke-interface {v9}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v1, v9}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    check-cast v1, Lcom/androidquery/AQuery;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_3

    :cond_e
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "interval"

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->f:Ljava/lang/Long;

    if-nez v0, :cond_f

    move-wide v0, v2

    :goto_5
    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_previewload_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v0

    goto :goto_5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->b:Lcom/alipay/mobile/alipassapp/biz/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/a/a/a;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/biz/service/e;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->b:Lcom/alipay/mobile/alipassapp/biz/a/a;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->c:Lcom/alipay/mobile/alipassapp/biz/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/c/a;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/biz/service/e;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/c/a;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->c:Lcom/alipay/mobile/alipassapp/biz/a;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-nez v0, :cond_2

    new-instance v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/biz/service/e;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->e:Lcom/alipay/mobile/alipassapp/biz/common/d;

    if-nez v0, :cond_3

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/common/d;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/biz/service/e;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/d;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/e;->e:Lcom/alipay/mobile/alipassapp/biz/common/d;

    :cond_3
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
