.class public Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;
.super Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "alipass_payment_c2b_confirminfor"
.end annotation


# instance fields
.field g:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tradeNameView"
    .end annotation
.end field

.field h:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tradeOppositeView"
    .end annotation
.end field

.field i:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "tradeAmountView"
    .end annotation
.end field

.field j:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "originalAmountMessage"
    .end annotation
.end field

.field k:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "originalAmountView"
    .end annotation
.end field

.field l:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "C2BConfirmPay"
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Lorg/json/JSONObject;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->n:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->o:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->p:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->r:Lorg/json/JSONObject;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;)V
    .locals 13
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "kf"

    const-string/jumbo v8, "ZD"

    iget-object v9, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "-"

    const/4 v4, 0x5

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "kf"

    aput-object v5, v12, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "callcashier"

    aput-object v5, v12, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ""

    aput-object v5, v12, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "y"

    aput-object v5, v12, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "alipayclient"

    aput-object v5, v12, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/livetradeprod/core/model/OnsitePayReq;

    invoke-direct {v1}, Lcom/alipay/livetradeprod/core/model/OnsitePayReq;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/livetradeprod/core/model/OnsitePayReq;->dynamicId:Ljava/lang/String;

    iput-object p1, v1, Lcom/alipay/livetradeprod/core/model/OnsitePayReq;->tradeNo:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    invoke-interface {v0, v1}, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;->onsiteAutoPay(Lcom/alipay/livetradeprod/core/model/OnsitePayReq;)Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u81ea\u52a8\u6536\u94f6\u7ed3\u679c\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->a(Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V

    return-void
.end method

.method protected final d()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->r:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->r:Lorg/json/JSONObject;

    const-string/jumbo v1, "dynamicId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->r:Lorg/json/JSONObject;

    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->r:Lorg/json/JSONObject;

    const-string/jumbo v1, "storeName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->r:Lorg/json/JSONObject;

    const-string/jumbo v1, "tradeNo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->r:Lorg/json/JSONObject;

    const-string/jumbo v1, "realAmount"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->r:Lorg/json/JSONObject;

    const-string/jumbo v1, "originAmount"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, "  \u539f\u4ef7"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->r:Lorg/json/JSONObject;

    const-string/jumbo v1, "bizSubType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->r:Lorg/json/JSONObject;

    const-string/jumbo v1, "payType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->f:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->c()V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public e()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->s:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->C2BConfirmPay:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->c:J

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "kf"

    const-string/jumbo v8, "C2B"

    iget-object v9, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "-"

    const/4 v4, 0x5

    new-array v12, v4, [Ljava/lang/String;

    const-string/jumbo v4, "kf"

    aput-object v4, v12, v5

    const/4 v4, 0x1

    const-string/jumbo v5, "confirmpay"

    aput-object v5, v12, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ""

    aput-object v5, v12, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "y"

    aput-object v5, v12, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "alipayclient"

    aput-object v5, v12, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->showProgressDialog(Ljava/lang/String;)V

    const-string/jumbo v0, "AUTOPAY"

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->e()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "responseStr"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->r:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "extern_token"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/C2BConfirmActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/BasicConfirmActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
