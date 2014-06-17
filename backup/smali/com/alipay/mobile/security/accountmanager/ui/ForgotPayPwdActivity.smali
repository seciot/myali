.class public Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_back_paypwd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Landroid/app/AlertDialog$Builder;

.field private C:I

.field private D:Z

.field private E:Ljava/lang/Thread;

.field private F:Ljava/lang/Thread;

.field private G:Ljava/lang/Thread;

.field private H:Ljava/lang/Thread;

.field private I:Ljava/lang/Thread;

.field private J:Landroid/os/Handler;

.field protected a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_paypwd_step1"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_paypwd_step21"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_paypwd_step22"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_paypwd_step3"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "socityId"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_paypwd_step1_next_step"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_paypwd_step21_warn"
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_reconfirm_pwd"
    .end annotation
.end field

.field protected i:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_send_checkcode_btn"
    .end annotation
.end field

.field protected j:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_paypwd_step22_warn"
    .end annotation
.end field

.field protected k:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_paypwd_step22_payCheckCodeSend"
    .end annotation
.end field

.field protected l:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_paypwd22_next_step"
    .end annotation
.end field

.field protected m:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_paypwd_new_pwd"
    .end annotation
.end field

.field protected n:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_paypwd3_confirm"
    .end annotation
.end field

.field protected o:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_back_paypwd_titleBar"
    .end annotation
.end field

.field protected p:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "is_show_pwd"
    .end annotation
.end field

.field q:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

.field r:Landroid/view/View$OnClickListener;

.field s:Landroid/text/TextWatcher;

.field t:Landroid/content/DialogInterface$OnCancelListener;

