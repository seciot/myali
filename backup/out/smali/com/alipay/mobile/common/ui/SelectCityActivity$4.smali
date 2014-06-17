.class Lcom/alipay/mobile/common/ui/SelectCityActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$4;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$4;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentProvice:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$100(Lcom/alipay/mobile/common/ui/SelectCityActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
