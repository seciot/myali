.class public Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;
.super Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;
.source "C2CConfirmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "facepayment_c2c_confirminfor"
.end annotation


# instance fields
.field protected A:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "numberKeyLayout"
    .end annotation
.end field

.field protected B:Landroid/widget/RelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "numberPayLayout"
    .end annotation
.end field

.field protected C:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "headImageLayout"
    .end annotation
.end field

.field protected D:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "c2cLayout"
    .end annotation
.end field

.field protected E:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "pay_text"
    .end annotation
.end field

.field protected F:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field protected G:Lcom/alipay/mobile/common/info/DeviceInfo;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

.field private N:Lcom/alipay/mobile/onsitepay/utils/g;

.field protected g:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "creatQuickPay"
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "personNameTextView"
    .end annotation
.end field

.field protected i:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "accountTextView"
    .end annotation
.end field

.field protected j:Lcom/alipay/mobile/common/misc/CircularImageView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "headImage"
    .end annotation
.end field

.field protected k:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "paymentEdit"
    .end annotation
.end field

.field protected l:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "digitkeypad_1"
    .end annotation
.end field

.field protected m:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "digitkeypad_2"
    .end annotation
.end field

.field protected n:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "digitkeypad_3"
    .end annotation
.end field

.field protected o:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "digitkeypad_4"
    .end annotation
.end field

.field protected p:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "digitkeypad_5"
    .end annotation
.end field

.field protected q:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "digitkeypad_6"
    .end annotation
.end field

.field protected r:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "digitkeypad_7"
    .end annotation
.end field

.field protected s:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "digitkeypad_8"
    .end annotation
.end field

.field protected t:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "digitkeypad_9"
    .end annotation
.end field

.field protected u:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "digitkeypad_decimal"
    .end annotation
.end field

.field protected v:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "digitkeypad_0"
    .end annotation
.end field

.field protected w:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "digitkeypad_c"
    .end annotation
.end field

.field protected x:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "keypadLayout1"
    .end annotation
.end field

.field protected y:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "keypadLayout2"
    .end annotation
.end field

.field protected z:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "keypadLayout3"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 62
    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 64
    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 66
    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->j:Lcom/alipay/mobile/common/misc/CircularImageView;

    .line 68
    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    .line 113
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->H:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->I:Ljava/lang/String;

    .line 115
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->J:Ljava/lang/String;

    .line 116
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->K:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, "otp"

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->L:Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->M:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 473
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getSelectionStart()I

    move-result v0

    .line 474
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 475
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 476
    :goto_0
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 477
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 482
    :cond_0
    :goto_1
    return-void

    .line 475
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 479
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 480
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v2, v1, 0x3

    add-int/lit8 v1, v1, 0x4

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1
.end method


# virtual methods
.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->j:Lcom/alipay/mobile/common/misc/CircularImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/misc/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    return-void
.end method

