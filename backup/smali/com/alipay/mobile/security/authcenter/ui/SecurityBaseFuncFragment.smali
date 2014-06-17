.class public abstract Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field protected a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field protected b:Lcom/alipay/mobile/framework/app/MicroApplication;

.field protected final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/16 v0, 0x1111

    iput v0, p0, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->c:I

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-void
.end method

.method protected static a(Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;-><init>()V

    const-string/jumbo v1, "20000008"

    iput-object v1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->appID:Ljava/lang/String;

    iput-object p0, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->behaviourIdEnum:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iput-object p1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->viewID:Ljava/lang/String;

    iput-object p2, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->refViewID:Ljava/lang/String;

    iput-object p3, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->seed:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;)V

    return-void
.end method

.method private a(Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    iput-object v0, p1, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bR:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "20000008"

    const-string/jumbo v2, "20000009"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_0
.end method

.method protected final a(Landroid/support/v4/app/Fragment;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->b()V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->bR:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected final a(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/ay;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/ay;-><init>(Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;Landroid/view/View;)V

    const-wide/16 v1, 0x4b0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobile/framework/app/MicroApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "logonId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->b:Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000015"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final a(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "canSwitchMobile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1111

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v0, "input_method"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x1111

    if-ne p1, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :pswitch_0
    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/AlipayUserLoginFragment_;-><init>()V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->a(Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/TaobaoUserLoginFragment_;-><init>()V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->a(Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment_;

    invoke-direct {v0}, Lcom/alipay/mobile/security/authcenter/ui/login/MobileInputFragment_;-><init>()V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;->a(Lcom/alipay/mobile/security/authcenter/ui/SecurityBaseFuncFragment;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method
