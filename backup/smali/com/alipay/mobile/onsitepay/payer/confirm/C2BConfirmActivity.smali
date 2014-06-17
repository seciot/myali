.class public Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;
.super Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;
.source "C2BConfirmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "facepayment_c2b_confirminfor"
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

.field protected m:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lorg/json/JSONObject;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->n:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->o:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->p:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->q:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->r:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->s:Lorg/json/JSONObject;

    .line 55
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->t:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/String;)V
    .locals 13
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "kf"

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->f:Ljava/lang/String;

    const-string/jumbo v8, "ZD"

    iget-object v9, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->a()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "-"

    const/4 v5, 0x5

    new-array v12, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v12, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "callcashier"

    aput-object v6, v12, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    aput-object v6, v12, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "y"

    aput-object v6, v12, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "alipayclient"

    aput-object v6, v12, v5

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    new-instance v0, Lcom/alipay/livetradeprod/core/model/OnsitePayReq;

    invoke-direct {v0}, Lcom/alipay/livetradeprod/core/model/OnsitePayReq;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/livetradeprod/core/model/OnsitePayReq;->dynamicId:Ljava/lang/String;

    .line 137
    iput-object p1, v0, Lcom/alipay/livetradeprod/core/model/OnsitePayReq;->tradeNo:Ljava/lang/String;

    .line 138
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->c()Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;->onsiteAutoPay(Lcom/alipay/livetradeprod/core/model/OnsitePayReq;)Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u81ea\u52a8\u6536\u94f6\u7ed3\u679c\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->b(Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V

    .line 141
    return-void
.end method

.method protected final e()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->f:Ljava/lang/String;

    const-string/jumbo v1, "20000056"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->m:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const-string/jumbo v1, "\u4ed8\u6b3e\u7801"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->s:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->s:Lorg/json/JSONObject;

    const-string/jumbo v1, "dynamicId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->s:Lorg/json/JSONObject;

    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->s:Lorg/json/JSONObject;

    const-string/jumbo v1, "storeName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->s:Lorg/json/JSONObject;

    const-string/jumbo v1, "tradeNo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->s:Lorg/json/JSONObject;

    const-string/jumbo v1, "realAmount"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->s:Lorg/json/JSONObject;

    const-string/jumbo v1, "originAmount"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, "  \u539f\u4ef7"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->s:Lorg/json/JSONObject;

    const-string/jumbo v1, "bizSubType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->s:Lorg/json/JSONObject;

    const-string/jumbo v1, "payType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->e:Ljava/lang/String;

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->d()V

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->f:Ljava/lang/String;

    const-string/jumbo v1, "10000014"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->m:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const-string/jumbo v1, "\u5f53\u9762\u4ed8"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public f()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->t:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 112
    sget v1, Lcom/alipay/mobile/onsitepay/d;->a:I

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->c:J

    .line 116
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "kf"

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->f:Ljava/lang/String;

    const-string/jumbo v8, "C2B"

    iget-object v9, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->a()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "-"

    const/4 v5, 0x5

    new-array v12, v5, [Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->p:Ljava/lang/String;

    aput-object v5, v12, v6

    const/4 v5, 0x1

    const-string/jumbo v6, "confirmpay"

    aput-object v6, v12, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    aput-object v6, v12, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "y"

    aput-object v6, v12, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "alipayclient"

    aput-object v6, v12, v5

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 119
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->showProgressDialog(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v0, "AUTOPAY"

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->c(Ljava/lang/String;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->f()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "fromAppid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->f:Ljava/lang/String;

    .line 64
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "responseStr"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->s:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extern_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity;->d:Ljava/lang/String;

    .line 69
    return-void

    .line 65
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
