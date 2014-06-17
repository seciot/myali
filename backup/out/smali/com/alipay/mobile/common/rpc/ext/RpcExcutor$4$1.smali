.class Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$4;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$4;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$4$1;->this$1:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$4$1;->this$1:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$4;

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$4;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->hideTipView()V

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$4$1;->this$1:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$4;

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$4;->val$clickAction:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
