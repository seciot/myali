.class public Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field private b:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

.field private f:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

.field private g:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

.field private h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->h:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)Lcom/alipay/mobile/commonui/widget/SendResultCallback;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->f:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;)Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->g:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->h:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->b:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {p0, v2, v3}, Lcom/alipay/asset/common/InputValidator;->checkSmsCode(Landroid/content/Context;Ljava/lang/String;I)Lcom/alipay/asset/common/ValidateResult;

    move-result-object v3

    iget-boolean v4, v3, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    if-eqz v4, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$string;->h:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->b(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v3, v3, Lcom/alipay/asset/common/ValidateResult;->strErr:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;->needResendRandomCode:Z

    new-instance v1, Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;

    iget-object v2, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;->a(Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

    move-result-object v0

    iget-object v1, v0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultCode:Ljava/lang/String;

    const-string/jumbo v2, "2050"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->b(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->b()V

    throw v0
.end method

.method protected a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 9
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->g:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

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

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->f:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onSuccess()V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->h:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/withdraw/R$string;->k:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->toast(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->b:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->b:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->setSelection(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method protected b()V
    .locals 1
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->f:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onFail()V

    return-void
.end method

.method protected b(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->f:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onFail()V

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultView:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    new-instance v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;

    invoke-direct {v0}, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;-><init>()V

    iput-object p1, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;->randomCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "AUTO_FILL"

    iput-object v1, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;->fillType:Ljava/lang/String;

    :goto_0
    new-instance v1, Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;

    iget-object v2, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;->a(Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

    move-result-object v0

    iget-boolean v1, v0, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->success:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->c(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "MANUAL_FILL"

    iput-object v1, v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;->fillType:Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->c()V

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->d(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected c()V
    .locals 0
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->dismissProgressDialog()V

    return-void
.end method

.method protected c(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->dismissProgressDialog()V

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultView:Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/ad;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/withdraw/ui/ad;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;)V

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->simpleAlert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    return-void
.end method

.method protected d(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->dismissProgressDialog()V

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;->resultView:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-direct {v0}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->e:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/withdraw/R$layout;->f:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->setContentView(Landroid/view/View;)V

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->n:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v1, Lcom/alipay/android/phone/wealth/withdraw/R$string;->a:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->m:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->b:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->b:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->b:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    new-instance v3, Lcom/alipay/mobile/withdraw/ui/z;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/withdraw/ui/z;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;)V

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->setOnSendCallback(Lcom/alipay/mobile/commonui/widget/OnSendCallback;)V

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->b:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getInputBox()Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    new-instance v3, Lcom/alipay/mobile/withdraw/ui/aa;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/withdraw/ui/aa;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;)V

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->b:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->scheduleTimer()V

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->e:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedCheckView(Landroid/widget/EditText;)V

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->e:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->c:Landroid/widget/TextView;

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "smscheck_memo_key"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->e:Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/widget/validator/EditTextHasNullChecker;->addNeedEnabledButton(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/ab;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/withdraw/ui/ab;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    iget-object v1, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    new-instance v3, Lcom/alipay/mobile/withdraw/ui/ac;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/withdraw/ui/ac;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;)V

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/framework/service/ext/security/AutoReadSmsCheckCodeCallBack;)V

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->g:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->g:Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    const-string/jumbo v1, "(\\d{4,6})"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x3c

    const-string/jumbo v5, ""

    new-array v6, v2, [Ljava/lang/String;

    const-string/jumbo v7, "95188"

    aput-object v7, v6, v8

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->readsms(Ljava/lang/String;ILjava/lang/Long;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