.method protected final b()Z
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 13
    .parameter
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 315
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "kf"

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->f:Ljava/lang/String;

    const-string/jumbo v8, "ZD"

    iget-object v9, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->a()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "-"

    const/4 v5, 0x5

    new-array v12, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "kf"

    aput-object v6, v12, v5

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

    .line 321
    :try_start_0
    const-string/jumbo v0, "lbs"

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->L:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    new-instance v0, Lcom/alipay/livetradeprod/core/model/rpc/SoundWaveLbsPayReq;

    invoke-direct {v0}, Lcom/alipay/livetradeprod/core/model/rpc/SoundWaveLbsPayReq;-><init>()V

    .line 323
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/livetradeprod/core/model/rpc/SoundWaveLbsPayReq;->dynamicId:Ljava/lang/String;

    .line 324
    iput-object p1, v0, Lcom/alipay/livetradeprod/core/model/rpc/SoundWaveLbsPayReq;->payMoney:Ljava/lang/String;

    .line 325
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->K:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/livetradeprod/core/model/rpc/SoundWaveLbsPayReq;->payeeUserId:Ljava/lang/String;

    .line 326
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->c()Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;->createLbsTradeAndAutoPay(Lcom/alipay/livetradeprod/core/model/rpc/SoundWaveLbsPayReq;)Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 333
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u81ea\u52a8\u6536\u94f6\u7ed3\u679c\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    :goto_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->b(Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V

    .line 338
    return-void

    .line 328
    :cond_0
    :try_start_2
    new-instance v0, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayReq;

    invoke-direct {v0}, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayReq;-><init>()V

    .line 329
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayReq;->dynamicId:Ljava/lang/String;

    .line 330
    iput-object p1, v0, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayReq;->payMoney:Ljava/lang/String;

    .line 331
    invoke-static {}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->c()Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;->createFastPayTradeAndAutoPay(Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayReq;)Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 335
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->dismissProgressDialog()V

    goto :goto_1

    .line 334
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method protected final e()V
    .locals 14
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v13, 0x1

    const/4 v11, 0x0

    .line 143
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "width:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " height:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v0, 0x3e8

    if-gt v2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->E:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 144
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->f:Ljava/lang/String;

    const-string/jumbo v2, "20000056"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->F:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const-string/jumbo v2, "\u4ed8\u6b3e\u7801"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const-class v2, Landroid/widget/EditText;

    :try_start_1
    const-string/jumbo v3, "setShowSoftInputOnFocus"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v13}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->M:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->H:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->I:Ljava/lang/String;

    const-string/jumbo v3, "hideaccount"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/helper/HideUtils;->hide(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->j:Lcom/alipay/mobile/common/misc/CircularImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/base/commonbiz/R$drawable;->user_info_area_portrait_default:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/misc/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->m:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->p:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->q:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->r:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->s:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->t:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->u:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->v:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->w:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->G:Lcom/alipay/mobile/common/info/DeviceInfo;

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->G:Lcom/alipay/mobile/common/info/DeviceInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getScreenHeight()I

    move-result v0

    div-int/lit8 v6, v0, 0xc

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->G:Lcom/alipay/mobile/common/info/DeviceInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getScreenHeight()I

    move-result v0

    div-int/lit8 v7, v0, 0x55

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->G:Lcom/alipay/mobile/common/info/DeviceInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getScreenHeight()I

    move-result v0

    div-int/lit8 v12, v0, 0x2a

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->G:Lcom/alipay/mobile/common/info/DeviceInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getScreenHeight()I

    move-result v0

    div-int/lit8 v9, v0, 0x1c

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->v:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->w:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v4, v6, 0x2

    add-int/2addr v4, v7

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v4}, Lcom/alipay/mobile/commonui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v7

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v7, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    iput v12, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v11, v11, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v8, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v10, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v11, v12, v11, v11}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v9, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v10, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v10}, Lcom/alipay/mobile/commonui/widget/APTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v11, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v11}, Lcom/alipay/mobile/commonui/widget/APTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v12, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v12, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->m:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v12, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v12, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->o:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v12, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->p:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v12, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->q:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v12, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->r:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v12, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->s:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v12, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->t:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v12, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->u:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v12, v0}, Lcom/alipay/mobile/commonui/widget/APButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->v:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->w:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/commonui/widget/APTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->i:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/commonui/widget/APTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->M:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->M:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v13}, Lcom/alipay/mobile/commonui/widget/APEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    .line 145
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->J:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->j:Lcom/alipay/mobile/common/misc/CircularImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/base/commonbiz/R$drawable;->user_info_area_portrait_default:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/misc/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    :goto_3
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->d()V

    .line 147
    return-void

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->f:Ljava/lang/String;

    const-string/jumbo v2, "10000014"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->F:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const-string/jumbo v2, "\u5f53\u9762\u4ed8"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string/jumbo v3, "setSoftInputShownOnFocus"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    goto/16 :goto_2

    .line 145
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->J:Ljava/lang/String;

    new-instance v4, Lcom/alipay/mobile/onsitepay/payer/confirm/j;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/j;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;)V

    new-instance v7, Lcom/alipay/mobile/onsitepay/payer/confirm/k;

    invoke-direct {v7, p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/k;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;)V

    move-object v2, v1

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V

    goto :goto_3

    .line 143
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    .line 422
    sget v0, Lcom/alipay/mobile/onsitepay/d;->q:I

    if-ne v8, v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v9}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APButton;->setClickable(Z)V

    const-string/jumbo v1, "0*\\.?0{0,2}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u7ed9   "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \u4ed8\u6b3e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5143\uff1f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "asfasdfasdf"

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/onsitepay/f;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/onsitepay/payer/confirm/l;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/l;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/onsitepay/f;->a:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/alipay/mobile/onsitepay/payer/confirm/m;

    invoke-direct {v7, p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/m;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;)V

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->N:Lcom/alipay/mobile/onsitepay/utils/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->N:Lcom/alipay/mobile/onsitepay/utils/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/utils/g;->c()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->N:Lcom/alipay/mobile/onsitepay/utils/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/utils/g;->c()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->N:Lcom/alipay/mobile/onsitepay/utils/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/utils/g;->b()V

    :cond_0
    new-instance v0, Lcom/alipay/mobile/onsitepay/utils/g;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/onsitepay/utils/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->N:Lcom/alipay/mobile/onsitepay/utils/g;

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->N:Lcom/alipay/mobile/onsitepay/utils/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/utils/g;->c()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/confirm/o;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/o;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->N:Lcom/alipay/mobile/onsitepay/utils/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/utils/g;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->N:Lcom/alipay/mobile/onsitepay/utils/g;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/utils/g;->c()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 428
    :cond_2
    :goto_2
    sget v0, Lcom/alipay/mobile/onsitepay/d;->u:I

    if-ne v8, v0, :cond_3

    .line 429
    const-string/jumbo v0, "1"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->d(Ljava/lang/String;)V

    .line 431
    :cond_3
    sget v0, Lcom/alipay/mobile/onsitepay/d;->v:I

    if-ne v8, v0, :cond_4

    .line 432
    const-string/jumbo v0, "2"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->d(Ljava/lang/String;)V

    .line 434
    :cond_4
    sget v0, Lcom/alipay/mobile/onsitepay/d;->w:I

    if-ne v8, v0, :cond_5

    .line 435
    const-string/jumbo v0, "3"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->d(Ljava/lang/String;)V

    .line 437
    :cond_5
    sget v0, Lcom/alipay/mobile/onsitepay/d;->x:I

    if-ne v8, v0, :cond_6

    .line 438
    const-string/jumbo v0, "4"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->d(Ljava/lang/String;)V

    .line 440
    :cond_6
    sget v0, Lcom/alipay/mobile/onsitepay/d;->y:I

    if-ne v8, v0, :cond_7

    .line 441
    const-string/jumbo v0, "5"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->d(Ljava/lang/String;)V

    .line 443
    :cond_7
    sget v0, Lcom/alipay/mobile/onsitepay/d;->z:I

    if-ne v8, v0, :cond_8

    .line 444
    const-string/jumbo v0, "6"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->d(Ljava/lang/String;)V

    .line 446
    :cond_8
    sget v0, Lcom/alipay/mobile/onsitepay/d;->A:I

    if-ne v8, v0, :cond_9

    .line 447
    const-string/jumbo v0, "7"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->d(Ljava/lang/String;)V

    .line 449
    :cond_9
    sget v0, Lcom/alipay/mobile/onsitepay/d;->B:I

    if-ne v8, v0, :cond_a

    .line 450
    const-string/jumbo v0, "8"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->d(Ljava/lang/String;)V

    .line 452
    :cond_a
    sget v0, Lcom/alipay/mobile/onsitepay/d;->C:I

    if-ne v8, v0, :cond_b

    .line 453
    const-string/jumbo v0, "9"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->d(Ljava/lang/String;)V

    .line 455
    :cond_b
    sget v0, Lcom/alipay/mobile/onsitepay/d;->t:I

    if-ne v8, v0, :cond_c

    .line 456
    const-string/jumbo v0, "0"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->d(Ljava/lang/String;)V

    .line 458
    :cond_c
    sget v0, Lcom/alipay/mobile/onsitepay/d;->E:I

    if-ne v8, v0, :cond_d

    .line 459
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 460
    const-string/jumbo v0, "."

    invoke-direct {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->d(Ljava/lang/String;)V

    .line 463
    :cond_d
    sget v0, Lcom/alipay/mobile/onsitepay/d;->D:I

    if-ne v8, v0, :cond_e

    .line 464
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getSelectionStart()I

    move-result v0

    .line 465
    if-lez v0, :cond_e

    .line 466
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->k:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 469
    :cond_e
    return-void

    .line 424
    :cond_f
    const-string/jumbo v0, ""

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/onsitepay/f;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/onsitepay/f;->e:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/onsitepay/f;->c:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/onsitepay/payer/confirm/n;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/n;-><init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v0, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "fromAppid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->f:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "dynamicId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->b:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extern_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->d:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "payeeName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->H:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "headImageUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->J:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "payeeAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->I:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "c2cpaytype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->L:Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "payeeUserId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->K:Ljava/lang/String;

    .line 134
    const-string/jumbo v0, "AUTOPAY"

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->e:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 492
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    iget-object v4, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->f:Ljava/lang/String;

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "payConfirmView"

    const-string/jumbo v7, "payFirstView"

    const-string/jumbo v8, "backIcon"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/confirm/BasicConfirmActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
