.class public final Lcom/alipay/android/app/pay/TransContainer;
.super Lcom/alipay/android/mini/window/BaseActivity;

# interfaces
.implements Lcom/alipay/android/app/display/windows/IContainer;


# instance fields
.field private b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/mini/window/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-direct {v0, p0, p0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;-><init>(Landroid/app/Activity;Lcom/alipay/android/app/display/windows/IContainer;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    :cond_0
    :try_start_0
    const-string/jumbo v0, "CallingPid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/pay/TransContainer;->a:I

    iget v0, p0, Lcom/alipay/android/app/pay/TransContainer;->a:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "no biz id"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/monitor/MonitorThread;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/pay/TransContainer;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/BizDataSource;->b(I)Lcom/alipay/android/app/data/BizData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->i()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/TransContainer;->loading(I)Lcom/alipay/android/app/script/ILoadingScriptable;
    :try_end_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v1

    const-string/jumbo v2, "on trans activity create"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/monitor/MonitorThread;->d(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/TransContainer;->finish()V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/android/app/display/event/OnContainerEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a(Lcom/alipay/android/app/display/event/OnContainerEventListener;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/android/app/display/windows/UIWindow;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a(Lcom/alipay/android/app/display/windows/UIWindow;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/android/app/display/windows/UIWindow;Lcom/alipay/android/app/data/Orientation;)V
    .locals 0

    return-void
.end method

.method public final alert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/app/pay/TransContainer;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final allowback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->allowback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->dismiss()V

    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-super {p0}, Lcom/alipay/android/mini/window/BaseActivity;->finish()V

    return-void
.end method

.method public final exit()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->exit()V

    :cond_0
    return-void
.end method

.method public final getLoadingScriptable()Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->getLoadingScriptable()Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final loading(I)Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/alipay/android/app/pay/TransContainer;->loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    return-object v0
.end method

.method public final loading(ILjava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/alipay/android/app/pay/TransContainer;->loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    return-object v0
.end method

.method public final loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/alipay/android/mini/window/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/TransContainer;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$drawable;->M:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-super {p0}, Lcom/alipay/android/mini/window/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/pay/TransContainer;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected final onPause()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/mini/window/BaseActivity;->onPause()V

    return-void
.end method

.method public final open(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->open(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final varargs open([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->open([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final openWithCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->openWithCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final varargs openWithCallback(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->openWithCallback(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final submit()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->submit()V

    :cond_0
    return-void
.end method

.method public final submit(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->submit(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final toast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/TransContainer;->b:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->toast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
