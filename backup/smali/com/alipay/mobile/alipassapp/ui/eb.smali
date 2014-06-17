.class final Lcom/alipay/mobile/alipassapp/ui/eb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

.field final synthetic c:Lcom/alipay/mobile/alipassapp/ui/ea;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/ea;Landroid/graphics/Bitmap;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/eb;->c:Lcom/alipay/mobile/alipassapp/ui/ea;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/eb;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/eb;->b:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eb;->c:Lcom/alipay/mobile/alipassapp/ui/ea;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/ea;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/eb;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/eb;->c:Lcom/alipay/mobile/alipassapp/ui/ea;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/ea;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/common/au;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/eb;->c:Lcom/alipay/mobile/alipassapp/ui/ea;

    iget-object v2, v2, Lcom/alipay/mobile/alipassapp/ui/ea;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/eb;->b:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$Operation$OperationString;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/alipassapp/ui/common/au;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
