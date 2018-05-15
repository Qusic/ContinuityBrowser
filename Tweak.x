%hook UACornerActionItem

- (void)setBundleIdentifier:(NSString *)bundleIdentifier {
    if ([bundleIdentifier isEqualToString:@"com.apple.mobilesafari"]) {
        bundleIdentifier = @"com.google.chrome.ios";
    }
    %orig;
}

- (void)setActivityType:(NSString *)activityType {
    if ([activityType isEqualToString:@"NSUserActivityTypeBrowsingWeb"]) {
        activityType = @"com.google.chrome.handoff";
    }
    %orig;
}

%end