.field u:Landroid/content/DialogInterface$OnClickListener;

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->v:I

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/bl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bl;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->J:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/br;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/br;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->q:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/bs;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bs;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->r:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/bt;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bt;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->s:Landroid/text/TextWatcher;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/bu;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bu;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->t:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/bw;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bw;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->u:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->v:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->v:I

    return v0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->x:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 6

    const/16 v2, 0xb

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    :cond_1
    sget v0, Lcom/alipay/mobile/security/securitycommon/Constants;->BACK_PWD_SMS_SWITCH_DOWN:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bc:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bd:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->k:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->scheduleTimer()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->ax:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->ay:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->scheduleTimer()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->au:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/ui/bx;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bx;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->B:Landroid/app/AlertDialog$Builder;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->B:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=onPostResetPassword],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->o:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->at:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->toast(Ljava/lang/String;I)V

    const-string/jumbo v0, "300"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->getBindedPhoneNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->y:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->getIsSmsSwitch()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->y:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->getIsSmsSwitch()I

    sget v0, Lcom/alipay/mobile/security/securitycommon/Constants;->BACK_PWD_SMS_SWITCH_DOWN:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->toast(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->C:I

    return v0
.end method

.method private b(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    .locals 3

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setLoginId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setSmsCode(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/securitycommon/Constants;->PWD_TYPE_PAY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setPwdType(Ljava/lang/String;)V

    const-string/jumbo v0, "found"

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setUserAction(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/security/tid/TidGetter;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/security/tid/TidGetter;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setTid(Lcom/alipay/mobilesecurity/core/model/Tid;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->G:Ljava/lang/Thread;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;->verifySmsCode(Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=nextBtnStep22VerifySmsCode],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->z:Ljava/lang/String;

    return-object p1
.end method

.method private c(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->setCertNo(Ljava/lang/String;)V

    const-string/jumbo v2, "idCard"

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->setCertType(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->setLoginId(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/security/securitycommon/Constants;->PWD_TYPE_PAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->setPasswordType(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->E:Ljava/lang/Thread;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;->checkUserCertAndSendSMS(Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=checkSocityId],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->c()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->A:Ljava/lang/String;

    return-object p1
.end method

.method private d()Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->setLoginId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->A:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->setPwd(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/securitycommon/Constants;->PWD_TYPE_PAY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;->setPwdType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->H:Ljava/lang/Thread;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;->resetPassword(Lcom/alipay/mobilesecurity/core/model/mainpage/password/ResetPasswordRequest;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=btnStep3ResetPwd],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckSmsCodeForResetPwdRequst;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckSmsCodeForResetPwdRequst;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckSmsCodeForResetPwdRequst;->setBindedPhoneNo(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckSmsCodeForResetPwdRequst;->setLoginId(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->F:Ljava/lang/Thread;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;->checkSmsCodeForResetPwd(Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckSmsCodeForResetPwdRequst;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=recofirmBtnStep21],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->c(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->d(Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    return-object v0
.end method

.method private e()Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->t:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->I:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->w:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;->checkUserInfo(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{[info=step0HasBind], [msg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->c()V

    iget v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->v:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->v:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->v:I

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->b(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->I:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->E:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->F:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->G:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->H:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->e()Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->J:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->d()Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic p(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic q(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic r(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic s(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic t(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->w:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->b()V

    :cond_0
    return-void
.end method

.method protected a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->o:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->at:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->getBindedPhoneNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->y:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->y:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->isCertified()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->D:Z

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->isCertified()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/bv;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bv;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->getIsSmsSwitch()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->C:I

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->getIsSmsSwitch()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->y:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bS:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->u:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-super/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "703"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bS:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->u:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-super/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "700"

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->v:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/ui/bm;

    invoke-direct {v2, p0, p0, v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/bm;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;Landroid/app/Activity;Ljava/lang/Boolean;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-static {p0, v0, p1}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil;->a(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->toast(Ljava/lang/String;I)V

    iget v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->v:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method protected b()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v3, 0x6

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;

    invoke-direct {v1, p0, v2, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getSendCodeButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->p:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cv:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->setCheckBoxText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->p:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->e:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/bq;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/bq;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/alipay/mobile/security/securitycommon/SecurityPwdUtil;->a(Landroid/widget/EditText;I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->k:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/alipay/mobile/security/securitycommon/SecurityPwdUtil;->a(Landroid/widget/EditText;I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->e:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->s:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->q:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->setOnSendCallback(Lcom/alipay/mobile/commonui/widget/OnSendCallback;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->k:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->s:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->k:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->q:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->setOnSendCallback(Lcom/alipay/mobile/commonui/widget/OnSendCallback;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->l:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->s:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->p:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->o:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->ar:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    return-void
.end method

.method protected c()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->k:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getSendCodeButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getSendCodeButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$id;->ei:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->e:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, " "

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->x:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->x:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "[0-9]{17}x"

    const-string/jumbo v3, "[0-9]{15}"

    const-string/jumbo v4, "[0-9]{18}"

    const-string/jumbo v5, "[0-9]{17}X"

    iget-object v6, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->x:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->toast(Ljava/lang/String;I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->t:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v7, v2, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;

    invoke-direct {v3, p0, v2, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;IB)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->toast(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    sget v3, Lcom/alipay/mobile/clientsecurity/R$id;->fj:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->t:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v7, v2, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;

    const/16 v3, 0x15

    invoke-direct {v2, p0, v3, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;IB)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_6
    sget v3, Lcom/alipay/mobile/clientsecurity/R$id;->ee:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->t:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v7, v2, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;

    const/16 v3, 0x16

    invoke-direct {v2, p0, v3, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;IB)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_7
    sget v3, Lcom/alipay/mobile/clientsecurity/R$id;->ef:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->A:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->A:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x14

    if-gt v0, v3, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-ge v0, v3, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->cc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->t:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v7, v2, v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;IB)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0xb

    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->y:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->y:Ljava/lang/String;

    :goto_0
    sget v2, Lcom/alipay/mobile/security/securitycommon/Constants;->BACK_PWD_SMS_SWITCH_DOWN:I

    iget v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->C:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/clientsecurity/R$string;->bc:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->bd:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    :goto_1
    move v0, v1

    :goto_2
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->y:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "****"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->y:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->g:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/clientsecurity/R$string;->ax:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->ay:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->D:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    :goto_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move v0, v1

    goto/16 :goto_2

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_2
.end method

.method protected onRestart()V
    .locals 4

    const/16 v1, 0x8

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onRestart()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->v:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
