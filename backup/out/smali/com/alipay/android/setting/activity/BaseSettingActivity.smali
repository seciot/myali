.class public abstract Lcom/alipay/android/setting/activity/BaseSettingActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# instance fields
.field protected a:Lcom/alipay/android/setting/request/RequestContainer;

.field protected b:Z

.field protected c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    new-instance v0, Lcom/alipay/android/setting/activity/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/setting/activity/a;-><init>(Lcom/alipay/android/setting/activity/BaseSettingActivity;)V

    iput-object v0, p0, Lcom/alipay/android/setting/activity/BaseSettingActivity;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$layout;->ak:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/alipay/android/app/R$id;->av:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/alipay/android/app/R$string;->W:I

    new-instance v3, Lcom/alipay/android/setting/activity/e;

    invoke-direct {v3, p0, v0}, Lcom/alipay/android/setting/activity/e;-><init>(Lcom/alipay/android/setting/activity/BaseSettingActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/alipay/android/app/R$string;->L:I

    new-instance v1, Lcom/alipay/android/setting/activity/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/setting/activity/f;-><init>(Lcom/alipay/android/setting/activity/BaseSettingActivity;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method static synthetic a(Lorg/json/JSONObject;)V
    .locals 3

    const-string/jumbo v0, "public_key"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/app/IAppConfig;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v0

    const-string/jumbo v1, "update rsa key"

    const-string/jumbo v2, "rsponse data is no key"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.alipay.android.setting.REQUEST_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/setting/activity/BaseSettingActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->a(ILjava/lang/String;)V

    return-void
.end method

.method protected abstract a(Ljava/lang/String;I)V
.end method

.method protected final b()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/setting/activity/BaseSettingActivity;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/android/app/R$layout;->al:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/alipay/android/app/R$string;->O:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/alipay/android/app/R$id;->az:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/alipay/android/app/R$string;->L:I

    new-instance v3, Lcom/alipay/android/setting/activity/b;

    invoke-direct {v3, p0}, Lcom/alipay/android/setting/activity/b;-><init>(Lcom/alipay/android/setting/activity/BaseSettingActivity;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/alipay/android/app/R$id;->f:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    sget v2, Lcom/alipay/android/app/R$string;->W:I

    new-instance v3, Lcom/alipay/android/setting/activity/c;

    invoke-direct {v3, p0, v0}, Lcom/alipay/android/setting/activity/c;-><init>(Lcom/alipay/android/setting/activity/BaseSettingActivity;Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/setting/activity/d;

    invoke-direct {v2, p0, v1}, Lcom/alipay/android/setting/activity/d;-><init>(Lcom/alipay/android/setting/activity/BaseSettingActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;->setPwdInputListener(Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method protected final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/setting/activity/BaseSettingActivity;->b:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u8bf7\u8f93\u51656\u4f4d\u624b\u673a\u652f\u4ed8\u5bc6\u7801"

    invoke-virtual {p0, v0}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/alipay/android/app/R$string;->O:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/setting/activity/BaseSettingActivity;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    return-void
.end method
