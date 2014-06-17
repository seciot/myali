.class Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather$1;->this$0:Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->access$000()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather$1;->this$0:Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    invoke-static {v0}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->access$100(Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->access$200()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather$1;->this$0:Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    invoke-static {v0}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->access$300(Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->access$400()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather$1;->this$0:Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    invoke-static {v0}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->access$500(Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;)V

    goto :goto_0
.end method
