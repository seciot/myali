.class final Lcom/alipay/mobile/alipassapp/ui/common/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/common/s;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/s;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/t;->b:Lcom/alipay/mobile/alipassapp/ui/common/s;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/t;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$800()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/t;->b:Lcom/alipay/mobile/alipassapp/ui/common/s;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/s;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/t;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/t;->b:Lcom/alipay/mobile/alipassapp/ui/common/s;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/s;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/u;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/t;->b:Lcom/alipay/mobile/alipassapp/ui/common/s;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/common/s;->c:Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;->access$900(Lcom/alipay/mobile/alipassapp/ui/common/AlipassOperationViewPager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/common/t;->b:Lcom/alipay/mobile/alipassapp/ui/common/s;

    iget-object v3, v3, Lcom/alipay/mobile/alipassapp/ui/common/s;->a:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/mobile/alipassapp/ui/common/u;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/t;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
