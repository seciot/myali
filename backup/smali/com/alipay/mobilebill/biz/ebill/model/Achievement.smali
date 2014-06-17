.class public Lcom/alipay/mobilebill/biz/ebill/model/Achievement;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public pkResult:Ljava/lang/String;

.field public prize:Ljava/lang/String;

.field public prizeName:Ljava/lang/String;

.field public shakingPeopleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/ebill/model/ShakingPeople;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
