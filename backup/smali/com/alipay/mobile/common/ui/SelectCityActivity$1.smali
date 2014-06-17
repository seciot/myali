.class Lcom/alipay/mobile/common/ui/SelectCityActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchBox:Lcom/alipay/mobile/commonui/widget/APEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
