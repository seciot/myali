.class final Lcom/alipay/mobile/alipassapp/ui/common/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/commonui/widget/APImageView;

.field final synthetic d:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/v;->d:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/v;->a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/common/v;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/alipassapp/ui/common/v;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$800()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/v;->a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/v;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/biz/common/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/v;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$800()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$1000()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/common/w;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/alipassapp/ui/common/w;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/v;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$800()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$800()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method
