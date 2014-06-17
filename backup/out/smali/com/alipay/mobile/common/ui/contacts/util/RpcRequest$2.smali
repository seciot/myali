.class Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->access$100(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->access$100(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->access$100(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v0, v1, v2, v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->access$100(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest$2;->this$0:Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;

    #getter for: Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->c:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;->access$100(Lcom/alipay/mobile/common/ui/contacts/util/RpcRequest;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0, v1, v2, v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method
