.class Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2$1;->this$1:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2$1;->this$1:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->hideTipView()V

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2$1;->this$1:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;

    iget-object v0, v0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2$1;->this$1:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;

    iget-object v1, v1, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;->val$params:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->start([Ljava/lang/Object;)V

    return-void
.end method
