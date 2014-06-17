.class public abstract Lcom/alipay/mobile/alipassnfcapp/ui/RootController;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# instance fields
.field protected a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/alipay/mobile/alipassnfcapp/ui/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    return-void
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->e()Lcom/alipay/mobile/alipassnfcapp/ui/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onControllerInit(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/EmptyStackException;->printStackTrace()V

    goto :goto_0
.end method

.method private e()Lcom/alipay/mobile/alipassnfcapp/ui/h;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassnfcapp/ui/h;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/alipay/mobile/alipassnfcapp/ui/h;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassnfcapp/ui/h;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onDestroy()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->e()Lcom/alipay/mobile/alipassnfcapp/ui/h;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onResume()V

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->finish()V
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/util/EmptyStackException;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(IIILandroid/content/Intent;)Lcom/alipay/mobile/alipassnfcapp/ui/h;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassnfcapp/ui/h;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onDestroy()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->e()Lcom/alipay/mobile/alipassnfcapp/ui/h;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2, p3, p4}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onControllerResult(IILandroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onResume()V

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->finish()V
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/util/EmptyStackException;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(IILandroid/content/Intent;)Lcom/alipay/mobile/alipassnfcapp/ui/h;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassnfcapp/ui/h;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onDestroy()V

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->e()Lcom/alipay/mobile/alipassnfcapp/ui/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onControllerResult(IILandroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onResume()V

    :goto_1
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->finish()V
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/EmptyStackException;->printStackTrace()V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Controller"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassnfcapp/ui/h;

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, p0, p2, v1}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->init(Lcom/alipay/mobile/alipassnfcapp/ui/RootController;Ljava/lang/Object;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onCreate()V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Controller"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassnfcapp/ui/h;

    invoke-virtual {v0, p0, p2, p3}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->init(Lcom/alipay/mobile/alipassnfcapp/ui/RootController;Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onCreate()V

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()Lcom/alipay/mobile/alipassnfcapp/ui/h;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassnfcapp/ui/h;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onDestroy()V

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->e()Lcom/alipay/mobile/alipassnfcapp/ui/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onResume()V

    :goto_1
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->finish()V
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/EmptyStackException;->printStackTrace()V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassnfcapp/ui/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassnfcapp/ui/h;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onDestroy()V

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->e()Lcom/alipay/mobile/alipassnfcapp/ui/h;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->e()Lcom/alipay/mobile/alipassnfcapp/ui/h;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->b()Lcom/alipay/mobile/alipassnfcapp/ui/h;

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassnfcapp/ui/h;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onPause()V

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->e()Lcom/alipay/mobile/alipassnfcapp/ui/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onResume()V
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/EmptyStackException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassnfcapp/ui/h;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onStart()V

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassnfcapp/ui/h;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/h;->onStop()V

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onStop()V

    return-void
.end method
