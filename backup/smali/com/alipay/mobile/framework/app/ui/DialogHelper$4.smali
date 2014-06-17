.class Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$2(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$2(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$0(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$2(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #setter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0, v3}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$1(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/app/AlertDialog;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DialogHelper.dismissProgressDialog(): exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #setter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0, v3}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$1(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/app/AlertDialog;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$4;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #setter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v1, v3}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$1(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/app/AlertDialog;)V

    throw v0
.end method
