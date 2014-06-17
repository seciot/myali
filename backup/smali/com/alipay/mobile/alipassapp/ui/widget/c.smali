.class final Lcom/alipay/mobile/alipassapp/ui/widget/c;
.super Lcom/androidquery/callback/BitmapAjaxCallback;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/c;->b:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;

    iput p2, p0, Lcom/alipay/mobile/alipassapp/ui/widget/c;->a:I

    invoke-direct {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected final callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/widget/c;->b:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->ivMCHeaderStyleBack:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->access$100(Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/widget/e;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/c;->b:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->style:I
    invoke-static {v3}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;->access$000(Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderStyle;)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    iget v3, p0, Lcom/alipay/mobile/alipassapp/ui/widget/c;->a:I

    invoke-direct {v2, p3, v0, v3}, Lcom/alipay/mobile/alipassapp/ui/widget/e;-><init>(Landroid/graphics/Bitmap;ZI)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
