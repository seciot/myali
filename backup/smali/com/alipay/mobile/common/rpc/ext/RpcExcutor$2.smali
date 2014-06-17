.class Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

.field final synthetic val$params:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;->val$params:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$100(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    #getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$200(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    #getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$200(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    #getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Landroid/app/Activity;
    invoke-static {v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$300(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/base/commonbiz/R$string;->flow_network_error:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    #getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->n:Lcom/alipay/mobile/commonui/widget/APFlowTipView;
    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$200(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    #getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->d:Landroid/app/Activity;
    invoke-static {v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$300(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/base/commonbiz/R$string;->tryAgin:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2$1;-><init>(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor$2;->this$0:Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;

    #getter for: Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->o:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;->access$400(Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    return-void
.end method
