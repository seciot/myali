.class Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Z

.field private final synthetic c:Z

.field private final synthetic d:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iput-object p2, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->b:Z

    iput-boolean p4, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->c:Z

    iput-object p5, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->d:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$0(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$0(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v2}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$0(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$1(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/app/AlertDialog;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$2(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$2(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->b:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->setProgressVisiable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$2(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->c:Z

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$2(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->d:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$2(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$2(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DialogHelper.showProgressDialog(): exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$3;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    const/4 v1, 0x0

    #setter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->b:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$1(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/app/AlertDialog;)V

    goto :goto_0
.end method
