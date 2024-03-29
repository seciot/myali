.class public Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_loginpwd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_loginpwd1_current_pwd"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APInputBox;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_loginpwd1_new_pwd"
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_loginpwd1_next_step"
    .end annotation
.end field

.field protected d:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_loginpwd2_confirm"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_loginpwd1_is_show_pwd"
    .end annotation
.end field

.field protected f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_loginpwd1"
    .end annotation
.end field

.field protected g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_loginpwd2"
    .end annotation
.end field

.field protected h:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_loginpwd2_warn_txt"
    .end annotation
.end field

.field protected i:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "security_loginpwd2_checkCodeSend"
    .end annotation
.end field

.field j:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

.field k:Landroid/text/TextWatcher;

.field l:Landroid/content/DialogInterface$OnCancelListener;

.field m:Landroid/content/DialogInterface$OnClickListener;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private s:Ljava/lang/Thread;

.field private t:Ljava/lang/Thread;

.field private u:Ljava/lang/Thread;

.field private v:Ljava/lang/Boolean;

.field private w:Landroid/os/Handler;

.field private x:Landroid/view/View$OnClickListener;

.field private y:Landroid/view/View$OnClickListener;

.field private z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->v:Ljava/lang/Boolean;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/ce;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/ce;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->w:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/cj;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/cj;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/ck;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/ck;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->k:Landroid/text/TextWatcher;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/cl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/cl;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->x:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/cm;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/cm;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->l:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/cn;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/cn;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->y:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/co;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/co;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->z:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/alipay/mobile/security/accountmanager/ui/ch;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/accountmanager/ui/ch;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->m:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;)V
    .locals 7

    const/16 v6, 0xb

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->bc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bd:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->getBindedPhoneNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->getBindedPhoneNo()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->scheduleTimer()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->getBindedPhoneNo()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "****"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->getBindedPhoneNo()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->c()V

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->toast(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->getBindMobile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->getBindMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->v:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonDialogUtil;->a(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/app/ActivityApplication;Ljava/lang/Object;Ljava/lang/Boolean;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->ce:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->az:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/ui/cp;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/accountmanager/ui/cp;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aI:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/ui/cf;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/accountmanager/ui/cf;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/cg;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/cg;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=doDialog], [msg="

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
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->s:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;)V
    .locals 7

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setAutoLogin(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->updateUserAutoLoginFlag(Ljava/lang/String;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{[info=positiveListener],[msg=\u66f4\u65b0\u7528\u6237"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u514d\u767b\u6807\u5fd7\u7ed3\u679c\u4e3a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bO:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->m:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=positiveListener],[msg=\u66f4\u65b0\u7528\u6237"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\u53d1\u751f\u5f02\u5e38]}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->toast(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private d()Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyPwdModificationRequest;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyPwdModificationRequest;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyPwdModificationRequest;->setLoginId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->n:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyPwdModificationRequest;->setOldPwd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyPwdModificationRequest;->setPwd(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/securitycommon/Constants;->PWD_TYPE_LOGIN:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyPwdModificationRequest;->setPwdType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

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

    iput-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->t:Ljava/lang/Thread;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;->applyPwdModification(Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyPwdModificationRequest;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=modifyPwdStepOne],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->c()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->dismissProgressDialog()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->c()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method private e()Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    .locals 3

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->p:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setLoginId(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/securitycommon/Constants;->PWD_TYPE_LOGIN:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setPwdType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->q:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setSmsCode(Ljava/lang/String;)V

    const-string/jumbo v0, "modify"

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setUserAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->n:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setOldPwd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setPwd(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/security/tid/TidGetter;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/security/tid/TidGetter;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;->setTid(Lcom/alipay/mobilesecurity/core/model/Tid;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    :try_start_0
    const-class v2, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->u:Ljava/lang/Thread;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;->verifySmsCode(Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsCodeRequest;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=modifyPwdStepTwo],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;
    .locals 3

    :try_start_0
    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->p:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;->setLogonId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->s:Ljava/lang/Thread;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;->queryBindMobile(Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=modifyPwdStepTwo],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->dismissProgressDialog()V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->t:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->u:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->f()Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->w:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->d()Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->e()Lcom/alipay/mobilesecurity/core/model/mainpage/password/ApplyModifyPwdResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic n(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic p(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic q(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic r(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic s(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic t(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic u(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic v(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->r:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->b()V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/16 v3, 0x81

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cv:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->setCheckBoxText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityPwdUtil;->a(Landroid/widget/EditText;I)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->e:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->k:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->k:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->k:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/OnSendCallback;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->setOnSendCallback(Lcom/alipay/mobile/commonui/widget/OnSendCallback;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/ci;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/ui/ci;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->l:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity$a;

    invoke-direct {v1, p0, v4, v4}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected c()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getSendCodeButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->a()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->g:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->i:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->currentSecond2Zero()V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 4

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onRestart()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
