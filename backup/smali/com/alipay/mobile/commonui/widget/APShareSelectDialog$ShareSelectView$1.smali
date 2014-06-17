.class Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    #getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$100(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    #getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$100(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    #getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$200(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    #getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->b:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$200(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView$1;->this$0:Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;

    #getter for: Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->a:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;->access$100(Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$ShareSelectView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/commonui/widget/APShareSelectDialog$OnShareSelectListener;->onSelect(I)V

    goto :goto_0
.end method
