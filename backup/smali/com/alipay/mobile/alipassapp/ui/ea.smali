.class final Lcom/alipay/mobile/alipassapp/ui/ea;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/ea;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/ea;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->j(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;->getOperation()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/biz/common/i;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/ea;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/eb;

    invoke-direct {v3, p0, v1, v0}, Lcom/alipay/mobile/alipassapp/ui/eb;-><init>(Lcom/alipay/mobile/alipassapp/ui/ea;Landroid/graphics/Bitmap;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->b()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->b()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method
