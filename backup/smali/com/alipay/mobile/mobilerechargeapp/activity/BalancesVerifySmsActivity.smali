.class public Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/OnSendCallback;
.implements Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

.field protected c:Lcom/alipay/mobile/mobilerechargeapp/utils/CommonEditTextHasNullChecker;

.field protected d:Lcom/alipay/mobile/commonui/widget/APTextView;

.field protected e:Lcom/alipay/mobile/commonui/widget/APButton;

.field protected f:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/alipay/mobile/commonui/widget/APInputBox;

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, "balancesverifysmsactivity"

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a:Ljava/lang/String;

    const-string/jumbo v0, "95188"

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->g:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->h:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->l:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->m:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->j:Lcom/alipay/mobile/commonui/widget/APInputBox;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const-string/jumbo v3, "\u786e\u5b9a"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public OnAutoReadSms(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->j:Lcom/alipay/mobile/commonui/widget/APInputBox;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isNeedAutoInputSms="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->j:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->j:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {p1}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method protected final a()V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/utils/CommonEditTextHasNullChecker;

    invoke-direct {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/CommonEditTextHasNullChecker;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/utils/CommonEditTextHasNullChecker;

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;)V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    const-string/jumbo v1, "(\\d{4,6})"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x3c

    const-string/jumbo v5, ""

    new-array v6, v2, [Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->g:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->readsms(Ljava/lang/String;ILjava/lang/Long;ILjava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->l:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "inputnum"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "verify_time"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->m:I

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->f:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->j:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->j:Lcom/alipay/mobile/commonui/widget/APInputBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->j:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->j:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/utils/CommonEditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->j:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/ui/R$color;->colorccc:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/utils/CommonEditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->j:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/utils/CommonEditTextHasNullChecker;->a(Landroid/widget/EditText;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->c:Lcom/alipay/mobile/mobilerechargeapp/utils/CommonEditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/utils/CommonEditTextHasNullChecker;->a(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/mobilerechargeapp/R$string;->p:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/a;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->f:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->setOnSendCallback(Lcom/alipay/mobile/commonui/widget/OnSendCallback;)V

    iget v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->m:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->f:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iget v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->m:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->setCurrentSecond(I)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->f:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->scheduleTimer()V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->f:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->j:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->j:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->clearFocus()V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->j:Lcom/alipay/mobile/commonui/widget/APInputBox;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/b;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V
    .locals 9

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->dismissProgressDialog()V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$string;->y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Rpc response.resultStatus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    const-string/jumbo v1, "(\\d{4,6})"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x3c

    const-string/jumbo v5, ""

    new-array v6, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->g:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->readsms(Ljava/lang/String;ILjava/lang/Long;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->f:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->currentSecond2Zero()V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    :cond_3
    iget-object v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->memo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->showProgressDialog(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->l:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->b(Ljava/lang/String;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Rpc Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->f:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->currentSecond2Zero()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u3002"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->dismissProgressDialog()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->showProgressDialog(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->l:Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Rpc Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u3002"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "backToInputActivity returntolist = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string/jumbo v1, "inputnum"

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xc8

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->f:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getCurrentSecond()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->m:I

    iget v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->m:I

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->m:I

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "backToInputActivity mTimeLog = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v1, "inputnum"

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "verify_time"

    iget v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->j:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->i:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->j:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/Validator;->a(Landroid/content/Context;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$string;->o:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected b(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->dismissProgressDialog()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Rpc response.resultStatus:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$string;->v:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->toast(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->finish()V

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v2, 0x834

    if-lt v0, v2, :cond_2

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v2, 0x83e

    if-lt v0, v2, :cond_4

    :cond_2
    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v2, 0x840

    if-eq v0, v2, :cond_3

    iget v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->resultStatus:I

    const/16 v2, 0x83f

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v2, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->memo:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/mobile/mobilerechargeapp/activity/c;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/c;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;->memo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->i:Ljava/lang/String;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a(Z)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onSend(Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onSuccess()V

    return-void
.end method
