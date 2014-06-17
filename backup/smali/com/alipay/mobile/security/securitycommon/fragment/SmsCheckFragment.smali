.class public Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/OnSendCallback;
.implements Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;
.implements Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field protected b:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "register_inputSmsCodeTip"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

.field protected d:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

.field protected e:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "register_verifySmsCodeButton"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private g:Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

.field private h:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;

.field private m:Lcom/alipay/mobile/commonui/widget/APInputBox;

.field private n:Ljava/lang/String;

.field private o:Lcom/alipay/mobile/commonui/widget/SendResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->k:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;)Lcom/alipay/mobile/commonui/widget/APInputBox;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;)Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->h:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    return-object v0
.end method


# virtual methods
.method public OnAutoReadSms(Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isNeedAutoInputSms="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->ao:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public final a()V
    .locals 9

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->h:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->h:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    const-string/jumbo v1, "(\\d{4,6})"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x3c

    const-string/jumbo v5, ""

    new-array v6, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "95188"

    aput-object v8, v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->readsms(Ljava/lang/String;ILjava/lang/Long;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->l:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;

    return-void
.end method

.method a(Ljava/lang/Object;I)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    sget-object v0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->l:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->l:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;->a(Ljava/lang/Object;I)V

    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->a:Ljava/lang/String;

    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    sget-object v0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->l:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "down_input"

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->n:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "down_auto"

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->l:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;

    invoke-interface {v1, p1, v0, p2}, Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->a(Ljava/lang/Object;I)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final b()V
    .locals 8
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment$1;-><init>(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->k:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->c:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->setOnSendCallback(Lcom/alipay/mobile/commonui/widget/OnSendCallback;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->c:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->scheduleTimer()V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->c:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->g:Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorccc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->g:Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;->a(Landroid/widget/EditText;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->g:Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;->a(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->k:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->cl:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "<font color=\"#ff6600\">"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/clientsecurity/R$string;->bQ:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->clearFocus()V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    new-instance v1, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment$2;-><init>(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->d:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->setOnSendCallback(Lcom/alipay/mobile/commonui/widget/OnSendCallback;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->d:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->scheduleTimer()V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->d:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public b(Z)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->o:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->o:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onSuccess()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->o:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onFail()V

    goto :goto_0
.end method

.method protected c()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    sget-object v0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->l:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->l:Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/service/ext/security/SmsCheckCallBack;->a(Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->a(Ljava/lang/Object;I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "PageTips"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "smsCheckCodeType"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->k:I

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

    invoke-direct {v0}, Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->g:Lcom/alipay/mobile/security/securitycommon/CommonEditTextHasNullChecker;

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->h:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->h:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    const-string/jumbo v1, "(\\d{4,6})"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x3c

    const-string/jumbo v5, ""

    new-array v6, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "95188"

    aput-object v8, v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->readsms(Ljava/lang/String;ILjava/lang/Long;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->ai:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dj:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->c:Lcom/alipay/mobile/commonui/widget/APCheckCodeVerticalView;

    :goto_0
    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->I:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "smsCheckCodePageTitle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->f:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "smsCheckCodePageTitle"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    :cond_0
    return-object v1

    :cond_1
    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->aj:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dj:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iput-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->d:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->h:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->h:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    :cond_0
    return-void
.end method

.method public onSend(Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 9

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->c()V

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->o:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    invoke-interface {p1}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onSuccess()V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->h:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->h:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    const-string/jumbo v1, "(\\d{4,6})"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x3c

    const-string/jumbo v5, ""

    new-array v6, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "95188"

    aput-object v8, v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->readsms(Ljava/lang/String;ILjava/lang/Long;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
