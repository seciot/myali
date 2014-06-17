.class public Lcom/alipay/mobile/common/ui/SelectCityActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "lifepay_citylist"
.end annotation


# static fields
.field public static final EXTRA_GOCITYLIST_FROM:Ljava/lang/String; = "from"

.field public static final EXTRA_PARAM_CURRENT_CITY:Ljava/lang/String; = "currentCity"

.field public static final ISFROM_FROMFORM:I = 0x1

.field public static final SELCTCITY_FROM_CITYLIST:Ljava/lang/String; = "selctcity_from_citylist"

.field public static final SELECT_PROVINCE:Ljava/lang/String; = "select_province"

.field public static catheCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation
.end field

.field public static catheHotCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation
.end field

.field public static currentCity:Ljava/lang/String;

.field public static currentProvice:Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/mobile/common/ui/CityListAdapter;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field mCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation
.end field

.field protected mEditeClearButton:Lcom/alipay/mobile/commonui/widget/APImageButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "clearButton"
    .end annotation
.end field

.field protected mLetter:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "friends_myletterlistview"
    .end annotation
.end field

.field protected mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "friends_display"
    .end annotation
.end field

.field protected mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "locationLayout"
    .end annotation
.end field

.field protected mSearchBar:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "search_bar_inputbox_layout_target"
    .end annotation
.end field

.field protected mSearchBox:Lcom/alipay/mobile/commonui/widget/APEditText;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "searchEditText"
    .end annotation
.end field

.field mSearchNoResult:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "lifepay_searchNoResult"
    .end annotation
.end field

.field mTempCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation
.end field

.field protected mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentProvice:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->f:I

    return-void
.end method

.method private a(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    invoke-direct {v3}, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;-><init>()V

    iput-object v2, v3, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 5

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->d:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mCityList:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mCityList:Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    if-eqz v0, :cond_2

    move v2, v3

    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->b:Ljava/util/List;

    const-string/jumbo v1, "\u70ed\u95e8"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->c:Ljava/util/Map;

    const-string/jumbo v1, "\u70ed\u95e8"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v1, v1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->b:Ljava/util/List;

    const-string/jumbo v1, "\u70ed\u95e8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->c:Ljava/util/Map;

    const-string/jumbo v4, "\u70ed\u95e8"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_2
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/ChineseToPy;->getSinglePy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "^[a-z,A-Z].*$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v1, v1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->c:Ljava/util/Map;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->b:Ljava/util/List;

    const-string/jumbo v1, "#"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->c:Ljava/util/Map;

    const-string/jumbo v1, "#"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v1, v1, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->b:Ljava/util/List;

    const-string/jumbo v1, "#"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->c:Ljava/util/Map;

    const-string/jumbo v4, "#"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->b:Ljava/util/List;

    new-instance v1, Lcom/alipay/mobile/common/ui/SelectCityActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$2;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v3

    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->e:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_4

    :cond_7
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/ui/SelectCityActivity;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/ui/SelectCityActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sput-object p2, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    sput-object p1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentProvice:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "select_province"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "selctcity_from_citylist"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->finish()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected init()V
    .locals 6
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/16 v5, 0x8

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mEditeClearButton:Lcom/alipay/mobile/commonui/widget/APImageButton;

    new-instance v1, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$1;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/base/commonbiz/R$layout;->lifepay_citylistview_head:I

    iget-object v3, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setPinnedHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLetter:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->setVisibility(I)V

    iget v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->showCityList()V

    :cond_0
    return-void
.end method

.method protected initView()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLetter:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    new-instance v1, Lcom/alipay/mobile/common/ui/SelectCityActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$3;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->setOnItemClickListener(Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView$OnCityBladeViewItemClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchBox:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->friends_item_header_text:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/base/commonbiz/R$string;->LifePay_cityListCurrentCity:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->friends_item:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    sget-object v2, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/base/commonbiz/R$string;->LifePay_LocationFail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setClickable(Z)V

    :goto_0
    new-instance v0, Lcom/alipay/mobile/common/ui/CityListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mCityList:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->d:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/common/ui/CityListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->a:Lcom/alipay/mobile/common/ui/CityListAdapter;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->a:Lcom/alipay/mobile/common/ui/CityListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->a:Lcom/alipay/mobile/common/ui/CityListAdapter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/base/commonbiz/R$layout;->lifepay_citylistview_head:I

    iget-object v3, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setPinnedHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    new-instance v1, Lcom/alipay/mobile/common/ui/SelectCityActivity$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$5;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchBar:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLetter:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setClickable(Z)V

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/alipay/mobile/common/ui/SelectCityActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$4;-><init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected loadCitys()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->showProgressDialog(Ljava/lang/String;)V

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$raw;->cities_from_gaode:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->a(I)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$raw;->hot_cities:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->a(I)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheHotCityList:Ljava/util/List;

    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;

    iget-object v2, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->city:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/ChineseToPy;->getFullPy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/ui/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    new-instance v1, Lcom/alipay/mobile/common/ui/cityselect/util/CityVOComparator;

    invoke-direct {v1}, Lcom/alipay/mobile/common/ui/cityselect/util/CityVOComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->a()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->initView()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "from"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->f:I

    const-string/jumbo v1, "currentCity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mEditeClearButton:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLetter:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->a:Lcom/alipay/mobile/common/ui/CityListAdapter;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/ui/CityListAdapter;->setIsSearchResult(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchNoResult:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mCityList:Ljava/util/List;

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->a:Lcom/alipay/mobile/common/ui/CityListAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mCityList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ui/CityListAdapter;->refreshUi(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mEditeClearButton:Lcom/alipay/mobile/commonui/widget/APImageButton;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLetter:Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/ui/cityselect/view/CityBladeView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mLocationLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->a:Lcom/alipay/mobile/common/ui/CityListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/ui/CityListAdapter;->setIsSearchResult(Z)V

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/cityselect/util/Cityfilter;->getMatchedContact(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mTempCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchNoResult:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->requestFocusFromTouch()Z

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mListView:Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/ui/cityselect/view/CityPinnedHeaderListView;->setSelection(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchNoResult:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->a:Lcom/alipay/mobile/common/ui/CityListAdapter;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/ui/CityListAdapter;->refreshUi(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->mSearchBox:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->requestFocus()Z

    goto :goto_0
.end method

.method protected showCityList()V
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->catheCityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->loadCitys()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->a()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->initView()V

    goto :goto_0
.end method
