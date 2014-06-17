.class public Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/alipassapp/biz/a;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/mobile/common/share/ShareContent;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->d:I

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->e:Ljava/util/Map;

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->i:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->i:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->e:Ljava/util/Map;

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/c/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/c/a;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->b:Lcom/alipay/mobile/alipassapp/biz/a;

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->b:Lcom/alipay/mobile/alipassapp/biz/a;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/a;->c(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareInfoResult;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->c()V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->h:J

    sub-long/2addr v1, v3

    sget-object v3, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5361\u5238\u5206\u4eabAlipassForShareActivityRPC\u52a0\u8f7d\u65f6\u95f4"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/ShareInfoResult;->getShareInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->f:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->e:Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/alipay/mobile/common/share/ShareContent;

    invoke-direct {v2}, Lcom/alipay/mobile/common/share/ShareContent;-><init>()V

    const/16 v3, 0x1000

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->getShareType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/share/ShareContent;->setTitle(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/share/ShareContent;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/share/ShareContent;->setImgUrl(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->getShareType()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->d:I

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->getShareType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v0, v2

    iput v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->d:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->c()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/share/ShareContent;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/kabaoprod/core/model/model/PassShareInfo;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/share/ShareContent;->setContent(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->e:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->b()V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 13
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ShareService;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    iget v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->d:I

    new-instance v4, Lcom/alipay/mobile/alipassapp/ui/s;

    invoke-direct {v4, p0, v0}, Lcom/alipay/mobile/alipassapp/ui/s;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;Lcom/alipay/mobile/framework/service/ShareService;)V

    invoke-direct {v1, p0, v3, v4}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;-><init>(Landroid/content/Context;ILcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;)V

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->i:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->i:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/t;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/t;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->i:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->h:J

    sub-long v3, v0, v3

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5361\u5238\u5206\u4eabAlipassForShareActivity\u52a0\u8f7d\u65f6\u95f4"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "-"

    const-string/jumbo v8, "perf_open_passshare"

    const-string/jumbo v10, "s"

    const-string/jumbo v11, "c"

    const/4 v5, 0x4

    new-array v12, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v9, ""

    aput-object v9, v12, v5

    const/4 v5, 0x1

    const-string/jumbo v9, ""

    aput-object v9, v12, v5

    const/4 v5, 0x2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v5

    const/4 v3, 0x3

    const-string/jumbo v4, ""

    aput-object v4, v12, v3

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v9, v2

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public c()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v1, 0x0

    const-string/jumbo v0, "\u5206\u4eab\u5931\u8d25\uff01"

    invoke-static {p0, v1, v0, v1}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->h:J

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "p"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->c:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "aid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "\u52a0\u8f7d\u4e2d..."

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->showProgressDialog(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->dismissProgressDialog()V

    const-string/jumbo v0, "\u5206\u4eab\u5931\u8d25\uff01"

    invoke-static {p0, v3, v0, v3}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->finish()V

    goto :goto_0
.end method
