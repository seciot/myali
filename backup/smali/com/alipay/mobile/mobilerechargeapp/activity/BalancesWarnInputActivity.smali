.class public Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

.field protected b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field protected c:Lcom/alipay/mobile/commonui/widget/APButton;

.field protected d:Lcom/alipay/mobile/commonui/widget/APTextView;

.field e:Landroid/text/TextWatcher;

.field private f:Ljava/lang/String;

.field private final g:I

.field private h:Ljava/util/Timer;

.field private i:I

.field private j:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

.field private k:Landroid/os/Handler;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, "balanceswarninput"

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f:Ljava/lang/String;

    const/16 v0, 0xd

    iput v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->j:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->k:Landroid/os/Handler;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->l:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/m;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/m;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->e:Landroid/text/TextWatcher;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, " "

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)V
    .locals 3

    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;[B)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f:Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resp is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "stat"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "statDesc"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "detail"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 7

    const/4 v5, 0x0

    const-string/jumbo v1, ""

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/mobile/mobilerechargeapp/activity/o;

    invoke-direct {v4, p0, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/o;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;Z)V

    move-object v0, p0

    move-object v2, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->i:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->i:I

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->i:I

    return v0
.end method

.method static synthetic d(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "inputnum"

    iget-object v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "verify_time"

    iget v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->i:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/16 v3, 0xb

    invoke-interface {v0, v2, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->i:I

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const-string/jumbo v3, "\u786e\u5b9a"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/mobile/mobilerechargeapp/activity/p;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/p;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "inputnum"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xc8

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->j:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setNeedShowClearButton(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    new-instance v1, Lcom/alipay/mobile/commonui/inputfomatter/APSplitTextFormatter;

    const-string/jumbo v2, "3,8"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/commonui/inputfomatter/APSplitTextFormatter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setTextFormatter(Lcom/alipay/mobile/commonui/inputfomatter/APFormatter;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->setLength(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getLastImgButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->e:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/l;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/l;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->c()V

    return-void
.end method

.method protected a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V
    .locals 3

    const/16 v2, 0x83e

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->dismissProgressDialog()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Rpc response.resultStatus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->d()V

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x834

    if-lt v0, v1, :cond_2

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    if-lt v0, v2, :cond_4

    :cond_2
    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x840

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->memo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->memo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->dismissProgressDialog()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$string;->w:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "processAddalertSign Status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$string;->v:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->toast(Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x836

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$string;->x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x840

    if-eq v0, v1, :cond_4

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x839

    if-eq v0, v1, :cond_4

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x837

    if-ne v0, v1, :cond_5

    :cond_4
    iget-object v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->memo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->memo:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->i:I

    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->d()V

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->showProgressDialog(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->j:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->b(Ljava/lang/String;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Rpc Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u3002"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected c()V
    .locals 4

    invoke-static {p0}, Lcom/alipay/mobile/common/helper/ReadSettingServerUrl;->getCpbSignAddCmsUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "query cms:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    new-instance v2, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/alipay/mobile/mobilerechargeapp/activity/r;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/r;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "doGet end:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, ""

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/q;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/q;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)V

    invoke-virtual {p0, v0, v3, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->j:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    const-string/jumbo v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->dismissProgressDialog()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addalertSign Exception Code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u3002"

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onActivityResult requestCode ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-resultCode-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f:Ljava/lang/String;

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "inputnum"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "verify_time"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onActivityResult phoneNumber="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->l:Ljava/lang/String;

    iput v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->i:I

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->h:Ljava/util/Timer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->h:Ljava/util/Timer;

    :cond_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->h:Ljava/util/Timer;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->h:Ljava/util/Timer;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/n;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/n;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
