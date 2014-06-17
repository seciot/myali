.class final Lcom/alipay/asset/common/view/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;


# direct methods
.method constructor <init>(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getShowNum()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->isHideFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "WidgetId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    #getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->i:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$000(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",show=false;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    #getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->g:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$100(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    #getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mMsgStyle:I
    invoke-static {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$200(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)I

    move-result v1

    invoke-static {}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$300()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->showMsgFlag()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "WidgetId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    #getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->i:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$000(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",show=true;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    #getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->g:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$100(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    #getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mMsgStyle:I
    invoke-static {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$400(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)I

    move-result v1

    invoke-static {}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$500()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v1, v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->showMsgFlag(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    #getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mMsgStyle:I
    invoke-static {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$600(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)I

    move-result v0

    invoke-static {}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$700()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->showMsgFlagNew()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    #getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->mMsgStyle:I
    invoke-static {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$800(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)I

    move-result v0

    sget v1, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->MSG_STYLE_LABLE:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v1, p0, Lcom/alipay/asset/common/view/a;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    #getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->e:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$900(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->showMsgFlag(Ljava/lang/String;)V

    goto :goto_1
.end method
