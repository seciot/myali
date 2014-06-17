.class public Lcom/alipay/android/setting/activity/NoPasswordActivity;
.super Lcom/alipay/android/setting/activity/BaseSettingActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/android/setting/widgets/CustomProgressBar$SelectionChangeListener;


# instance fields
.field private d:Lcom/alipay/android/setting/widgets/CustomProgressBar;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/setting/activity/NoPasswordActivity;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->h:I

    return p1
.end method

.method static synthetic a(Lcom/alipay/android/setting/activity/NoPasswordActivity;)Lcom/alipay/android/setting/widgets/CustomProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->d:Lcom/alipay/android/setting/widgets/CustomProgressBar;

    return-object v0
.end method

.method private a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->c()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/setting/activity/NoPasswordActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/setting/activity/NoPasswordActivity;)Lcom/alipay/mobile/commonui/widget/APRadioTableView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    return-object v0
.end method

.method private d()V
    .locals 1

    const-string/jumbo v0, "SPSafePay"

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-boolean v0, v0, Lcom/alipay/android/setting/request/RequestContainer;->n:Z

    invoke-direct {p0, v0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-boolean v0, v0, Lcom/alipay/android/setting/request/RequestContainer;->o:Z

    invoke-direct {p0, v0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "success"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v0, Lcom/alipay/android/app/R$drawable;->ax:I

    sget v1, Lcom/alipay/android/app/R$string;->V:I

    invoke-static {p0, v0, v1}, Lcom/alipay/android/setting/widgets/CustomToast;->a(Landroid/app/Activity;II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "value"

    iget v2, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->finish()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/app/R$string;->U:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "msg"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "status"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "exit_status"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "client_confirm"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "pop_type"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    sget v0, Lcom/alipay/android/app/R$string;->S:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_3
    sget v0, Lcom/alipay/android/app/R$string;->W:I

    new-instance v1, Lcom/alipay/android/setting/activity/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/setting/activity/g;-><init>(Lcom/alipay/android/setting/activity/BaseSettingActivity;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_6
    const-string/jumbo v0, "not_pop_type"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-object v1, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alipay/android/setting/request/RequestContainer;->j:Z

    iget v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->h:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget v1, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->h:I

    iput v1, v0, Lcom/alipay/android/setting/request/RequestContainer;->f:I

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iput-object p1, v0, Lcom/alipay/android/setting/request/RequestContainer;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-boolean v1, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->b:Z

    iput-boolean v1, v0, Lcom/alipay/android/setting/request/RequestContainer;->m:Z

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alipay/android/setting/request/RequestService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "local_data"

    iget-object v2, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->h:I

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$string;->R:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-boolean v0, v0, Lcom/alipay/android/setting/request/RequestContainer;->j:Z

    iget-object v1, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->h:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget v0, v0, Lcom/alipay/android/setting/request/RequestContainer;->f:I

    iget v1, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->h:I

    if-ne v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "SPSafePay"

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->l(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->onBackPressed()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->d()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->d()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/android/app/R$id;->ao:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->toggle()V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-boolean v0, v0, Lcom/alipay/android/setting/request/RequestContainer;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->d:Lcom/alipay/android/setting/widgets/CustomProgressBar;

    invoke-virtual {v0}, Lcom/alipay/android/setting/widgets/CustomProgressBar;->getTextGroup()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->h:I

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->d:Lcom/alipay/android/setting/widgets/CustomProgressBar;

    invoke-virtual {v0, v2}, Lcom/alipay/android/setting/widgets/CustomProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v2, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->h:I

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->d:Lcom/alipay/android/setting/widgets/CustomProgressBar;

    invoke-virtual {v0, v3}, Lcom/alipay/android/setting/widgets/CustomProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-super {p0, p1}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/android/app/R$layout;->ai:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "local_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/setting/request/RequestContainer;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    sget v0, Lcom/alipay/android/app/R$id;->ao:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    new-instance v1, Lcom/alipay/android/setting/activity/h;

    invoke-direct {v1, p0}, Lcom/alipay/android/setting/activity/h;-><init>(Lcom/alipay/android/setting/activity/NoPasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setOnSwitchListener(Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-boolean v0, v0, Lcom/alipay/android/setting/request/RequestContainer;->j:Z

    iget-object v1, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->showToggleButton(Z)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setType(I)V

    :goto_0
    sget v0, Lcom/alipay/android/app/R$id;->aw:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/setting/widgets/CustomProgressBar;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->d:Lcom/alipay/android/setting/widgets/CustomProgressBar;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->d:Lcom/alipay/android/setting/widgets/CustomProgressBar;

    invoke-virtual {v0, p0}, Lcom/alipay/android/setting/widgets/CustomProgressBar;->setOnSelectionChangeListener(Lcom/alipay/android/setting/widgets/CustomProgressBar$SelectionChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->d:Lcom/alipay/android/setting/widgets/CustomProgressBar;

    iget-object v1, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-object v1, v1, Lcom/alipay/android/setting/request/RequestContainer;->q:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/setting/widgets/CustomProgressBar;->setProgressTexts([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget v0, v0, Lcom/alipay/android/setting/request/RequestContainer;->f:I

    iput v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->h:I

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->d:Lcom/alipay/android/setting/widgets/CustomProgressBar;

    iget-object v1, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget v1, v1, Lcom/alipay/android/setting/request/RequestContainer;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/setting/widgets/CustomProgressBar;->setSelection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-boolean v0, v0, Lcom/alipay/android/setting/request/RequestContainer;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-boolean v0, v0, Lcom/alipay/android/setting/request/RequestContainer;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->d:Lcom/alipay/android/setting/widgets/CustomProgressBar;

    invoke-virtual {v0, v4}, Lcom/alipay/android/setting/widgets/CustomProgressBar;->setVisibility(I)V

    :cond_0
    sget v0, Lcom/alipay/android/app/R$id;->ax:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-boolean v0, v0, Lcom/alipay/android/setting/request/RequestContainer;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$string;->R:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->d:Lcom/alipay/android/setting/widgets/CustomProgressBar;

    invoke-virtual {v3}, Lcom/alipay/android/setting/widgets/CustomProgressBar;->getCurrentSelectedLimit()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a:Lcom/alipay/android/setting/request/RequestContainer;

    iget-boolean v0, v0, Lcom/alipay/android/setting/request/RequestContainer;->m:Z

    iput-boolean v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->b:Z

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "titleBar:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/app/R$id;->aC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "titleBar"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/alipay/android/app/R$id;->aC:I

    aput v5, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",setting_btn_no_pwd:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/app/R$id;->ao:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "setting_btn_no_pwd"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/alipay/android/app/R$id;->ao:I

    aput v5, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",setting_no_pwd_progress:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/app/R$id;->aw:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "setting_no_pwd_progress"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/alipay/android/app/R$id;->aw:I

    aput v5, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ",setting_no_pwd_tips2:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/android/app/R$id;->ax:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "setting_no_pwd_tips2"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget v5, Lcom/alipay/android/app/R$id;->ax:I

    aput v5, v3, v4

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->getInstance()Lcom/alipay/trobot/external/DefaultMesssageHandler;

    move-result-object v2

    sget-object v3, Lcom/alipay/test/ui/core/EventObject;->OnResume:Lcom/alipay/test/ui/core/EventObject;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x3

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/setting/activity/NoPasswordActivity;->f:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->setType(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->onStart()V

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->a()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->onStop()V

    invoke-virtual {p0}, Lcom/alipay/android/setting/activity/NoPasswordActivity;->b()V

    return-void
.end method
