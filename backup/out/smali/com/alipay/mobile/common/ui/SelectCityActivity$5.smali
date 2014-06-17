.class Lcom/alipay/mobile/common/ui/SelectCityActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v2, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->province:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$5;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$100(Lcom/alipay/mobile/common/ui/SelectCityActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
