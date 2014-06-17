.class Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:I

.field final synthetic this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iput-object p2, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$0(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$0(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->c:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$3(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/widget/Toast;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->transient_notification:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x102000b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->c:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$4(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->c:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$4(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/widget/Toast;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->c:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$4(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->c:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$4(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DialogHelper.toast(): exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    #setter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->c:Landroid/widget/Toast;
    invoke-static {v0, v4}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$3(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/widget/Toast;)V

    goto :goto_0
.end method
