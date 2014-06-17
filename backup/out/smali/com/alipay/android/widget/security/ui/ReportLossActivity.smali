.class public Lcom/alipay/android/widget/security/ui/ReportLossActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver$a;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "report_loss"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/widget/security/ui/ReportLossActivity$SimplePwdOpenReceiver;
    }
.end annotation


# instance fields
.field a:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securitySettingTip"
    .end annotation
.end field

.field b:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "securitySettingTip2"
    .end annotation
.end field

.field c:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "realNameCertify"
    .end annotation
.end field

.field d:Lcom/alipay/mobile/commonui/widget/APTableView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "payPwdSetting"
    .end annotation
.end field

.field e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "toFinishView"
    .end annotation
.end field

.field f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "finishedView"
    .end annotation
.end field

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

.field private j:Lcom/alipay/android/widget/security/ui/ReportLossActivity$SimplePwdOpenReceiver;

.field private k:Z

.field private l:Landroid/support/v4/content/LocalBroadcastManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->i:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    invoke-direct {v0}, Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->i:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->i:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    invoke-virtual {v0, p0}, Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;->a(Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver$a;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->l:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->i:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.alipay.security.namecertified"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->l:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->getArrowImage()Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cu:I

    invoke-virtual {p0, v2}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "<font color=\"#ff6600\">95188</font>"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->ai:I

    invoke-virtual {p0, v2}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "<font color=\"#ff6600\">95188</font>"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->b()V

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "name certified receive action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v1, "com.alipay.security.namecertified"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "isCertified"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->b()V

    :cond_0
    return-void
.end method

.method a(Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;)V
    .locals 8
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "\u67e5\u8be2\u51fa\u9519"

    invoke-virtual {p0, v0, v6}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->toast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;->success:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;->message:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-boolean v0, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;->certified:Z

    iget-boolean v1, p1, Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;->openSimplePwd:Z

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v3, Lcom/alipay/mobile/clientsecurity/R$drawable;->t:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftImage(I)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->p:I

    invoke-virtual {p0, v4}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v3, Lcom/alipay/mobile/clientsecurity/R$drawable;->t:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftImage(I)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->ag:I

    invoke-virtual {p0, v4}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v2, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v3, Lcom/alipay/mobile/clientsecurity/R$drawable;->h:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftImage(I)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    const-string/jumbo v3, "\u7acb\u5373\u8ba4\u8bc1"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->aM:I

    invoke-virtual {p0, v4}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->c()V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->j:Lcom/alipay/android/widget/security/ui/ReportLossActivity$SimplePwdOpenReceiver;

    if-nez v2, :cond_4

    new-instance v2, Lcom/alipay/android/widget/security/ui/ReportLossActivity$SimplePwdOpenReceiver;

    invoke-direct {v2, p0, v6}, Lcom/alipay/android/widget/security/ui/ReportLossActivity$SimplePwdOpenReceiver;-><init>(Lcom/alipay/android/widget/security/ui/ReportLossActivity;B)V

    iput-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->j:Lcom/alipay/android/widget/security/ui/ReportLossActivity$SimplePwdOpenReceiver;

    :cond_4
    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->l:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->j:Lcom/alipay/android/widget/security/ui/ReportLossActivity$SimplePwdOpenReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.alipay.mobile.simplepwd.open"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->bA:I

    invoke-virtual {p0, v4}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v3, Lcom/alipay/mobile/clientsecurity/R$drawable;->h:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftImage(I)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    const-string/jumbo v3, "\u7acb\u5373\u5f00\u542f"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->setRightText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->d:Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {v2, p0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->e:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->f:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method b()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getInstance()Lcom/alipay/mobile/common/helper/UserInfoHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/helper/UserInfoHelper;->getUserInfo(Lcom/alipay/mobile/framework/app/ActivityApplication;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/alipay/android/widget/security/a/c;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v1, v2}, Lcom/alipay/android/widget/security/a/c;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/a/c;->a(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->dismissProgressDialog()V

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->dismissProgressDialog()V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->dd:I

    if-ne v0, v1, :cond_2

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->k:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->k:Z

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000038"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=doNameCertified],[msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->cN:I

    if-ne v0, v1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "20000068"

    const-string/jumbo v2, "20000051"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->i:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->l:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->i:Lcom/alipay/android/widget/security/msgreceiver/SecurityCertifiedMsgReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->j:Lcom/alipay/android/widget/security/ui/ReportLossActivity$SimplePwdOpenReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->l:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ReportLossActivity;->j:Lcom/alipay/android/widget/security/ui/ReportLossActivity$SimplePwdOpenReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method
