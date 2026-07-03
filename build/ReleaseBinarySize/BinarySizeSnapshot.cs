namespace ReleaseBinarySize;

internal sealed class BinarySizeSnapshot
{
    public Dictionary<string, Dictionary<string, BinarySizeValues>> Sizes { get; init; } =
        new(StringComparer.Ordinal);

    public static BinarySizeSnapshot FromMeasurements(IEnumerable<BinarySizeMeasurement> measurements)
    {
        var snapshot = new BinarySizeSnapshot();

        foreach (var measurement in measurements)
        {
            if (!snapshot.Sizes.TryGetValue(measurement.Variant, out var platforms))
            {
                platforms = new Dictionary<string, BinarySizeValues>(StringComparer.Ordinal);
                snapshot.Sizes[measurement.Variant] = platforms;
            }

            platforms[measurement.Platform] = new BinarySizeValues
            {
                Executable = measurement.Executable,
                Total = measurement.Total,
            };
        }

        return snapshot;
    }

    public BinarySizeValues? TryGetValues(string variant, string platform)
    {
        if (!Sizes.TryGetValue(variant, out var platforms))
        {
            return null;
        }

        return platforms.TryGetValue(platform, out var values) ? values : null;
    }
}

internal sealed class BinarySizeValues
{
    public long Executable { get; init; }

    public long Total { get; init; }
}
