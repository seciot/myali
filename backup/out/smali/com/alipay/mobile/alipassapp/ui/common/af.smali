.class final Lcom/alipay/mobile/alipassapp/ui/common/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/common/ae;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/ae;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/af;->b:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/af;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/af;->b:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/alipassapp/ui/common/ae;->a(Lcom/alipay/mobile/alipassapp/ui/common/ae;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/af;->b:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/common/ae;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/alipay/mobile/alipassapp/ui/common/ae;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "loopQueryTask dynamicId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/af;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/af;->b:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/ae;->a(Lcom/alipay/mobile/alipassapp/ui/common/ae;)Z

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/af;->b:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/ae;->b(Lcom/alipay/mobile/alipassapp/ui/common/ae;)I

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/af;->b:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/ae;->c(Lcom/alipay/mobile/alipassapp/ui/common/ae;)I

    move-result v2

    move v0, v1

    :goto_0
    const/16 v3, 0x14

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/alipay/mobile/alipassapp/ui/common/ae;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loopQueryTask continueLoop="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/common/af;->b:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    invoke-static {v4}, Lcom/alipay/mobile/alipassapp/ui/common/ae;->d(Lcom/alipay/mobile/alipassapp/ui/common/ae;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/af;->b:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/common/ae;->d(Lcom/alipay/mobile/alipassapp/ui/common/ae;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/af;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/alipay/mobile/alipassapp/ui/common/ae;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loopQueryTask currentLoopQueryTime="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " excuteloopQueryTimes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/common/af;->b:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    invoke-static {v4}, Lcom/alipay/mobile/alipassapp/ui/common/ae;->c(Lcom/alipay/mobile/alipassapp/ui/common/ae;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/af;->b:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/common/ae;->c(Lcom/alipay/mobile/alipassapp/ui/common/ae;)I

    move-result v3

    if-ne v2, v3, :cond_0

    sget-object v3, Lcom/alipay/mobile/alipassapp/ui/common/ae;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8fc7\u6ee4\u540e:\u7b2c{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}\u6b21\u8c03\u7528loopQueryTask,\u52a8\u6001\u7801:{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/common/af;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}  \u77ed\u8f6e\u8be2\u7b2c{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}\u6b21"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-ne v0, v1, :cond_2

    const-wide/16 v3, 0xbb8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/af;->b:Lcom/alipay/mobile/alipassapp/ui/common/ae;

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/common/af;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/mobile/alipassapp/ui/common/ae;->a(Lcom/alipay/mobile/alipassapp/ui/common/ae;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1
.end method
