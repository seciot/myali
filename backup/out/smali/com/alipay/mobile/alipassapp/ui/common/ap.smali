.class final Lcom/alipay/mobile/alipassapp/ui/common/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ap;->a:Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ap;->a:Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;

    iget-boolean v0, v0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mIsFirstAjust:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ap;->a:Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ap;->a:Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mLeftValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->access$000(Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/ap;->a:Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mLeftValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->access$100(Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->AjustAPTextView(Lcom/alipay/mobile/commonui/widget/APTextView;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->access$200(Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;Lcom/alipay/mobile/commonui/widget/APTextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ap;->a:Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/ap;->a:Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRightValueAPTextView:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->access$300(Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/ap;->a:Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;

    #getter for: Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mRightValue:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->access$400(Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->AjustAPTextView(Lcom/alipay/mobile/commonui/widget/APTextView;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->access$200(Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;Lcom/alipay/mobile/commonui/widget/APTextView;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/ap;->a:Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/alipassapp/ui/common/BoardingpassPrimaryFieldLayout;->mIsFirstAjust:Z

    return-void
.end method
